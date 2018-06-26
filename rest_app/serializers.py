from django.contrib.humanize.templatetags.humanize import intcomma
from rest_framework import serializers
from products.models import Product, FavoriteProduct


class CartSerializer(serializers.Serializer):
    product_id = serializers.IntegerField(required=True)
    count = serializers.IntegerField(required=True)
    total_price = serializers.SerializerMethodField()

    @staticmethod
    def get_total_price(obj):
        return format(int(obj.total_price), ",").replace(',', ' ')


class ProductSerializer(serializers.ModelSerializer):
    class Meta:
        model = Product
        fields = '__all__'


class FavoriteProductSerializer(serializers.ModelSerializer):
    class Meta:
        model = FavoriteProduct
        fields = '__all__'
