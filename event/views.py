from django.shortcuts import get_object_or_404, render
from .models import Event

# Create your views here.


def getEvent(request):
    """
    Display event page

    **Context**

    ``events``
        An instance of :model:`event.Event`

    **Template**

    :template:`pages/event.html`

    """
    events = Event.objects.order_by('-event_date')
    context = {
        'events': events
    }

    return render(request, 'pages/event.html', context)


def getEventDetail(request, event_id):
    """
    Displays an event detail page

    **Context**

    ``eventDetails``
        An instance of :model:`event.Event`

    **Template**

    :template:`pages/eventDetail.html`

    """
    eventDetails = get_object_or_404(Event, pk=event_id)
    context = {
        'eventDetails': eventDetails,
    }
    return render(request, 'pages/eventDetail.html', context)
