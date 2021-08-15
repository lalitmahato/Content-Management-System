from django.contrib import admin

from .models import Contact


class blogAdmin(admin.ModelAdmin):
    list_display = ('id', 'full_name', 'email', 'phone')
    # when user click on title or id then user can go inside the page
    list_display_links = ('id', 'full_name')
    list_per_page = 25

    def has_add_permission(self, request):
        return False
    
    def render_change_form(self, request, context, add=False, change=False, form_url='', obj=None):
        context.update({
            'show_save': False,
            'show_save_and_continue': False,
        })
        return super().render_change_form(request, context, add, change, form_url, obj)




admin.site.register(Contact, blogAdmin)
