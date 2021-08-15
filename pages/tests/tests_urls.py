from django.test import SimpleTestCase
from django.urls import reverse, resolve
from pages.views import index, Courses

class TestUrls(SimpleTestCase):

    def test_index_url_is_resolved(self):
        url = reverse('index')
        print(resolve(url))
        self.assertEquals(resolve(url).func,index)

    def test_course_url_is_resolved(self):
        url = reverse('course',args=[1])
        print(resolve(url))
        self.assertEquals(resolve(url).func,Courses)
