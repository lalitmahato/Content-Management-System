from django.urls import path
from . import views  # here . refers all data

urlpatterns = [
    path('', views.index, name='index'),
    path('<int:course_id>', views.Courses, name='course'),
]
