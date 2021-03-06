# Generated by Django 3.1.7 on 2021-05-12 10:37

from django.db import migrations, models
import django.db.models.deletion


class Migration(migrations.Migration):

    initial = True

    dependencies = [
    ]

    operations = [
        migrations.CreateModel(
            name='Course',
            fields=[
                ('id', models.AutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('course_name', models.CharField(max_length=200)),
            ],
        ),
        migrations.CreateModel(
            name='Student',
            fields=[
                ('student_name', models.CharField(max_length=200)),
                ('student_email', models.CharField(max_length=200, primary_key=True, serialize=False)),
                ('student_password', models.CharField(max_length=8)),
                ('student_level', models.IntegerField()),
                ('student_course', models.ForeignKey(on_delete=django.db.models.deletion.CASCADE, to='studentApp.course')),
            ],
        ),
        migrations.CreateModel(
            name='Module',
            fields=[
                ('id', models.AutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('module_name', models.CharField(max_length=200)),
                ('level', models.IntegerField()),
                ('course_name', models.ForeignKey(on_delete=django.db.models.deletion.CASCADE, to='studentApp.course')),
            ],
        ),
    ]
