from django.http import HttpResponse
from django.shortcuts import redirect, render
from django.core.mail import send_mail
from .models import Contact
from django.contrib.auth.models import User
from django.contrib import messages


def index(request):
    """
    Display contact page

    **Context**

    ``contact``
        An instance of :model:`contact.index`

    **Template**

    :template:`pages/contact.html`

    """
    if request.method == 'POST':
        name = request.POST.get('full_name')
        email = request.POST.get('email')
        number = request.POST.get('number')
        message = request.POST.get('message')
        # num = int(number)
        try:
            if name == '' or email == '' or message == '' or number == '':
                messages.error(
                    request, 'Some of the Field is Empty please check the field before you submit')
                return redirect('contact')
            elif len(number) < 10 or len(number) > 10:
                messages.error(
                    request, 'Phone Number should be 10 Digit Number')
                return redirect('contact')
            else:
                try:
                    num = int(number)
                    user = Contact.objects.create(
                        full_name=name, email=email, phone=number, message=message)
                    messages.success(
                        request, 'Thank you for give your time to share your information')
                    user.save()
                    return redirect('contact')
                except:
                    messages.error(
                        request, 'Phone Number should be 10 Digit Number or the number pattern is not correct')
                    return redirect('contact')
        except (number.DoesNotexit) as e :
            messages.error(
                    request, 'Something went wrong')
            return redirect('contact')
    else:
        return render(request, 'pages/contact.html')
