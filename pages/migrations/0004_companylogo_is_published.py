# Generated by Django 3.1.7 on 2021-04-10 06:44

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('pages', '0003_companylogo_logo_title'),
    ]

    operations = [
        migrations.AddField(
            model_name='companylogo',
            name='is_published',
            field=models.BooleanField(default=True),
        ),
    ]