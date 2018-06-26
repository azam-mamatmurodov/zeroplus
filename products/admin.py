from django.contrib import admin
from django.contrib.staticfiles.templatetags.staticfiles import static
from django.utils.translation import ugettext as _

from parler.admin import TranslatableAdmin
from mptt.admin import DraggableMPTTAdmin

from .models import *


class CategoryAdmin(TranslatableAdmin, DraggableMPTTAdmin):

    def get_prepopulated_fields(self, request, obj=None):
        return {'slug': ('name',),}

    mptt_level_indent = 20


class ProductImageAdmin(admin.TabularInline):
    model = ProductImage


class ColorAdmin(TranslatableAdmin):
    list_display = ['name', 'get_color']

    def get_color(self, obj):
        return '<div style="width:20px; height: 20px; background-color: ' + obj.color + '"></div>'

    get_color.allow_tags = True


class SizeAdmin(TranslatableAdmin):
    list_display = ['name',]


class ProductAdmin(admin.ModelAdmin):
    inlines = [ProductImageAdmin, ]
    list_display = ['name', 'has_image','category' ]
    list_editable = ['category']

    @staticmethod
    def has_image(obj):
        return True if obj.images.all().count() > 0 else False

    class Media:
        js = (static('admin/script.js'), )


class ReviewAdmin(admin.ModelAdmin):

    list_display = ['reviewer', 'subject', 'is_approved', ]
    list_filter = ['is_approved', ]


class SaleAdmin(admin.ModelAdmin):
    list_display = ['get_percent']

    @staticmethod
    def get_percent(obj):
        return "{} %".format(obj.percent)

    get_percent.short_description = _('Percent')

    def has_add_permission(self, request):
        return Sale.objects.count() == 0


admin.site.register(Category, CategoryAdmin)
admin.site.register(Brands)
admin.site.register(Color, ColorAdmin)
admin.site.register(Product, ProductAdmin)
admin.site.register(Review, ReviewAdmin)
admin.site.register(Size, SizeAdmin)
admin.site.register(Sale, SaleAdmin)