from django.test import TestCase
from studentApp.models import Course, Module, Student

class TestModels(TestCase):

    def setUp(self):
        self.course1 = Course.objects.create(
            course_name = "BBIM",
            hero_img_title = "",
            hero_img_title_description = "",
            academic_level = "",
            academic_level_I = "",
            english_proficiency = "",
            english_proficiency_I= "",
            course_img = "05/11/course.jpg"
        )
        self.module1 = Module.objects.create(
            course_name = self.course1.slug,
            module_name= "Test Module",
            level = 4
        )
    
    def test_module_model(self):
        self.assertEquals(self.module1.slug, 'BIT')