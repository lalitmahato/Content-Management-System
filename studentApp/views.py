from datetime import date
from django.shortcuts import get_object_or_404, render, redirect
from django.contrib.auth.forms import UserCreationForm
from django.contrib import messages
from django.contrib.auth.hashers import make_password
from . models import Student, Module, Course

# Create your views here.


def studentLogin(request):
    """
    Display a student login page

    **Context**

    ``student_details``
        An instance of :model:`studentApp.Student`

    ``modules``
        An instance of :model:`studentApp.Module`

    **Template**

    :template:`pages/login.html`

    :template:`pages/studentPanel.html`

    """
    if request.method == 'POST':
        some_salt = 'some_salt'
        email = request.POST['email'].strip()
        password = request.POST['password'].strip()
        hashed_password = make_password(password, some_salt)
        
        if email == "" or password == "":
            messages.error(
                request, 'Email or Password field is empty! Please provide necessary credentials')
            return redirect('login')

        try:
            student_details = Student.objects.get(
                student_email=email, student_password=hashed_password)

            modules = Module.objects.filter(
                course_name=student_details.student_course, level=student_details.student_level)

        except (Student.DoesNotExist) as e:
            student_details = None

        if student_details:
            current_date = date.today()
            context = {
                'student_details': student_details,
                'modules': list(modules),
                'currentYear': current_date.year
            }

            return render(request, 'pages/studentPanel.html', context)
        else:
            messages.error(
                request, 'User with provided email and password does not exist! Please try again')
            return redirect('login')
    else:
        return render(request, 'pages/login.html')


def getChangePassword(request):
    """
    Display a student change password page

    **Context**

    ``student_details``
        An instance of :model:`studentApp.Student`

    **Template**

    :template:`pages/changePassword.html`

    """
    if request.method == 'POST':
        some_salt = 'some_salt'
        email = request.POST['email'].strip()
        password = request.POST['currentPassword'].strip()
        newPassword = request.POST['newPassword'].strip()

        if email == '' or password == '' or newPassword == '':
            messages.error(
                request, 'Email, Password or New Password field is empty! Please provide necessary credentials')
            return redirect('changePassword')


        hashed_password = make_password(password, some_salt)
        hashed_newPassword = make_password(newPassword, some_salt)

        try:
            student_details = Student.objects.get(
                student_email=email, student_password=hashed_password)

        except (Student.DoesNotExist) as e:
            student_details = None

        if student_details:
            Student.objects.filter(student_email=email).update(
                student_password=hashed_newPassword)
            return redirect('login')
        else:
            messages.error(
                request, 'User with provided email and password does not exist! Please try again')
            return redirect('changePassword')
    else:
        return render(request, 'pages/changePassword.html')
