from django.conf.urls import url

from orders.views import (
    CartView,
    CheckoutView,
    OrderDetail,
)

urlpatterns = [
    url(r'^cart/$', CartView.as_view(), name='cart', ),
    url(r'^checkout/$', CheckoutView.as_view(), name='checkout', ),
    url(r'^(?P<order_unique_id>[-\w]+)/$', OrderDetail.as_view(), name='order_detail', ),
]