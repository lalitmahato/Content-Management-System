from django.shortcuts import render
from gallery.models import Gallery


def gallery(request):
    """
    Display Gallery page

    **Context**

    ``gallery``
        An instance of :model:`gallery.Gallery`

    **Template**

    :template:`pages/galleries.html`

    """
    Galleries = Gallery.objects.all()
    context = {
        'Galleries': Galleries
    }

    return render(request, 'pages/galleries.html', context)
