from django.db import models
from django.utils import  timezone

# Create your models here.
class Agent(models.Model):
    finger = models.TextField(max_length=1000000)
    nom = models.CharField(max_length=45)
    post_nom = models.CharField(max_length=45)
    pre_nom = models.CharField(max_length=45)


    class Meta:
        verbose_name = "agent"
        ordering = ['nom']

    def __str__(self):
        """this method is used for storing courses. matching them to each teacher"""
        return " "+self.nom+" "+self.post_nom+" "+self.pre_nom


class PresencesAg(models.Model):
    jour = models.DateField(default=timezone.now)
    heure = models.TimeField(default=timezone.now)
    arrivee = models.BooleanField(default=False)
    depart = models.BooleanField(default=False)
    agent = models.ForeignKey(Agent,on_delete=models.CASCADE)
    class Meta:
        verbose_name = "presencesAg"
        ordering = ['jour']

    def __str__(self):
        """this method is used for storing courses. matching them to each teacher"""
        return " " + self.agent+ " " + self.jour
