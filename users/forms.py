from django import forms
from django.contrib.auth import get_user_model
from django.utils.translation import ugettext as _

from filer.models import Image


from users.models import Customer

User = get_user_model()


class RegisterUserForm(forms.ModelForm):
    phone = forms.CharField(max_length=9, widget=forms.TextInput(attrs={"pattern": "[0-9]{9}"}))
    avatar = forms.ImageField(required=False)
    address = forms.CharField(widget=forms.Textarea(), max_length=120)
    password = forms.CharField(widget=forms.PasswordInput(), label='Password')
    confirm_password = forms.CharField(widget=forms.PasswordInput(), label='Confirm password')

    class Meta:
        model = User
        fields = ['phone', 'first_name', 'last_name', 'avatar', ]
        exclude = ['image']

    def clean(self):
        cleaned_data = super().clean()

        if cleaned_data.get('password') != cleaned_data.get('confirm_password'):
            self.add_error('confirm_password', _('Passwords not match'))
        return cleaned_data

    def save(self, commit=True):
        cleaned_data = self.cleaned_data
        instance = super().save(commit=False)
        instance.set_password(self.cleaned_data.get('password'))
        instance.save()
        client = Customer(user=instance)
        address = cleaned_data.get('address')
        if address:
            client.address = address
        avatar = cleaned_data.get('avatar')
        if avatar:
            file = Image(file=avatar, owner=instance, name=avatar.name, original_filename=avatar.name)
            file.save()
            instance.image = file
        client.save()
        instance.save()

        return instance