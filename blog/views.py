from django.contrib.postgres.search import SearchVector, SearchQuery, SearchRank
from django.http import HttpResponseRedirect
from django.shortcuts import render, get_object_or_404
from django.core.paginator import Paginator
from django.contrib import messages
from taggit.models import Tag
from blog.forms import PostForm
from blog.models import Post


per_page = 10
count = 0


def post_list(request):
    query = request.GET.get('query')
    context = {
        "title": "Updated Python and Django blog posts to upskill your web development knowledge and skills in"}
    posts = Post.objects.all().filter(is_published=1)
    search_vector = SearchVector("title", "content")
    search_query = SearchQuery(query)
    if query:
        context = {"query": query.strip() or None}
        posts = posts.annotate(search=search_vector, rank=SearchRank(
            search_vector, search_query)).filter(search=query).order_by("-rank")

    paginator = Paginator(posts, per_page)
    page_number = request.GET.get('page')
    page_obj = paginator.get_page(page_number)
    context["page_obj"] = page_obj
    context["count"] = len(list(posts))

    return render(request, 'blog/index.html', context)


def post_list_tag_filter(request, tag_slug=None):
    posts = Post.objects.all().filter(is_published=1)
    context = {
        "title": "Updated Python and Django blog posts to upskill your web development knowledge and skills in"}

    if tag_slug:
        tag = get_object_or_404(Tag, slug=tag_slug)
        posts = posts.filter(tags__in=[tag])
        paginator = Paginator(posts, per_page)
        page_number = request.GET.get('page')
        page_obj = paginator.get_page(page_number)
        count = len(list(posts))
        context["tag"] = tag
        context["title"] = f"Learn from this curated list of {tag} blogs to upskill your web development knowledge and skills in "
        context["count"] = count
    if posts:
        context["posts"] = posts
        context["page_obj"] = page_obj
    else:
        context["page_obj"] = ''

    return render(request, 'blog/index.html', context)


def blog_detail(request, slug):
    blog = Post.objects.get(slug=slug)
    context = {
        "title": f"{blog.title} -",
        "blog": blog
    }
    return render(request, 'blog/blog-detail.html', context)


def about(request):
    text = '''My name is David Kibui, a Full Stack web engineer from in Nairobi, Kenya. This is my blog where I share my knowledge and skills with the world. My tech stack is Python(Django), JavaScript(Express and Svelte), Postgres and MongoDb
    '''
    context = {"title": f'{text} -'}
    return render(request, 'blog/about.html', context)
