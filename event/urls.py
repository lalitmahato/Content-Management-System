from django.urls import path
from . import views # here . refers all data

urlpatterns = [
    path('',views.getEvent,name='events'),
    path('<int:event_id>', views.getEventDetail, name='event_detail'),
]