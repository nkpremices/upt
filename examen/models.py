from django.db import models
from django.utils import timezone
import cours.models as coursEx



# Create your models here.

class Examen(models.Model):
    jour = models.DateField(default=timezone.now)
    heure = models.TimeField(default=timezone.now)
    duree = models.IntegerField()
    cours = models.ForeignKey(coursEx.Cours,on_delete=models.CASCADE)
    etudiant = models.ForeignKey(coursEx.Etudiant,on_delete=models.CASCADE)

    class Meta:
        verbose_name = "examen"
        ordering = ['jour']

    def __str__(self):
        """this method is used for storing courses. matching them to each teacher"""
        return self.cours

