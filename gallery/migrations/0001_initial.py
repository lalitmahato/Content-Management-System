# Generated by Django 3.1.7 on 2021-05-13 09:35

from django.db import migrations, models


class Migration(migrations.Migration):

    initial = True

    dependencies = [
    ]

    operations = [
        migrations.CreateModel(
            name='gallery',
            fields=[
                ('id', models.AutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('gallery_title', models.CharField(max_length=700)),
                ('image', models.ImageField(upload_to='photos/%Y/%m/%d')),
            ],
        ),
    ]
