from django.db import models
from django.urls import reverse
from django.utils import timezone
from django.contrib.auth.models import User

from ckeditor.fields import RichTextField

from taggit.managers import TaggableManager


class PublishedManager(models.Manager):
    def get_queryset(self):
        return super().get_queryset().filter(status=Post.Status.PUBLISHED)


class Post(models.Model):
    class Status(models.TextChoices):
        DRAFT = 'DF', 'Draft'
        PUBLISHED = 'PB', 'Published'

    title = models.CharField(max_length=255)
    slug = models.SlugField(max_length=255, unique_for_date="publish")
    author = models.ForeignKey(User,
                               on_delete=models.CASCADE,
                               related_name="blog_posts")
    body = RichTextField()
    tags = TaggableManager()
    publish = models.DateTimeField(default=timezone.now)
    created = models.DateTimeField(auto_now_add=True)
    updated = models.DateTimeField(auto_now=True)
    status = models.CharField(max_length=12,
                              choices=Status.choices,
                              default=Status.DRAFT)

    # Default manager
    objects = models.Manager()
    # The custom manager
    published = PublishedManager()

    class Meta:
        # default_manager_name = objects
        ordering = ("-publish", )
        indexes = [
            models.Index(fields=['-publish']),
        ]

    def __str__(self):
        return self.title

    def get_absolute_url(self):
        return reverse('blog:post_detail',
                       args=[
                           self.publish.year, self.publish.month,
                           self.publish.day, self.slug
                       ])


class Comment(models.Model):
    post = models.ForeignKey(Post,
                             on_delete=models.CASCADE,
                             related_name='comments')
    name = models.CharField(max_length=80)
    email = models.EmailField()
    body = RichTextField()
    created = models.DateTimeField(auto_now_add=True)
    updated = models.DateTimeField(auto_now=True)
    active = models.BooleanField(default=True)

    class Meta:
        ordering = ['created']
        indexes = [
            models.Index(fields=['created']),
        ]

    def __str__(self):
        return f'Comment by {self.name} on {self.post}'