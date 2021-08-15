from django.shortcuts import render, get_object_or_404
from django.http import HttpResponse
from .models import heroslides, why_with_us, review
from studentApp.models import Course
from indexblog.models import Blog
from event.models import Event


def Courses(request, course_id):
    """
        Display course detail page

        **Context**

        ``course``
            An instance of :model:`studentApp.Course`

        **Templates**
        :template:`pages/courses.html`
    """
    course = get_object_or_404(Course, pk=course_id)

    context = {
        'course': course,
    }

    return render(request, 'pages/courses.html', context)


def index(request):
    """
    Display home page

    **Context**

    ``courses``
        An instance of :model:`studentApp.Course`

    ``heroSlidesList``
        An instance of :model:`pages.heroslides`

    ``whyWithUs``
        An instance of :model:`pages.why_with_us`

    ``reviews``
        An instance of :model:`pages.review`

    ``blogs``
        An instance of :model:`indexblog.Blog`

    ``events``
        An instance of :model:`event.Event`

    **Template**

    :template:`pages/index.html`

    """
    courses = list(Course.objects.all())
    heroSlidesList = list(heroslides.objects.all())
    whyWithUs = list(why_with_us.objects.all().filter(is_published=True))
    reviews = list(review.objects.all().filter(is_published=True))
    blogs = list(Blog.objects.all().filter(is_published=True))[:4]
    events = list(Event.objects.all())

    if len(events) > 4:
        events = events[:4]

    context = {
        "courses": courses,
        "heroslidesList": heroSlidesList,
        "whyWithUs": whyWithUs,
        "reviews": reviews,
        "blogs": blogs,
        "events": events
    }
    return render(request, 'pages/index.html', context)
