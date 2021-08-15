from django import urls
from django.contrib import admin
from django.urls import path, include
from django.conf import settings
from django.conf.urls.static import static

urlpatterns = [
    # path('student/',include('student.urls')),
    path('', include('pages.urls'), name="index"),
    path('event/', include('event.urls'), name="event"),
    path('about/', include('about.urls')),
    path('blog/', include('indexblog.urls')),
    path('login/', include('studentApp.urls')),
    path('', include('pages.urls'), name="index"),
    path('about/', include('about.urls')),
    path('blog/', include('indexblog.urls')),
    path('login/', include('studentApp.urls')),
    path('contact/', include('contact.urls')),
    path('gallery/', include('gallery.urls')),
    path('admin/', admin.site.urls),

] + static(settings.MEDIA_URL, document_root=settings.MEDIA_ROOT)