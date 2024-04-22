from django.urls import path
from . import views  # Import views from current app

app_name = 'python_tutorial'
urlpatterns = [
    path('', views.index, name='index'),
    path('lesson/<str:topic>', views.lesson, name='lesson'),
]
