from django.urls import path
from .views import *


urlpatterns = [
    path('cicd/', Testing.as_view()),
    path('congrats/', congrats, name='congrats'),
    path('add_task/', add_task, name='add_task'),
    path('get_tasks/', get_tasks, name='get_tasks'),
]