# Generated by Django 5.0.6 on 2024-10-09 17:12

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('myapp', '0002_mydata'),
    ]

    operations = [
        migrations.DeleteModel(
            name='Profetion',
        ),
        migrations.AlterModelOptions(
            name='mydata',
            options={'verbose_name_plural': '1. Mydata'},
        ),
        migrations.AddField(
            model_name='mydata',
            name='profetion',
            field=models.CharField(max_length=150, null=True),
        ),
    ]
