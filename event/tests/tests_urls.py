from django.test import SimpleTestCase
from django.urls import reverse, resolve
from event.views import getEvent, getEventDetail

class TestUrls(SimpleTestCase):

    def test_events_url_is_resolved(self):
        url = reverse('events')
        print(resolve(url))
        self.assertEquals(resolve(url).func,getEvent)

    def test_event_detail_url_is_resolved(self):
        url = reverse('event_detail',args=[1])
        print(resolve(url))
        self.assertEquals(resolve(url).func,getEventDetail)
