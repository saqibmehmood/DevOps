from django.shortcuts import render
from rest_framework.views import APIView
from rest_framework.response import Response
from rest_framework import status
# Create your views here.
class Testing(APIView):
    def get(self, request):
        try:
            return Response({"message": "If you see this code the congrats you have implemented CICD..."}, status=status.HTTP_201_CREATED)
        except Exception as e:
            return Response({"message": str(e)}, status=status.HTTP_400_BAD_REQUEST)

def congrats(request):
    return render(request, "<h1>CICD is working fine.congrats :)</h1>")