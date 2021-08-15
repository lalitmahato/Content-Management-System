from django.urls import path
from . import views  # here . refers all data

urlpatterns = [
    path('', views.indexblog, name='blog'),
    path('<int:blog_id>', views.blog, name='blogs'),
]
