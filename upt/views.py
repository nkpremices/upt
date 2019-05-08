from datetime import datetime
from django.http import HttpResponse
from django.shortcuts import render
from .forms import Auth

def index(request):

    return render(request, 'index.html')

def finger(request):
    game = range(1, 250)
    return  render(request,'finger.html',locals())

def login(request):
    # Construire le formulaire, soit avec les données postées,
    # soit vide si l'utilisateur accède pour la première fois
    # à la page.
    form = Auth(request.POST or None)
    # Nous vérifions que les données envoyées sont valides
    # Cette méthode renvoie False s'il n'y a pas de données
    # dans le formulaire ou qu'il contient des erreurs.
    if form.is_valid():
        # Ici nous pouvons traiter les données du formulaire
        username = form.cleaned_data['username']
        # Nous pourrions ici envoyer l'e-mail grâce aux données
        # que nous venons de récupérer
        valide = True

    context ={
        'form' : form
    }
    # Quoiqu'il arrive, on affiche la page du formulaire.
    return render(request, 'registration/login.html', locals())
