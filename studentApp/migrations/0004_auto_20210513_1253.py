# Generated by Django 3.1.7 on 2021-05-13 07:08

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('studentApp', '0003_auto_20210513_1250'),
    ]

    operations = [
        migrations.AlterField(
            model_name='course',
            name='academic_level',
            field=models.CharField(max_length=800),
        ),
        migrations.AlterField(
            model_name='course',
            name='academic_level_I',
            field=models.CharField(max_length=800),
        ),
        migrations.AlterField(
            model_name='course',
            name='course_description',
            field=models.TextField(),
        ),
        migrations.AlterField(
            model_name='course',
            name='course_duration',
            field=models.CharField(max_length=800),
        ),
        migrations.AlterField(
            model_name='course',
            name='course_img',
            field=models.ImageField(upload_to='photos/%Y/%m'),
        ),
        migrations.AlterField(
            model_name='course',
            name='course_level',
            field=models.IntegerField(default=4),
        ),
        migrations.AlterField(
            model_name='course',
            name='course_title',
            field=models.CharField(max_length=400),
        ),
        migrations.AlterField(
            model_name='course',
            name='english_proficiency',
            field=models.CharField(max_length=800),
        ),
        migrations.AlterField(
            model_name='course',
            name='english_proficiency_I',
            field=models.CharField(max_length=800),
        ),
        migrations.AlterField(
            model_name='course',
            name='english_proficiency_II',
            field=models.CharField(max_length=800),
        ),
        migrations.AlterField(
            model_name='course',
            name='english_proficiency_III',
            field=models.CharField(max_length=800),
        ),
        migrations.AlterField(
            model_name='course',
            name='hero_img',
            field=models.ImageField(upload_to='photos/%Y/%m/%d'),
        ),
        migrations.AlterField(
            model_name='course',
            name='hero_img_title',
            field=models.CharField(max_length=400),
        ),
        migrations.AlterField(
            model_name='course',
            name='hero_img_title_description',
            field=models.CharField(max_length=800),
        ),
        migrations.AlterField(
            model_name='course',
            name='level_subject_name',
            field=models.CharField(max_length=700),
        ),
        migrations.AlterField(
            model_name='course',
            name='level_subject_name_I',
            field=models.CharField(max_length=700),
        ),
        migrations.AlterField(
            model_name='course',
            name='level_subject_name_II',
            field=models.CharField(max_length=700),
        ),
        migrations.AlterField(
            model_name='course',
            name='level_subject_name_III',
            field=models.CharField(max_length=700),
        ),
        migrations.AlterField(
            model_name='course',
            name='level_subject_name_IV',
            field=models.CharField(max_length=700),
        ),
        migrations.AlterField(
            model_name='course',
            name='level_subject_name_V',
            field=models.CharField(max_length=700),
        ),
        migrations.AlterField(
            model_name='course',
            name='sub_english_proficiency_I',
            field=models.CharField(max_length=800),
        ),
        migrations.AlterField(
            model_name='course',
            name='sub_english_proficiency_II',
            field=models.CharField(max_length=800),
        ),
        migrations.AlterField(
            model_name='course',
            name='total_create',
            field=models.CharField(max_length=800),
        ),
        migrations.AlterField(
            model_name='course',
            name='university_name',
            field=models.CharField(max_length=800),
        ),
    ]
