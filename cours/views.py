
from django.shortcuts import render
#from .forms import ContactForm

def home(request):

    return render(request, 'cours/homec.html')

def commencer(request):
    return render(request, 'cours/commencer.html')
def liste(request):
    return render(request, 'cours/liste.html')


