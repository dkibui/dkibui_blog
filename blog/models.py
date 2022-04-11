from django.db import models
from django.urls import reverse
from django.utils import timezone
from django.utils.text import slugify
from django.contrib.auth.models import User
from taggit.managers import TaggableManager


# Create your models here.
STATUS = (
    (0, "No"),
    (1, "Yes")
)


class Post(models.Model):
    title = models.CharField(max_length=255)
    content = models.TextField(blank=True, null=True)
    image = models.ImageField(upload_to='uploads/')
    slug = models.SlugField(max_length=255, unique=True)
    tags = TaggableManager()
    date_created = models.DateTimeField(default=timezone.now)
    updated_on = models.DateTimeField(auto_now=True)
    author = models.ForeignKey(User, default=0,
                               on_delete=models.CASCADE)
    is_published = models.IntegerField(choices=STATUS, default=0)

    class Meta:
        ordering = ['-date_created', 'author']

    def __str__(self):
        return self.title


class Category(models.Model):
    title = models.CharField(max_length=255)
    slug = models.SlugField(max_length=255, unique=True)

    def __str__(self):
        return self.title

    class Meta:
        verbose_name_plural = 'Categories'


class Comment(models.Model):
    title = models.CharField(max_length=255)
    content = models.TextField(blank=True, null=True)
    slug = models.SlugField(max_length=255, unique=True)
    date_created = models.DateTimeField(default=timezone.now)
    updated_on = models.DateTimeField(auto_now=True)
    is_published = models.IntegerField(choices=STATUS, default=0)
    post = models.ForeignKey(Post, on_delete=models.CASCADE)

    def __str__(self):
        return self.title
