from django.test import TestCase, Client
from django.urls import reverse
import json

class TestViews(TestCase):

    def setUp(self):
        self.client = Client()
        self.login_url = reverse('login')
        self.changePassword_url = reverse('changePassword')

    def test_login_GET(self):
        response = self.client.get(self.login_url)

        self.assertEquals(response.status_code, 200)
        self.assertTemplateUsed(response, 'pages/login.html')
    
    def test_changePassword_GET(self):
        response = self.client.get(self.changePassword_url)

        self.assertEquals(response.status_code, 200)
        self.assertTemplateUsed(response, 'pages/changePassword.html')