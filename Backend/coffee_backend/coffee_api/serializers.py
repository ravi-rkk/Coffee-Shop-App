from rest_framework import serializers
from .models import Products

class ProductSerializer(serializers.ModelSerializer):
    class Meta:
        model = Products
        # List all the fields from your model you want to include in the API
        fields = ['productid', 'productname', 'price', 'imageurl']