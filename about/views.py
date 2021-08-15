from django.shortcuts import render
from about.models import About
from django.core.paginator import EmptyPage, PageNotAnInteger


def member(request):
    """
    Display About page

    **Context**

    ``about``
        An instance of :model:`about.member`

    **Template**

    :template:`pages/about.html`

    """
    member_details = About.objects.order_by(
        '-list_date').filter(is_published=True)
    context = {
        'member_details': member_details
    }

    return render(request, 'pages/about.html', context)

# Create your views here.
