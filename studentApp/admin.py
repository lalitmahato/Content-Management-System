from django.contrib import admin

from .models import Module, Student, Course


class moduleAdmin(admin.ModelAdmin):
    list_display = ('id','course_name','module_name','level')
    list_display_links = ('id','course_name')
    list_filter = ('course_name',)
    search_fields = ['id','course_name__course_name','module_name','level']
    list_per_page = 25

class studentAdmin(admin.ModelAdmin):
    list_display = ('student_name','student_email','student_level')
    list_display_links = ('student_name','student_email',)
    search_fields = ('student_name','student_email','student_level')
    list_per_page = 25

class courseAdmin(admin.ModelAdmin):
    list_per_page = 25

admin.site.register(Module,moduleAdmin)
admin.site.register(Student,studentAdmin)
admin.site.register(Course,courseAdmin)