# Generated by Django 3.1.7 on 2021-05-13 08:25

from django.db import migrations, models
import django.utils.timezone


class Migration(migrations.Migration):

    dependencies = [
        ('studentApp', '0007_auto_20210513_1408'),
    ]

    operations = [
        migrations.RemoveField(
            model_name='course',
            name='total_credits',
        ),
        migrations.AddField(
            model_name='course',
            name='total_create',
            field=models.CharField(default=django.utils.timezone.now, max_length=800),
            preserve_default=False,
        ),
    ]
