from django import template

register = template.Library()


@register.filter
def remove_space_and_ellipsis(value):
    if value.endswith(" ..."):
        value = value[:-4]
    return value
