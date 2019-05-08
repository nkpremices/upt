from django.urls import path

from . import views


urlpatterns = [

    path('', views.home, name = 'cours'),
    path('commencer', views.commencer, name ='cours_commencer'),
    path('liste', views.liste, name ='liste'),


]