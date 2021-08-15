from django.contrib import admin
from .models import Blog


class blogAdmin(admin.ModelAdmin):
    list_display = ('id', 'blog_tag', 'is_published', 'list_date')
    # when user click on title or id then user can go inside the page
    list_display_links = ('id', 'blog_tag')
    # from the listing page the user can published or unpublished
    list_editable = ('is_published',)
    list_per_page = 25


admin.site.register(Blog, blogAdmin)

# Register your models here.
