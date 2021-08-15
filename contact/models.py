from django.db import models
from phone_field import PhoneField


class Contact(models.Model):
    """
    Contact model

    Fields
        full_name 
        email
        phone
        message
    """
    full_name = models.CharField(max_length=200)
    email = models.CharField(max_length=200)
    phone = PhoneField(blank=True, help_text='Contact phone number')
    message = models.TextField()

    def __str__(self):
        return self.full_name
