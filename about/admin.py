from django.contrib.auth.models import Group
from django.contrib import admin

from .models import AboutMe


@admin.register(AboutMe)
class AboutMeAdmin(admin.ModelAdmin):
    list_display = ("title", "updated")
    search_fields = ("title", "body")
