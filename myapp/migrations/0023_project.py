# Generated by Django 5.0.6 on 2024-10-26 04:51

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('myapp', '0022_rename_photo_mydata_background_img_and_more'),
    ]

    operations = [
        migrations.CreateModel(
            name='Project',
            fields=[
                ('id', models.BigAutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('pro_image', models.ImageField(upload_to='media/project')),
                ('pro_link', models.CharField(max_length=150)),
                ('pro_name', models.CharField(max_length=150)),
                ('pro_info', models.TextField()),
            ],
            options={
                'verbose_name_plural': '11. Project',
            },
        ),
    ]
