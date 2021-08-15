from django.db import models
from datetime import datetime


class About(models.Model):
    """
    About model

    Fields
        member_name 
        member_description
        is_published
        list_date
    """
    member_name = models.CharField(max_length=300)
    member_description = models.TextField(blank=True)
    image = models.ImageField(upload_to='photos/%Y/%m/%d/')
    is_published = models.BooleanField(default=True)
    list_date = models.DateTimeField(default=datetime.now, blank=True)

    def __str__(self):
        return self.member_name
