from django.contrib import admin

from parler.admin import TranslatableAdmin
from mptt.admin import DraggableMPTTAdmin

from users.models import Partners
from main.models import Menu, Banner, Static, News, Contact

class MenuAdmin(TranslatableAdmin, DraggableMPTTAdmin):
    def get_prepopulated_fields(self, request, obj=None):
        return {'slug': ('name',), }

    mptt_level_indent = 20
    ordering = ('order', )
    list_display = ['name', 'order']
    list_display_links = ['name', ]
    list_editable = ['order']

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


class ContactAdmin(admin.ModelAdmin):
    list_display = ['first_name', 'email', 'created_at']
    list_filter = ['created_at']


admin.site.register(Menu, MenuAdmin)
admin.site.register(Banner, BannerAdmin)
admin.site.register(Static, StaticAdmin)
admin.site.register(News, NewsAdmin)
admin.site.register(Partners)
admin.site.register(Contact, ContactAdmin)