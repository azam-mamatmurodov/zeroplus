from django.contrib import admin

from products.models import Product
from orders.models import Order, Cart


class CartAdmin(admin.ModelAdmin):
    list_display = ['get_product', 'per_item_price', 'count', 'total_price', 'status', 'get_order', ]

    def per_item_price(self, obj):
        return "{}".format(obj.product.min_price)

    per_item_price.short_description = "Price for per item"

    def get_product(self, obj):
        return "{}".format(obj.product.name)

    def get_order(self, obj):
        if obj.order:
            return "<a href='/admin/orders/order/%s/change/'>%s</a>" % (obj.order.pk, 'Order - ' + str(obj.order.pk))
        else:
            return None
    get_order.allow_tags = True
    get_order.short_description = 'Order'

    get_product.short_description = 'Product'
    list_display_links = ['get_product', 'get_order', ]


class OrderedProducts(admin.TabularInline):
    model = Cart
    fields = ['product', 'count', 'total_price', ]


class OrderAdmin(admin.ModelAdmin):
    inlines = [OrderedProducts, ]
    list_display = ['id', 'order_unique_id', 'client_name', 'phone', 'total_price', 'created', 'state', ]
    search_fields = ['client_name', 'phone', 'shipping_address', ]
    list_filter = ['state', ]


admin.site.register(Order, OrderAdmin)
admin.site.register(Cart, CartAdmin)
