# Generated by Django 2.1.2 on 2018-12-31 17:14

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('agent', '0003_agent_presencesag'),
    ]

    operations = [
        migrations.AlterField(
            model_name='agent',
            name='nom',
            field=models.CharField(max_length=45),
        ),
        migrations.AlterField(
            model_name='agent',
            name='post_nom',
            field=models.CharField(max_length=45),
        ),
        migrations.AlterField(
            model_name='agent',
            name='pre_nom',
            field=models.CharField(max_length=45),
        ),
    ]
