from django.views.generic import TemplateView, DetailView, ListView

from main.models import Static, Banner, News
from products.models import Category, Product

from parler.views import ViewUrlMixin, TranslatableSlugMixin


class HomeView(TemplateView):
    template_name = 'pages/main.html'

    def get_context_data(self, **kwargs):
        context = super(HomeView, self).get_context_data(**kwargs)
        context['categories'] = Category.objects.filter(parent__isnull=True).order_by('order')
        context['banners'] = Banner.objects.all().order_by('order')
        context['top_products'] = Product.objects.all()
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
