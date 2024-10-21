# Generated by Django 5.0.6 on 2024-10-09 10:30

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('myapp', '0001_initial'),
    ]

    operations = [
        migrations.CreateModel(
            name='Mydata',
            fields=[
                ('id', models.BigAutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('name', models.CharField(max_length=100)),
                ('photo', models.ImageField(upload_to='media/myphoto')),
                ('mobile', models.CharField(max_length=11)),
                ('email', models.EmailField(max_length=254, unique=True)),
                ('adress', models.CharField(max_length=200)),
            ],
            options={
                'verbose_name_plural': '2. Mydata',
            },
        ),
    ]