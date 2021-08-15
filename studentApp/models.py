from django.db import models
from django.contrib.auth.models import User
from django.contrib.auth.hashers import make_password
from datetime import datetime
from django.core.validators import *

from pages.imageCompression import compress_image
# Create your models here.


class Course(models.Model):
    """
    Course Model

    Fields
        Course Name
        course hero image title
        course hero image decription
        academic level
        academic level I
        english proficiency
        english proficiency I
        ....rest
    """
    course_name = models.CharField(max_length=200)
    hero_img_title = models.CharField(max_length=400)
    hero_img_title_description = models.CharField(max_length=800)

    academic_level = models.CharField(max_length=800)
    academic_level_I = models.CharField(max_length=800)
    english_proficiency = models.CharField(max_length=800)
    english_proficiency_I = models.CharField(max_length=800)
    english_proficiency_II = models.CharField(max_length=800)
    sub_english_proficiency_I = models.CharField(max_length=800)
    sub_english_proficiency_II = models.CharField(max_length=800)
    english_proficiency_III = models.CharField(max_length=800)

    university_name = models.CharField(max_length=800)
    course_duration = models.CharField(max_length=800)
    total_create = models.CharField(max_length=800)

    course_img = models.ImageField(upload_to='photos/%Y/%m/%d')
    course_title = models.CharField(max_length=400)
    course_description = models.TextField(blank=False)

    course_level = models.IntegerField(default=4, help_text="value 4 to 6", validators=[MaxValueValidator(6),MinValueValidator(4)])
    level_subject_name = models.CharField(max_length=700)
    level_subject_name_I = models.CharField(max_length=700)
    level_subject_name_II = models.CharField(max_length=700)
    level_subject_name_III = models.CharField(max_length=700)
    level_subject_name_IV = models.CharField(max_length=700)
    level_subject_name_V = models.CharField(max_length=700)
    level_subject_name_VI = models.CharField(max_length=700, blank=True)
    level_subject_name_VII = models.CharField(max_length=700, blank=True)

    def __str__(self):
        return self.course_name

    def save(self, *args, **kwargs):
        """
        Overriding save method to compress image before saving it  
        """
        new_image = compress_image(self.course_img)
        # set self.image to new_image
        self.course_img = new_image
        # save
        super().save(*args, **kwargs)


class Module(models.Model):
    """
    Module model

    Fields
        Course Name (Foreign Key)
        Module Name
        Level
    """
    course_name = models.ForeignKey(Course, on_delete=models.CASCADE)
    module_name = models.CharField(max_length=200)
    level = models.IntegerField(default=4, help_text="value 4 to 6", validators=[MaxValueValidator(6),MinValueValidator(4)])


    def __str__(self):
        return self.module_name


class Student(models.Model):
    """
    Student Model

    Fields
        Student Name
        Student Email
        Student Password
        Student Course (Foreign key)
        Student Level
    """
    student_name = models.CharField(max_length=200)
    student_email = models.CharField(max_length=200, primary_key=True)
    student_password = models.CharField(max_length=255)
    student_course = models.ForeignKey(Course, on_delete=models.CASCADE)
    student_level = models.IntegerField(default=4, help_text="value 4 to 6", validators=[MaxValueValidator(6),MinValueValidator(4)])


    def __str__(self):
        return self.student_name

    def save(self):
        """
        Overriding save method to hash the student password and store it
        """
        some_salt = 'some_salt'
        self.student_password = make_password(self.student_password, some_salt)
        super().save()
