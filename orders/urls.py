from django.conf.urls import url

from orders.views import (
    CartView,
    CheckoutView,
    OrderDetail,
    OrderInvoiceDetail,
    OrderAddressView
)

urlpatterns = [
    url(r'^order/cart/$', CartView.as_view(), name='cart', ),
    url(r'^order/address/$', OrderAddressView.as_view(), name='address', ),
    url(r'^order/checkout/$', CheckoutView.as_view(), name='checkout', ),
    url(r'^order/(?P<phone>[\w]+)/(?P<order_unique_id>[-\w]+)/$', OrderDetail.as_view(), name='order_detail', ),
    url(r'^order/(?P<phone>[\w]+)/(?P<order_unique_id>[-\w]+)/invoice/$',OrderInvoiceDetail.as_view(),
        name='order_invoice_detail', ),
]