from django.conf.urls import url

from main.views import HomeView, StaticView, NewsListView, NewsDetailView

urlpatterns = [
    url(r'^$', HomeView.as_view(), name='home'),
    url(r'^news/$', NewsListView.as_view(), name='news_list'),
    url(r'^news/(?P<slug>[-\w]+)/$', NewsDetailView.as_view(), name='news_detail'),
    url(r'^(?P<slug>[-\w]+)/$', StaticView.as_view(), name='static'),
]