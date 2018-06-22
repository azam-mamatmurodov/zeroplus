from django.views import generic
from django.shortcuts import reverse
from django.contrib.auth.views import LoginView as DjangoLoginView

from users.forms import RegisterUserForm


class LoginView(DjangoLoginView):
    template_name = 'pages/accounts/login.html'

    def get_success_url(self):
        return reverse('main:home')


class RegisterView(generic.FormView):
    template_name = 'pages/accounts/register.html'
    form_class = RegisterUserForm

    def get_success_url(self):
        pass

    def form_valid(self, form):
        form.save(commit=False)
        return super().form_valid(form)


class ProfileViews(generic.TemplateView):
    template_name = 'pages/accounts/profile_user.html'

    def get_template_names(self):
        if self.request.user.is_merchant():
            self.template_name = 'pages/accounts/profile_merchant.html'
        return self.template_name
