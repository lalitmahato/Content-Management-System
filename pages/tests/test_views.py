from django.test import TestCase, Client
from django.urls import reverse
import json

class TestViews(TestCase):

    def setUp(self):
        self.client = Client()
        self.index_url = reverse('index')
        self.course_url = reverse('course',args=[1])

    def test_login_GET(self):
        response = self.client.get(self.index_url)

        self.assertEquals(response.status_code, 200)
        self.assertTemplateUsed(response, 'pages/index.html')
    
    def test_changePassword_GET(self):
        response = self.client.get(self.course_url)

        self.assertEquals(response.status_code, 200)
        self.assertTemplateUsed(response, 'pages/courses.html')