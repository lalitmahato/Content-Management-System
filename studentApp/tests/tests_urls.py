from django.test import SimpleTestCase
from django.urls import reverse, resolve
from studentApp.views import studentLogin, getChangePassword

class TestUrls(SimpleTestCase):

    def test_login_url_is_resolved(self):
        url = reverse('login')
        print(resolve(url))
        self.assertEquals(resolve(url).func,studentLogin)

    def test_changePassword_detail_url_is_resolved(self):
        url = reverse('changePassword')
        print(resolve(url))
        self.assertEquals(resolve(url).func,getChangePassword)
