# Generated by Django 5.0.6 on 2024-10-10 17:25

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('myapp', '0015_rename_education_mydata_high_education'),
    ]

    operations = [
        migrations.CreateModel(
            name='Education',
            fields=[
                ('id', models.BigAutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('college', models.CharField(max_length=50)),
                ('branch', models.CharField(max_length=30)),
                ('std', models.CharField(default='-----', max_length=50)),
                ('degree', models.CharField(default='-----', max_length=150)),
                ('first_year', models.CharField(max_length=4)),
                ('final_year', models.CharField(max_length=4)),
                ('grade', models.CharField(max_length=5)),
                ('percentage', models.IntegerField()),
            ],
        ),
    ]