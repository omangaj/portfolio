# Generated by Django 5.0.6 on 2024-10-10 10:49

import django.db.models.deletion
from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('myapp', '0008_my_skill'),
    ]

    operations = [
        migrations.CreateModel(
            name='Code_Editor',
            fields=[
                ('id', models.BigAutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('editor', models.CharField(max_length=50)),
            ],
            options={
                'verbose_name_plural': '7. Code_Editor',
            },
        ),
        migrations.CreateModel(
            name='Hobbies',
            fields=[
                ('id', models.BigAutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('hobbie', models.CharField(max_length=50)),
            ],
            options={
                'verbose_name_plural': '9. Hobbies',
            },
        ),
        migrations.CreateModel(
            name='Language',
            fields=[
                ('id', models.BigAutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('language', models.CharField(max_length=50)),
            ],
            options={
                'verbose_name_plural': '6. Language',
            },
        ),
        migrations.CreateModel(
            name='Soft_Skill',
            fields=[
                ('id', models.BigAutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('soft_skill', models.CharField(max_length=50)),
            ],
            options={
                'verbose_name_plural': '8. Soft_Skill',
            },
        ),
        migrations.AlterModelOptions(
            name='my_skill',
            options={'verbose_name_plural': '4. My_skill'},
        ),
        migrations.CreateModel(
            name='About',
            fields=[
                ('id', models.BigAutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('About', models.TextField()),
                ('profile', models.CharField(max_length=50)),
                ('domain', models.CharField(max_length=50, null=True)),
                ('high_education', models.CharField(max_length=50)),
                ('name', models.ForeignKey(on_delete=django.db.models.deletion.CASCADE, to='myapp.mydata')),
            ],
            options={
                'verbose_name_plural': '5. About',
            },
        ),
    ]
