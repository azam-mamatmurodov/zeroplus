from django.template.loader import render_to_string
from django.shortcuts import reverse
from django.utils.translation import ugettext as _
from django.utils.timezone import now

from main.models import Menu, Banner, Static
from products.models import Category, Product


def get_breadcrumbs(request, *args, **kwargs):
    view_name = request.resolver_match.view_name
    kwargs = request.resolver_match.kwargs
    page_title = _('Home page')
    paths = list()
    paths.append({
        'title': page_title,
        'path': reverse('main:home')
    })
    if view_name == 'users:profile':
        page_title = _('Account Settings')
        paths.append({
            'title': _('Account Settings'),
            'path': reverse(view_name)
        })
    if view_name == 'main:contact':
        page_title = _('Contact us')
        paths.append({
            'title': page_title,
            'path': reverse(view_name)
        })
    elif view_name == 'products:product_all':
        page_title = _('All products')
        paths.append({
            'title': page_title,
            'path': reverse(view_name, ),
        })
    elif view_name == 'products:product_list':
        slug = kwargs.get('slug')
        paths.append({
            'title': _('All products'),
            'path': reverse('products:product_all', ),
        })
        if slug:
            category = Category.objects.get(translations__slug=slug)
            page_title = category.name
            family_items = category.get_ancestors()
            for index, family_item in enumerate(family_items):
                paths.append({
                    'title': family_item.name,
                    'path': reverse(view_name, args=[family_item.slug])
                })
            paths.append({
                'title': category.name,
                'path': reverse(view_name, args=[category.slug])
            })
    elif view_name == 'main:static':
        arg = kwargs.get('slug')
        static_content = Static.objects.get(translations__slug=arg)
        page_title = static_content.name
        paths.append({
            'title': page_title,
            'path': reverse(view_name, args=[arg]),
        })
    elif view_name == 'orders:cart':
        page_title = _('Cart')
        paths.append({
            'title': page_title,
            'path': reverse(view_name),
        })
    elif view_name == 'orders:order_detail':
        paths.append({
            'title': _('Cart'),
            'path': reverse('orders:cart'),
        })
        page_title = _('Order info')
        paths.append({
            'title': page_title,
            'path': reverse(view_name, args=[kwargs.get('phone'), kwargs.get('order_unique_id')]),
        })
    elif view_name == 'products:product_detail':
        slug = kwargs.get('slug')
        category = Category.objects.get(translations__slug=slug)
        category_view_name = 'products:product_list'

        product_slug = kwargs.get('product_slug')
        product = Product.objects.get(slug=product_slug)

        paths.append({
            'title': _('All products'),
            'path': reverse('products:product_all', ),
        })

        family_items = category.get_ancestors()
        for index, family_item in enumerate(family_items):
            paths.append({
                'title': family_item.name,
                'path': reverse(category_view_name, args=[family_item.slug])
            })
        paths.append({
            'title': category.name,
            'path': reverse(category_view_name, args=[category.slug])
        })
        page_title = product.name
        paths.append({
            'title': product.name,
            'path': reverse(view_name, args=[slug, product_slug, ]),
        })
    elif view_name == 'products:search':
        paths.append({
            'title': _('Search'),
            'path': reverse(view_name,),
        })
    return render_to_string('parts/breadcrumbs.html', {'paths': paths, 'page_title': page_title})


def get_header(request):
    context = dict()
    context['menu_items'] = Menu.objects.order_by('order')
    context['categories'] = Category.objects.filter(parent__isnull=True   )
    context['request'] = request
    return render_to_string('parts/header.html', context=context)


def get_banner(request):
    context = dict()
    context['banner_items'] = Banner.objects.all()
    context['request'] = request
    return render_to_string('parts/banner.html', context=context)


def get_footer(request):
    context = dict()
    context['request'] = request
    context['menu_items'] = Menu.objects.order_by('order')
    context['now'] = now()
    return render_to_string('parts/footer.html', context=context)


def defaults(request, *args, **kwargs):
    breadcrumbs = get_breadcrumbs(request, *args, **kwargs)
    header = get_header(request)
    banner = get_banner(request)
    footer = get_footer(request)
    site_name = 'Zeroplus.uz'
    return locals()
