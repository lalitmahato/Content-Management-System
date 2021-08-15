from django.db import models
from datetime import datetime

from pages.imageCompression import compress_image

class Event(models.Model):
    """
    Event model

    Fields
        event title (Foreign Key)
        event description
        event_image
        event created date
        event location
        event time duration in AM, PM
        event date 
        event location
    """
    title = models.CharField(max_length=400)
    description = models.TextField()
    event_image = models.ImageField(upload_to = 'photos/%Y/%m/%d/')
    created_at = models.DateTimeField(auto_now_add=True)
    location_detail = models.CharField(max_length=400)
    event_time = models.CharField(max_length=200)
    event_date = models.DateTimeField()
    event_location_campus = models.CharField(max_length=150,default="On Campus")

    def __str__(self):
        return self.title 

    def save(self, *args, **kwargs):
        """
        Overriding save method to compress image before saving it  
        """
        new_image = compress_image(self.event_image)
        # set self.image to new_image
        self.event_image = new_image
        # save
        super().save(*args, **kwargs)
