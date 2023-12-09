from django.urls import path
from .views import *


urlpatterns = [
    path('cicd/', Testing.as_view()),
    path('congrats/', congrats, name='congrats'),
]