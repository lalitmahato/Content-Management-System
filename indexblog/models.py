from django.db import models
from datetime import datetime

from pages.imageCompression import compress_image


class Blog(models.Model):
    """
    Blog Model

    Fields
        blog_title
        blog_tag
        blog_image
        blog_describe
        is_published
        list_date
        ....rest
    """
    blog_title = models.CharField(max_length=700)
    blog_tag = models.CharField(max_length=400)
    blog_image = models.ImageField(
        upload_to='photos/%Y/%m/%d', blank=False, max_length=500)
    blog_describe = models.TextField(blank=False)
    is_published = models.BooleanField(default=True)
    list_date = models.DateTimeField(default=datetime.now, blank=True)

    def __str__(self):
        return self.blog_title

    def save(self, *args, **kwargs):
        """
        Overriding save method to compress image before saving it  
        """
        new_image = compress_image(self.blog_image)
        # set self.image to new_image
        self.blog_image = new_image
        # save
        super().save(*args, **kwargs)
