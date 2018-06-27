from decimal import Decimal
import uuid
from uuid import UUID
from django.views.generic import ListView, CreateView, DetailView, FormView, TemplateView
from django.shortcuts import reverse, redirect
from django.core.urlresolvers import reverse_lazy

from orders.models import Cart, Order
from orders.forms import OrderForm


def address_parser(client_address_cookie):
    from ast import literal_eval
    from urllib.parse import unquote
    client_address_str = unquote(client_address_cookie)
    address = literal_eval(client_address_str)
    return address


class CartView(ListView):
    model = Cart
    template_name = 'pages/orders/cart.html'
    context_object_name = 'cart_items'

    def get_queryset(self):
        current_user_session_key = self.request.COOKIES.get('client_id')
        return self.model.objects.filter(session_key=current_user_session_key, status=True, order__isnull=True)

    def get_cart_items(self, request):
        current_user_session_key = request.COOKIES.get('client_id')
        cart_items = Cart.objects.filter(session_key=current_user_session_key, status=True, order__isnull=True)
        return cart_items

    def dispatch(self, request, *args, **kwargs):
        if self.get_cart_items(request=request).count() == 0:
            return redirect(reverse('main:home'))
        return super().dispatch(request=request, *args, **kwargs)

    def get_context_data(self, **kwargs):
        cart_items = self.get_cart_items(self.request)
        total_amount = 0
        for cart_item in cart_items:
            total_amount += cart_item.total_price
        context = super().get_context_data(**kwargs)
        context['total_amount'] = total_amount
        return context


class CheckoutView(CreateView):
    template_name = 'pages/orders/checkout.html'
    model = Order
    fields = ['client_name', 'phone', 'shipping_address']

    def get_cart_items(self, request):
        current_user_session_key = request.COOKIES.get('client_id')
        cart_items = Cart.objects.filter(session_key=current_user_session_key, status=True, order__isnull=True)
        return cart_items

    def dispatch(self, request, *args, **kwargs):
        if self.get_cart_items(request=request).count() == 0:
            return redirect(reverse('main:home'))
        return super().dispatch(request=request, *args, **kwargs)

    def get_context_data(self, **kwargs):
        context = super().get_context_data(**kwargs)
        cart_items = self.get_cart_items(self.request)
        total_amount = 0
        total_quantity = 0
        for cart_item in cart_items:
            total_amount += cart_item.total_price
            total_quantity += cart_item.count
        context['total_amount'] = total_amount
        context['total_quantity'] = total_quantity
        context['cart_items'] = self.get_cart_items(request=self.request)
        return context

    def form_valid(self, form):
        context = self.get_context_data()
        order = form.save(commit=False)
        order.total_price = context['total_amount']
        order.order_unique_id = uuid.uuid4()
        order.save()

        cart_items = self.get_cart_items(request=self.request)
        for cart_item in cart_items:
            cart_item.order = order
            cart_item.save()
        return redirect(reverse('orders:order_detail', args=[order.order_unique_id]))


class OrderDetail(DetailView):
    template_name = 'pages/orders/order_detail.html'
    model = Order

    def get_object(self, queryset=None):
        order_unique_id = self.kwargs.get('order_unique_id')
        return self.model.objects.get(order_unique_id=order_unique_id, )

