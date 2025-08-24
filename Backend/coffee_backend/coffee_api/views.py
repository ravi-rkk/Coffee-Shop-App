from rest_framework import generics
from .models import Products
from .serializers import ProductSerializer

# This view handles GET (list all) and POST (create new) requests
class ProductList(generics.ListCreateAPIView):
    queryset = Products.objects.all()
    serializer_class = ProductSerializer