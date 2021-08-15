from django.db import models
from datetime import datetime
from pages.imageCompression import compress_image


class Gallery(models.Model):
    """
    Gallery Model

    Fields
        gallery_title
        image
    """
    gallery_title = models.CharField(max_length=700)
    image = models.ImageField(upload_to='photos/%Y/%m/%d')

    def __str__(self):
        return self.gallery_title

    def save(self, *args, **kwargs):
        """
        Overriding save method to compress image before saving it  
        """
        new_image = compress_image(self.image)
        # set self.image to new_image
        self.image = new_image
        # save
        super().save(*args, **kwargs)
