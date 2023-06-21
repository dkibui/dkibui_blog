from django.contrib import admin
from django.urls import path, include
from django.conf import settings  # add this
from django.conf.urls.static import static  # add this
from django.core.management.utils import get_random_secret_key

# print('................')
# print(get_random_secret_key())
# print('................')
# ...........................................................
# default: "Django Administration"
# admin.site.site_header = 'DKIBUI BLOG'
# default: "Site administration"
admin.site.index_title = 'WELCOME TO DKIBUI BLOGS'
# default: "Django site admin"
admin.site.site_title = 'dkibui blog'
# ...........................................................

urlpatterns = [
    path('', include("blog.urls")),
    path('', include("about.urls")),
    path('admin/', admin.site.urls),
    path("__reload__/", include("django_browser_reload.urls")),
]

if settings.DEBUG:
    urlpatterns += static(settings.MEDIA_URL,
                          document_root=settings.MEDIA_ROOT)
else:
    urlpatterns += static(settings.MEDIA_URL,
                          document_root=settings.MEDIA_ROOT)
