from  django import forms

class Faculte():
    fsta = "FSTA"

class Enregistrement_cours(forms.Form):
    faculte = Faculte()