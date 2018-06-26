from decimal import Decimal
import uuid
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


class CheckoutView(TemplateView):
    template_name = 'pages/orders/checkout.html'

    def get_cart_items(self, request):
        current_user_session_key = request.COOKIES.get('client_id')
        cart_items = Cart.objects.filter(session_key=current_user_session_key, status=True, order__isnull=True)
        return cart_items

    def dispatch(self, request, *args, **kwargs):
        if self.get_cart_items(request=request).count() == 0:
            return redirect(reverse('main:home'))
        if not request.COOKIES.get('client_address'):
            return redirect(reverse('orders:address'))
        client_address = address_parser(request.COOKIES.get('client_address'))
        if not client_address.get('client_name') or not client_address.get('phone') or not client_address.get('shipping_address'):
            return redirect(reverse('orders:address'))
        return super().dispatch(request=request, *args, **kwargs)

    def get_context_data(self, **kwargs):

        address = self.request.COOKIES.get('client_address')

        context = super().get_context_data(**kwargs)
        cart_items = self.get_cart_items(self.request)
        total_amount = 0
        total_quantity = 0
        for cart_item in cart_items:
            total_amount += cart_item.total_price
            total_quantity += cart_item.count
        context['total_amount'] = total_amount
        context['total_quantity'] = total_quantity
        context['cart_items'] = cart_items
        context['client_address'] = address_parser(address)
        return context

    def post(self, request, *args, **kwargs):
        return self.render_to_response(context=self.get_context_data(**kwargs))


class OrderDetail(DetailView):
    template_name = 'pages/order_detail.html'
    model = Order

    def get_object(self, queryset=None):
        phone = self.kwargs.get('phone')
        order_unique_id = self.kwargs.get('order_unique_id')
        return self.model.objects.get(order_unique_id=order_unique_id, phone=phone)


class OrderInvoiceDetail(DetailView):
    template_name = 'pages/invoice.html'
    model = Order

    def get_object(self, queryset=None):
        phone = self.kwargs.get('phone')
        order_unique_id = self.kwargs.get('order_unique_id')
        return self.model.objects.get(order_unique_id=order_unique_id, phone=phone)

