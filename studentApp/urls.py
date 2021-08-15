from django.urls import path
from . import views

urlpatterns = [
    path('', views.studentLogin, name='login'),
    path('changePassword', views.getChangePassword, name='changePassword'),

]
