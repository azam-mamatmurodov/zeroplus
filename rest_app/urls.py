from django.conf.urls import url

from rest_app import views

urlpatterns = [
    url(r'^products/(?P<product_id>[\d]+)/$',
        views.ProductPreviewViews.as_view(),
        name='product_preview'
        ),
    url(r'^products/favorite/$',
        views.ProductFavoriteViews.as_view(),
        name='product_favorite'
        ),
    url(r'^cart/$',
        views.CartViews.as_view(),
        name='cart_list'),
    url(r'^cart/info/$',
        views.CartInfoViews.as_view(),
        name='cart_info'),
    url(r'^cart/add/$',
        views.CartAddViews.as_view(),
        name='cart_add'),
    url(r'^cart/(?P<cart_item_id>[\d]+)/update/$', views.CartUpdateViews.as_view(), name='cart_update'),
    url(r'^cart/(?P<cart_item_id>[\d]+)/delete/$', views.CartDeleteViews.as_view(), name='cart_delete'),

    url(r'^search/$',
        views.SearchResultViews.as_view(),
        name='search_results'),
]
