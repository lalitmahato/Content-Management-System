from django.contrib import admin
from .models import About


class aboutAdmin(admin.ModelAdmin):
    list_display = ('id','member_name','is_published')
    list_display_links = ('id','member_name')
    list_editable = ('is_published',)
    list_per_page = 25

admin.site.register(About,aboutAdmin)