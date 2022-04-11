from django.contrib import admin
from django.contrib.auth.models import Group
import datetime
from . import models


class PostAdmin(admin.ModelAdmin):
    def date_posted(self, obj):
        return obj.date_created.date()

    def is_updated(self, obj):
        if (obj.updated_on - obj.date_created).total_seconds() > 120:
            return 'Yes'
        else:
            return 'No'

    list_display = ('title', 'date_posted', 'is_updated', 'is_published',
                    "author")
    search_fields = ['title', 'content']
    list_filter = ("is_published", "author")
    prepopulated_fields = {'slug': ('title',)}


# Register your models here.
admin.site.register(models.Post, PostAdmin)
admin.site.register(models.Category)
admin.site.register(models.Comment)


# Unregister modules
admin.site.unregister(Group)
