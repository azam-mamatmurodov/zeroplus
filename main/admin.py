from django.contrib import admin
from parler.admin import TranslatableAdmin
from main.models import Menu, Banner, Static, News
from users.models import Partners


class MenuAdmin(TranslatableAdmin):
    def get_prepopulated_fields(self, request, obj=None):
        return {'slug': ('name',), }
    list_display = ['name', 'order']
    list_editable = ['order']
    ordering = ['order']


class BannerAdmin(TranslatableAdmin):
    def get_prepopulated_fields(self, request, obj=None):
        return {'slug': ('name',), }


class StaticAdmin(TranslatableAdmin):
    def get_prepopulated_fields(self, request, obj=None):
        return {'slug': ('name',), }
    list_display = ['name', 'slug', ]


class NewsAdmin(TranslatableAdmin):
    def get_prepopulated_fields(self, request, obj=None):
        return {'slug': ('name',), }
    list_display = ['name', 'slug', ]


admin.site.register(Menu, MenuAdmin)
admin.site.register(Banner, BannerAdmin)
admin.site.register(Static, StaticAdmin)
admin.site.register(News, NewsAdmin)
admin.site.register(Partners)
