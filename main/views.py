from django.views.generic import TemplateView, DetailView, ListView, CreateView
from django.shortcuts import reverse

from main.models import Static, Banner, News, Contact
from products.models import Category, Product

from parler.views import ViewUrlMixin, TranslatableSlugMixin


class HomeView(TemplateView):
    template_name = 'pages/main.html'

    def get_context_data(self, **kwargs):
        context = super(HomeView, self).get_context_data(**kwargs)
        context['categories'] = Category.objects.filter(parent__isnull=True).order_by('order')
        context['banners'] = Banner.objects.all().order_by('order')
        context['top_products'] = Product.objects.filter(is_recommended=True)
        return context


class StaticView(DetailView):
    model = Static
    template_name = 'pages/static.html'

    def get_object(self, queryset=None):
        return self.model.objects.all().translated(slug=self.kwargs.get('slug')).first()


class NewsListView(ListView):
    model = News
    template_name = 'pages/news.html'
    context_object_name = 'news'


class NewsDetailView(TranslatableSlugMixin, DetailView):
    model = News
    template_name = 'pages/news_detail.html'


class ContactView(CreateView):
    template_name = 'pages/contact.html'
    model = Contact
    fields = ['first_name', 'last_name', 'email', 'subject', 'text']

    def get_success_url(self):
        return reverse('main:contact')
