# Generated by Django 3.1.1 on 2021-05-15 01:10

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('indexblog', '0002_blog_is_published'),
    ]

    operations = [
        migrations.AlterField(
            model_name='blog',
            name='blog_image',
            field=models.ImageField(null=True, upload_to='photos/%Y/%m/%d'),
        ),
    ]
