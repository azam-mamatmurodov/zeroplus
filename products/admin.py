from django.contrib import admin
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


class ProductAdmin(admin.ModelAdmin):
    inlines = [ProductImageAdmin]
    list_display = ['name', 'has_image', ]

    @staticmethod
    def has_image(obj):
        return True if obj.images.all().count() > 0 else False


class ReviewAdmin(admin.ModelAdmin):

    list_display = ['reviewer', 'subject', 'is_approved', ]
    list_filter = ['is_approved', ]


admin.site.register(Category, CategoryAdmin)
admin.site.register(Brands)
admin.site.register(Product, ProductAdmin)
admin.site.register(Review, ReviewAdmin)
