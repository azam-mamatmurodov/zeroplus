from django.conf.urls import url
from products.views import ProductListView, ProductDetail, SearchView

urlpatterns = [
    url(r'^search/$', SearchView.as_view(), name='search', ),
    url(r'^$', ProductListView.as_view(), name='product_all'),
    url(r'^(?P<slug>[-\w]+)/$', ProductListView.as_view(), name='product_list'),
    url(r'^(?P<slug>[-\w]+)/(?P<product_slug>[-\w]+)/$', ProductDetail.as_view(), name='product_detail'),
]