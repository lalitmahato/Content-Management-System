# Generated by Django 3.1.7 on 2021-05-13 09:21

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('studentApp', '0008_auto_20210513_1410'),
    ]

    operations = [
        migrations.AlterField(
            model_name='course',
            name='course_img',
            field=models.ImageField(upload_to='photos/%Y/%m/%d'),
        ),
    ]