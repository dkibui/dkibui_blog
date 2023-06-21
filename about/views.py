from django.shortcuts import render
from .models import AboutMe


def about(request):
    details = AboutMe.objects.all().first()
    text = """My name is David Kibui, a Full Stack web engineer from in Nairobi, Kenya. This is my blog where I share my knowledge and skills with the world. My tech stack is Python(Django), JavaScript(Express and Svelte), Postgres and MongoDb
    """
    context = {"title": f"{text}"}
    context["details"] = details
    return render(request, "about/about.html", context)
