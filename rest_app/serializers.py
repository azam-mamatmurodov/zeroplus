from rest_framework import serializers
from products.models import Product, FavoriteProduct


class CartSerializer(serializers.Serializer):
    product_id = serializers.IntegerField(required=True)
    quantity = serializers.IntegerField(required=True)
    client_id = serializers.IntegerField(required=True)


class ProductSerializer(serializers.ModelSerializer):
    class Meta:
        model = Product
        fields = '__all__'


class FavoriteProductSerializer(serializers.ModelSerializer):
    class Meta:
        model = FavoriteProduct
        fields = '__all__'
