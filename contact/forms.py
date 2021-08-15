from django import forms


class Nameform(forms.Form):
    full_name = forms.CharField(label='Name', max_length=100)
    email = forms.CharField(label='Email Address', max_length=100)
    phone = forms.CharField(label='Phone Number', max_length=14)
    message = forms.CharField(label='message', max_length=800)
