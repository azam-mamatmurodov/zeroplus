from decimal import Decimal
from django.utils.translation import ugettext_lazy as _
from django.shortcuts import get_object_or_404
from django.http.response import JsonResponse
from django.db.models.query import Q
from rest_framework import views, generics, renderers, response, permissions, status

from rest_app.serializers import CartSerializer, ProductSerializer, FavoriteProductSerializer
from products.models import Product, FavoriteProduct
from orders.models import Cart


class CartViews(generics.ListAPIView):
    serializer_class = CartSerializer
    queryset = None
    session_key = None
    model = Cart
    template_name = 'restapp/cart_list.html'
    renderer_classes = [renderers.TemplateHTMLRenderer]

    def get_cart_items(self):
        cart_instances = self.get_queryset()
        cart_items = []
        total_price = Decimal()
        for cart_instance in cart_instances:
            cart_items.append({
                'product': cart_instance.product,
                'image': cart_instance.product.get_default_image().file.url,
                'count': cart_instance.count,
                'price': cart_instance.product.price,
                'total_price': cart_instance.total_price,
                'id': cart_instance.id,
            })
            total_price += Decimal(cart_instance.total_price)
        return {'total_price': "{:,}".format(int(total_price)).replace(',', ' '), 'items': cart_items}

    def get(self, request, *args, **kwargs):
        return response.Response(data={'cart': self.get_cart_items()}, template_name=self.template_name)

    def get_queryset(self):
        session_key = self.request.COOKIES.get('client_id')
        cart_instances = self.model.objects.filter(session_key=session_key, status=True, order__isnull=True)
        return cart_instances


class CartAddViews(generics.CreateAPIView):
    serializer_class = CartSerializer
    session_key = None
    model = Cart

    def create(self, request, *args, **kwargs):
        session_key = request.COOKIES.get('client_id')

        self.session_key = session_key
        product_id = request.data.get('product_id')
        quantity = 1
        product = Product.objects.get(id=product_id)

        price = product.price
        if product.is_sale:
            price = product.get_sale_price()

        total_price = Decimal(price) * Decimal(quantity)

        new_cart_item, created = Cart.objects.get_or_create(session_key=self.session_key, product=product,
                                                            order=None,
                                                            defaults={
                                                                "count": quantity,
                                                                "total_price": total_price
                                                            })
        if not created:
            new_cart_item.count += quantity
            new_cart_item.total_price = new_cart_item.count * new_cart_item.product.price
            new_cart_item.save()
            msg = _('Cart successfully updated')
        else:
            msg = _('Successful added')
        message = {
            'status': 'success',
            'message': _(msg)
        }
        return JsonResponse(data=message)


class CartDetailViews(generics.UpdateAPIView, generics.DestroyAPIView, generics.RetrieveAPIView):
    serializer_class = CartSerializer
    queryset = None

    def get_queryset(self):
        storage = self.request.session.get('cart', [])
        return storage[0]

    def retrieve(self, request, *args, **kwargs):
        return views.Response(data=self.get_queryset()[0], content_type='application/json')


class CartDeleteViews(generics.DestroyAPIView):
    serializer_class = CartSerializer
    queryset = None
    model = Cart
    lookup_field = "cart_item_id"

    def get_object(self):
        session_key = self.request.COOKIES.get('client_id')
        cart_item_id = self.kwargs.get('cart_item_id')
        cart_item = Cart.objects.get(id=cart_item_id)
        return cart_item

    def destroy(self, request, *args, **kwargs):
        instance = self.get_object()
        self.perform_destroy(instance)
        msg = {
            'message': _('Successful removed'),
            'status': 'success'
        }
        return views.Response(data=msg, status=status.HTTP_204_NO_CONTENT)


class CartUpdateViews(generics.UpdateAPIView):
    serializer_class = CartSerializer
    queryset = None
    model = Cart
    lookup_field = "cart_item_id"

    def get_object(self):
        session_key = self.request.COOKIES.get('client_id')
        cart_item = Cart.objects.get(session_key=session_key, id=self.kwargs.get('cart_item_id'))
        return cart_item

    def update(self, request, *args, **kwargs):
        count = request.data.get('count')
        instance = self.get_object()
        instance.count = count
        instance.set_total_price(count)

        self.perform_update(instance)
        msg = {
            'message': _('Successful saved'),
            'status': 'success',
            'data': CartSerializer(instance=instance).data
        }
        return views.Response(data=msg, status=status.HTTP_202_ACCEPTED)


class ProductPreviewViews(generics.RetrieveAPIView):
    serializer_class = ProductSerializer
    renderer_classes = [renderers.TemplateHTMLRenderer]
    template_name = 'restapp/product_preview.html'

    def get_object(self):
        return get_object_or_404(Product, pk=self.kwargs.get('product_id'))

    def retrieve(self, request, *args, **kwargs):
        return response.Response(template_name=self.template_name, data={'product': self.get_object()})


class ProductFavoriteViews(generics.ListCreateAPIView):
    serializer_class = FavoriteProductSerializer
    permission_classes = [permissions.IsAuthenticated]

    def get_queryset(self):
        return FavoriteProduct.objects.filter(user=self.request.user)

    def create(self, request, *args, **kwargs):

        product_id = request.data.get('product_id')

        product, created = FavoriteProduct.objects.get_or_create(product_id=product_id, user=request.user)
        if created:
            msg = 'Product already in wishlist'
        else:
            msg = 'Product already exists'
        message = {
            'status': 'success',
            'message': _(msg)
        }
        return JsonResponse(data=message)


class SearchResultViews(generics.ListAPIView):
    serializer_class = ProductSerializer
    renderer_classes = [renderers.TemplateHTMLRenderer]
    template_name = 'restapp/search_result.html'

    def get_queryset(self):
        q = self.request.GET.get('q', None)
        if q:
            query_string = q
            print('Query is ', query_string)
            return Product.objects.filter(
                Q(name__contains=query_string) | Q(description__contains=query_string) | Q(characters__contains=query_string) | Q(slug__contains=query_string)
            )
        else:
            return []

    def list(self, request, *args, **kwargs):
        return response.Response(
            template_name=self.template_name,
            data={'object_list': self.get_queryset()}
        )

