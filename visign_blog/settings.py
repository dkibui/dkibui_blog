import os
from ast import alias
from pathlib import Path
from decouple import config


# Build paths inside the project like this: BASE_DIR / 'subdir'.
BASE_DIR = Path(__file__).resolve().parent.parent

# Templates Directory
TEMPLATE_DIR = os.path.join(BASE_DIR, "templates")

SECRET_KEY = config("SECRET_KEY")
DEBUG = config("DEBUG", default=False, cast=bool)
EMAIL_HOST = config("EMAIL_HOST", default="localhost")
EMAIL_PORT = config("EMAIL_PORT", default=25, cast=int)

host1 = config("ALLOWED_HOST1")
host2 = config("ALLOWED_HOST2")

ALLOWED_HOSTS = [host1, host2]

INSTALLED_APPS = [
    "django.contrib.admin",
    "django.contrib.auth",
    "django.contrib.contenttypes",
    "django.contrib.sessions",
    "django.contrib.messages",
    "whitenoise.runserver_nostatic",
    "django.contrib.staticfiles",
    "django.contrib.postgres",
    # Custom apps
    "blog",
    "about",
    # 'markdownify.apps.MarkdownifyConfig',
    # Installed apps
    "psycopg2",
    "taggit",
    "ckeditor",
]

MIDDLEWARE = [
    "django.middleware.security.SecurityMiddleware",
    "whitenoise.middleware.WhiteNoiseMiddleware",
    "django.contrib.sessions.middleware.SessionMiddleware",
    "django.middleware.common.CommonMiddleware",
    "django.middleware.csrf.CsrfViewMiddleware",
    "django.contrib.auth.middleware.AuthenticationMiddleware",
    "django.contrib.messages.middleware.MessageMiddleware",
    "django.middleware.clickjacking.XFrameOptionsMiddleware",
]

ROOT_URLCONF = "visign_blog.urls"

TEMPLATES = [
    {
        "BACKEND": "django.template.backends.django.DjangoTemplates",
        "DIRS": [TEMPLATE_DIR],
        "APP_DIRS": True,
        "OPTIONS": {
            "context_processors": [
                "django.template.context_processors.debug",
                "django.template.context_processors.request",
                "django.contrib.auth.context_processors.auth",
                "django.contrib.messages.context_processors.messages",
            ],
        },
    },
]

WSGI_APPLICATION = "visign_blog.wsgi.application"


DATABASES = {
    "default": {
        "ENGINE": config("DB_ENGINE"),
        "NAME": config("DB_NAME"),
        "USER": config("DB_USER"),
        "PASSWORD": config("DB_PASSWORD"),
        "HOST": config("DB_HOST"),
        "POST": "",
    }
}

# DATABASES = {
#     "default": {
#         "ENGINE": "django.db.backends.sqlite3",
#         "NAME": BASE_DIR / "db.sqlite3",
#     }
# }


AUTH_PASSWORD_VALIDATORS = [
    {
        "NAME": "django.contrib.auth.password_validation.UserAttributeSimilarityValidator",
    },
    {
        "NAME": "django.contrib.auth.password_validation.MinimumLengthValidator",
    },
    {
        "NAME": "django.contrib.auth.password_validation.CommonPasswordValidator",
    },
    {
        "NAME": "django.contrib.auth.password_validation.NumericPasswordValidator",
    },
]


# Internationalization
# https://docs.djangoproject.com/en/4.0/topics/i18n/

LANGUAGE_CODE = "en-us"
TIME_ZONE = "Africa/Nairobi"
USE_I18N = True
USE_TZ = True


# Static files (CSS, JavaScript, Images)
# https://docs.djangoproject.com/en/4.0/howto/static-files/
STATIC_URL = "static/"
STATIC_ROOT = os.path.join(BASE_DIR, "staticfiles/")
STATICFILES_DIRS = [BASE_DIR / "static"]
# STATICFILES_STORAGE = 'django.contrib.staticfiles.storage.StaticFilesStorage'
STATICFILES_STORAGE = "whitenoise.storage.CompressedManifestStaticFilesStorage"


# Base url to serve media files
MEDIA_URL = "/media/"
# Absolute path where media is stored
MEDIA_ROOT = os.path.join(BASE_DIR, "media/")


CKEDITOR_CONFIGS = {
    "default": {
        "toolbar_Basic": [["-", "Bold", "Italic"]],
        "toolbar_YourCustomToolbarConfig": [
            # {'name': 'clipboard', 'items': [
            #     'Cut', 'Copy', 'Paste', 'PasteText', 'PasteFromWord', '-', 'Undo', 'Redo']},
            # {'name': 'editing', 'items': [
            #     'Find', 'Replace', '-', 'SelectAll']},
            # '/',
            {
                "name": "basicstyles",
                "items": [
                    "Bold",
                    "Italic",
                    "Underline",
                    "Subscript",
                    "Superscript",
                    "RemoveFormat",
                ],
            },
            {
                "name": "paragraph",
                "items": [
                    "NumberedList",
                    "BulletedList",
                    "-",
                    "Outdent",
                    "Indent",
                    "-",
                    "Blockquote",
                    "CodeSnippet",
                    # "CreateDiv",
                    "-",
                    "JustifyLeft",
                    "JustifyCenter",
                    "JustifyRight",
                    "JustifyBlock",
                ],
            },
            {"name": "links", "items": ["Link", "Unlink"]},
            # '/',
            {"name": "styles", "items": ["Format"]},
            # {"name": "colors", "items": ["TextColor", "BGColor"]},
            {
                "name": "insert",
                "items": ["Table", "HorizontalRule"],
            },
            {
                'name': 'source',
                'items': ['Maximize', 'Source', ],
            },
        ],
        "toolbar": "YourCustomToolbarConfig",  # put selected toolbar config here
        "width": "100%",
        "tabSpaces": 4,
        "extraPlugins": ",".join(
            [
                "autolink",
                "autogrow",
                "devtools",
                "widget",
                "lineutils",
                "clipboard",
                "dialog",
                "dialogui",
                "elementspath",
                "codesnippet",
            ]
        ),
    }
}

MARKDOWNIFY = {
    "default": {
        "MARKDOWN_EXTENSIONS": [
            "markdown.extensions.fenced_code",
            "markdown.extensions.extra",
            # 'markdown.extensions.codehilite',
        ],
        "STRIP": False,
        "LINKIFY_TEXT": {
            "PARSE_URLS": False,
            # Next key/value-pairs only have effect if "PARSE_URLS" is True
            "PARSE_EMAIL": False,
            "CALLBACKS": [],
            "SKIP_TAGS": [],
        },
        "WHITELIST_TAGS": [
            "a",
            "abbr",
            "acronym",
            "b",
            "blockquote",
            "em",
            "i",
            "li",
            "ol",
            "p",
            "strong",
            "ul",
            "code",
            "span",
            "div",
            "class",
            "pre",
            "h1",
            "h2",
            "h3",
            "h4",
            "h5",
            "h6",
        ],
        "WHITELIST_ATTRS": [
            "href",
            "src",
            "alt",
            "class",
        ],
        "WHITELIST_PROTOCOLS": [
            "http",
            "https",
        ],
    }
}
