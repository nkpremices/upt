# Generated by Django 2.1.2 on 2019-01-01 00:45

from django.db import migrations, models
import django.utils.timezone


class Migration(migrations.Migration):

    dependencies = [
        ('agent', '0004_auto_20181231_1714'),
    ]

    operations = [
        migrations.AddField(
            model_name='presencesag',
            name='heure',
            field=models.TimeField(default=django.utils.timezone.now),
        ),
    ]