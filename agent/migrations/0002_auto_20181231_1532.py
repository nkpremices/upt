# Generated by Django 2.1.2 on 2018-12-31 15:32

from django.db import migrations


class Migration(migrations.Migration):

    dependencies = [
        ('agent', '0001_initial'),
    ]

    operations = [
        migrations.RemoveField(
            model_name='presencesag',
            name='agent',
        ),
        migrations.DeleteModel(
            name='Agent',
        ),
        migrations.DeleteModel(
            name='PresencesAg',
        ),
    ]
