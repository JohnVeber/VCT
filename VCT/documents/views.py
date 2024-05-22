# from django.shortcuts import render
from django.http import HttpResponse

def index(request):
    return HttpResponse('This is VCT project - an application for managing documents.')

