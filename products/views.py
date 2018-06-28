from django.views.generic import ListView, DetailView, TemplateView
from django.views.generic.edit import ProcessFormView
from django.utils.translation import ugettext as _
from django.shortcuts import Http404
from django.db.models import Q, F
import django_filters

from products.models import Product, Category, Sale
from products.forms import LeaveReviewForm


class ProductFilter(django_filters.FilterSet):
    SORTING_RULES = {
        'price_asc': 'variations__price',
        'price_desc': '-variations__price',
        'a_z': 'name',
        'z_a': '-name',
        'new_first': '-pk',
        'old_first': 'pk'
    }

    order_by_field = 'order_by'
    min = django_filters.NumberFilter(field_name='variations__price', lookup_expr='gte', )
    max = django_filters.NumberFilter(field_name='variations__price', lookup_expr='lte', )
    is_recommended = django_filters.NumberFilter()

    class Meta:
        model = Product
        fields = ['min', 'max', 'brand', 'is_recommended']

    order_by = django_filters.OrderingFilter(
        choices=(
            ('a_z', _('Title a-z')),
            ('z_a', _('Title z-a')),
            ('new_first', _('New products first')),
            ('old_first', _('Old products first')),
        ),
    )

    @property
    def qs(self):
        _qs = super(ProductFilter, self).qs
        if self.request.GET.get('order_by', None):
            order_by = self.request.GET.get('order_by')
            ordering_rule = self.SORTING_RULES.get(order_by)
            _qs = _qs.order_by(ordering_rule)

        if self.request.GET.get('is_recommended', False):
            is_recommended = self.request.GET.get('is_recommended')
            _qs = _qs.filter(is_recommended=is_recommended)

        if self.request.GET.get('brand', None):
            brand = self.request.GET.get('brand')
            _qs = _qs.filter(brand=brand)
        return _qs


class ProductListView(ListView):
    template_name = 'pages/product/product_list.html'
    model = Product
    paginate_by = 12

    def get_category(self):
        try:
            category = Category.objects.get(translations__slug=self.kwargs.get('slug'))
        except Category.DoesNotExist:
            print('not found')
            raise Http404
        return category

    def get_queryset(self):
        queryset = self.model.objects.all()
        if self.kwargs.get('slug'):
            category = self.get_category()
            queryset = queryset.filter(category__in=[cat_item.id for cat_item in category.get_family()])
        if self.request.GET.get('order_by'):
            queryset = queryset.order_by(ProductFilter.SORTING_RULES.get(self.request.GET.get('order_by'))).distinct()
        return queryset.exclude(is_sale=True)

    def get_context_data(self, **kwargs):
        context = super(ProductListView, self).get_context_data(**kwargs)
        context['category_list'] = Category.objects.filter(parent__isnull=True)
        slug = self.kwargs.get('slug')
        if slug:
            context['current_category'] = self.get_category()
        if Sale.objects.exists():
            context['sale_percent'] = Sale.objects.first()
            context['sale_products'] = Product.objects.filter(is_sale=True)
        return context


class ProductDetail(DetailView, ProcessFormView):
    template_name = 'pages/product/product_detail.html'
    model = Product
    context_object_name = 'product'
    slug_url_kwarg = 'product_slug'

    def get_context_data(self, **kwargs):
        context = super().get_context_data(**kwargs)
        context['review_form'] = LeaveReviewForm()
        context['similar_products'] = self.model.objects.filter(category=self.object.category).exclude(pk=self.object.pk)
        return context

    def post(self, request, *args, **kwargs):
        self.object = self.model.objects.get(pk=kwargs.get('pk'))
        context = self.get_context_data(**kwargs)

        review = LeaveReviewForm(data=request.POST)
        if review.is_valid():
            review_instance = review.save(commit=False)
            review_instance.product = self.object
            review_instance.save()
        else:
            context['review_form'] = review
        return self.render_to_response(context=context)


class SearchView(ListView):
    template_name = 'pages/search.html'
    model = Product
    paginate_by = 10

    def get_queryset(self):
        qs = super().get_queryset()
        query_string = self.request.GET.get('q', None)
        if query_string:
            lower_case_string = query_string.lower()
            query = Q(name__contains=query_string) | Q(category__translations__name__contains=query_string) | Q(description__contains=query_string) | Q(name__contains=lower_case_string) | Q(category__translations__name__contains=lower_case_string) | Q(description__contains=lower_case_string)
            qs = qs.filter(query)
        else:
            qs = list()
        return qs
