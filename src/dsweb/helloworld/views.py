from django.http import HttpResponse


def index(request):
    return HttpResponse("Hello, world. After the week I\'ve finally do this")
