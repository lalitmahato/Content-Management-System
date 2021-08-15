from django.db import models
from datetime import datetime
from .imageCompression import compress_image


class heroslides(models.Model):
    """
    Heroslides model

    Fields
        title 
        description
        hero_slide image field
    """
    title = models.CharField(max_length=400)
    description = models.TextField(blank=False)
    hero_slide = models.ImageField(upload_to='photos/%Y/%m/%d/')

    def __str__(self):
        return self.title

    def save(self, *args, **kwargs):
        """
        Overriding save method to compress image before saving it  
        """
        new_image = compress_image(self.hero_slide)
        # set self.image to new_image
        self.hero_slide = new_image
        # save
        super().save(*args, **kwargs)


class why_with_us(models.Model):
    """
    Why with us model

    Fields
        title 
        description
        image field
        is published boolean
        list_date 
    """
    title = models.CharField(max_length=300)
    description = models.TextField(blank=False)
    image = models.ImageField(upload_to='photos/%Y/%m/%d/')
    is_published = models.BooleanField(default=True)
    list_date = models.DateTimeField(default=datetime.now, blank=True)

    def __str__(self):
        return self.title

    def save(self, *args, **kwargs):
        """
        Overriding save method to compress image before saving it  
        """
        new_image = compress_image(self.image)
        # set self.image to new_image
        self.image = new_image
        # save
        super().save(*args, **kwargs)


class review(models.Model):
    """
    Review model

    Fields
        review image (image field)
        course
        name
        description
        is published
        list_date
    """
    image = models.ImageField(upload_to='photos/%Y/%m/%d/')
    course = models.CharField(
        max_length=300, default="Bsc (Hons) Computer Science")
    name = models.CharField(max_length=300)
    description = models.TextField()
    is_published = models.BooleanField(default=True)
    list_date = models.DateTimeField(default=datetime.now, blank=True)

    def __str__(self):
        return self.name

    def save(self, *args, **kwargs):
        """
        Overriding save method to compress image before saving it  
        """
        new_image = compress_image(self.image)
        # set self.image to new_image
        self.image = new_image
        # save
        super().save(*args, **kwargs)
