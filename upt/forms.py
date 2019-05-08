from django import forms

class Faculte():
    fsta = "FSTA"

class Auth(forms.Form):
    username = forms.CharField(max_length=100)