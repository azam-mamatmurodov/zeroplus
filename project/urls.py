from django.conf.urls import url, include
from django.conf import settings
from django.conf.urls.static import static
from django.contrib import admin
from django.views.generic import RedirectView

from rest_framework_swagger.views import get_swagger_view
from rest_app.urls import urlpatterns as api_urlpatterns
from solid_i18n.urls import solid_i18n_patterns

admin.AdminSite.site_title = admin.AdminSite.site_header = 'Zeroplus.uz'


api_view = get_swagger_view(title='Zeroplus.uz api v1')

urlpatterns = [
    url(r'^$', RedirectView.as_view(url='/ru/', permanent=False), name='home_ru',),
    url(r'^i18n/', include('django.conf.urls.i18n')),
    url(r'^ckeditor/', include('ckeditor_uploader.urls')),
    url(r'api/v1/', include(api_urlpatterns, namespace='api'),),
    url(r'api/v1/docs/', api_view),
]

urlpatterns += solid_i18n_patterns(
    url(r'^admin/', admin.site.urls),
    url(r'^admin/rosetta/', include('rosetta.urls')),
    url(r'', include('main.urls', namespace='main')),
    url(r'', include('products.urls', namespace='products')),
    url(r'', include('users.urls', namespace='users')),
)


if settings.DEBUG:
    urlpatterns += static(settings.STATIC_URL,
                          document_root=settings.STATIC_ROOT)
    urlpatterns += static(settings.MEDIA_URL,
                          document_root=settings.MEDIA_ROOT)
