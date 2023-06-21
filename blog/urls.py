from django.urls import path
from . import views

app_name = "blog"
urlpatterns = [
    path("", views.PostListView.as_view(), name="list"),
    path("tag/<slug:tag_slug>/", views.PostListView.as_view(), name="list_by_tag"),
    path("<slug:post>/", views.PostDetailView.as_view(), name="detail"),
    path("<int:post_id>/share/", views.share, name="share"),
    path("<int:post_id>/comment/", views.post_comment, name="post_comment"),
]

# <int:year>/<int:month>/<int:day>/
