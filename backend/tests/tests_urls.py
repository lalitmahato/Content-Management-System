from django.test import SimpleTestCase
from django.urls import reverse, resolve
from pages.views import index
from event.views import getEvent

class TestUrls(SimpleTestCase):

    def test_index_url_is_resolved(self):
        url = reverse('index')
        print(resolve(url))
        self.assertEquals(resolve(url).func,index)

    def test_event_url_is_resolved(self):
        url = reverse('event')
        print(resolve(url))
        self.assertEquals(resolve(url).func.view_class,getEvent)