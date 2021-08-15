from studentApp.models import Course

def courses_context_processor(request):
    """
        Context processor for courses
        Gets all the course object and makes it globally available in templates
    """
    courses = Course.objects.all()

    context = {
        "courses": courses
    }

    return context