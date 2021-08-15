from django.contrib import admin
from .models import why_with_us,review,heroslides


class HeroslidesAdmin(admin.ModelAdmin):
    list_display = ('id','title')
    list_display_links = ('id','title')
    search_fields = ('id','title','description')
    list_per_page = 25

class why_with_usAdmin(admin.ModelAdmin):
    list_display = ('id','title','is_published')
    list_display_links = ('id','title')
    list_editable = ('is_published',)
    list_per_page = 25

class reviewAdmin(admin.ModelAdmin):
    list_display = ('id','name','is_published')
    list_display_links = ('id','name')
    list_editable = ('is_published',)
    list_per_page = 25



admin.site.register(why_with_us,why_with_usAdmin)
admin.site.register(review,reviewAdmin)
admin.site.register(heroslides,HeroslidesAdmin)