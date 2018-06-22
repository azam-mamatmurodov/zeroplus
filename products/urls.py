from django.conf.urls import url
from products.views import ProductListView, ProductDetail, CartView, SearchView

urlpatterns = [
    url(r'^category/(?P<slug>[-\w]+)/$', ProductListView.as_view(), name='product_list'),
    url(r'^category/(?P<slug>[-\w]+)/product/(?P<product_slug>[-\w]+)/$', ProductDetail.as_view(), name='product_detail'),
    url(r'^cart/$', CartView.as_view(), name='cart', ),
    url(r'^search/$', SearchView.as_view(), name='search', ),
]