from django.db import models
from django.utils import timezone


# Create your models here.

class Enseignant(models.Model):
    finger = models.TextField(max_length=1000000)
    nom = models.TextField(max_length=45)
    post_nom = models.TextField(max_length=45)
    pre_nom = models.TextField(max_length=45)

    class Meta:
        verbose_name = "enseignant"
        ordering = ['nom']

    def __str__(self):
        """this method is used for storing courses. matching them to each teacher"""
        return " "+self.nom+" "+self.post_nom+" "+self.pre_nom



class Cours(models.Model):
    intitule = models.CharField(max_length=45)
    volume = models.IntegerField()
    enseignant = models.ForeignKey(Enseignant, on_delete=models.CASCADE)


    class Meta:
        verbose_name = "cours"
        ordering = ['volume']

    def __str__(self):
        """this method is used for storing courses. matching them to each teacher"""
        return self.intitule


class Etudiant(models.Model):
    finger = models.TextField(max_length=1000000)
    nom = models.CharField(max_length=45)
    post_nom = models.CharField(max_length=45)
    pre_nom = models.CharField(max_length=45)
    faculte = models.CharField(max_length=45)
    promotion = models.CharField(max_length=45)
    cours_suivis = models.ManyToManyField(Cours)


    class Meta:
        verbose_name = "etudiant"
        ordering = ['nom']

    def __str__(self):
        """this method is used for storing courses. matching them to each teacher"""
        return self.nom+" "+self.post_nom+" "+self.pre_nom

class PresencesEt(models.Model):
    jour = models.DateField(default=timezone.now)
    heure = models.TimeField(default=timezone.now)
    debut = models.BooleanField(default=False)
    fin = models.BooleanField(default=False)
    pause = models.BooleanField(default=False)
    etudiant = models.ForeignKey(Etudiant,on_delete=models.CASCADE)
    class Meta:
        verbose_name = "presencesEt"
        ordering = ['jour']

    def __str__(self):
        """this method is used for storing courses. matching them to each teacher"""
        return " " + self.etudiant+ " " + self.jour