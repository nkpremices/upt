# Generated by Django 2.1.2 on 2018-12-31 16:06

from django.db import migrations, models
import django.db.models.deletion
import django.utils.timezone


class Migration(migrations.Migration):

    initial = True

    dependencies = [
        ('cours', '0001_initial'),
    ]

    operations = [
        migrations.CreateModel(
            name='Examen',
            fields=[
                ('id', models.AutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('jour', models.DateField(default=django.utils.timezone.now)),
                ('duree', models.IntegerField()),
                ('cours', models.ForeignKey(on_delete=django.db.models.deletion.CASCADE, to='cours.Cours')),
                ('etudiant', models.ForeignKey(on_delete=django.db.models.deletion.CASCADE, to='cours.Etudiant')),
            ],
            options={
                'verbose_name': 'examen',
                'ordering': ['jour'],
            },
        ),
    ]
