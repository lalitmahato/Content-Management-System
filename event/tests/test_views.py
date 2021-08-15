from django.test import TestCase, Client
from django.urls import reverse
import json

class TestViews(TestCase):

    def setUp(self):
        self.client = Client()
        self.event_url = reverse('events')
        self.event_detail_url = reverse('event_detail',args=[1])

    def test_event_GET(self):
        response = self.client.get(self.event_url)

        self.assertEquals(response.status_code, 200)
        self.assertTemplateUsed(response, 'pages/event.html')
    
    def test_event_detail_GET(self):
        response = self.client.get(self.event_detail_url)

        self.assertEquals(response.status_code, 200)
        self.assertTemplateUsed(response, 'pages/eventDetail.html')