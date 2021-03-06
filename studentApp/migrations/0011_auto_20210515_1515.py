# Generated by Django 3.1.7 on 2021-05-15 09:30

import django.core.validators
from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('studentApp', '0010_remove_course_hero_img'),
    ]

    operations = [
        migrations.AlterField(
            model_name='course',
            name='course_level',
            field=models.IntegerField(default=4, help_text='value 4 to 6', validators=[django.core.validators.MaxValueValidator(6), django.core.validators.MinValueValidator(4)]),
        ),
    ]
