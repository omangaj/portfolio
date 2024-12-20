# Generated by Django 5.0.6 on 2024-10-10 11:38

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('myapp', '0011_rename_about_about_about'),
    ]

    operations = [
        migrations.AddField(
            model_name='about',
            name='about_resume',
            field=models.TextField(null=True),
        ),
        migrations.AddField(
            model_name='about',
            name='resume',
            field=models.FileField(null=True, upload_to='media/myphoto'),
        ),
        migrations.AddField(
            model_name='experience',
            name='Work_experience',
            field=models.TextField(default='-----', null=True),
        ),
        migrations.AddField(
            model_name='experience',
            name='joining_date',
            field=models.CharField(default='-----', max_length=100, null=True),
        ),
        migrations.AddField(
            model_name='experience',
            name='resignation_date',
            field=models.CharField(default='-----', max_length=100, null=True),
        ),
    ]
