from django.conf.urls import url

from main.views import HomeView, StaticView, ContactView

urlpatterns = [
    url(r'^$', HomeView.as_view(), name='home'),
    url(r'^contact/$', ContactView.as_view(), name='contact'),
    url(r'^(?P<slug>[-\w]+)/$', StaticView.as_view(), name='static'),
]