from django.conf.urls import url

from orders.views import (
    CartView,
    CheckoutView,
    OrderDetail,
    OrderInvoiceDetail,
)

urlpatterns = [
    url(r'^cart/$', CartView.as_view(), name='cart', ),
    url(r'^checkout/$', CheckoutView.as_view(), name='checkout', ),
    url(r'^(?P<phone>[\w]+)/(?P<order_unique_id>[-\w]+)/$', OrderDetail.as_view(), name='order_detail', ),
    url(r'^(?P<phone>[\w]+)/(?P<order_unique_id>[-\w]+)/invoice/$',OrderInvoiceDetail.as_view(),
        name='order_invoice_detail', ),
]