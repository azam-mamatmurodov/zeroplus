from django.views.generic import TemplateView, DetailView, CreateView
from django.shortcuts import reverse

from main.models import Static, Banner, Contact
from products.models import Category, Product, Sale


class HomeView(TemplateView):
    template_name = 'pages/main.html'

    def get_context_data(self, **kwargs):
        context = super(HomeView, self).get_context_data(**kwargs)
        context['categories'] = Category.objects.filter(parent__isnull=True).order_by('order')
        context['banners'] = Banner.objects.all().order_by('order')
        context['top_products'] = Product.objects.filter(is_recommended=True)
        context['sale_products'] = Product.objects.filter(is_sale=True)
        if Sale.objects.exists():
            context['sale_percent'] = Sale.objects.first()
        return context


class StaticView(DetailView):
    model = Static
    template_name = 'pages/static.html'

    def get_object(self, queryset=None):
        return self.model.objects.all().translated(slug=self.kwargs.get('slug')).first()


class ContactView(CreateView):
    template_name = 'pages/contact.html'
    model = Contact
    fields = ['first_name', 'last_name', 'email', 'subject', 'text']

    def get_success_url(self):
        return reverse('main:contact')
