from django import template

from urllib import parse
import re

from products.models import Sale

register = template.Library()


@register.filter
def is_active_category(current_category, category_item):
    if current_category and category_item:
        if category_item.id == current_category.id:
            return True
        elif current_category.parent and current_category.parent.id == category_item.id:
            return True

@register.filter
def parse_url(request, page_numb):
    page_numb = str(page_numb)
    absolute_path = request.build_absolute_uri()
    parsed = parse.urlparse(absolute_path)
    query = parsed.query
    if query.__contains__('page'):
        query = re.sub(r'(?<=page=)\d+', page_numb, query)
    else:
        if len(query)>1:
            query = query + '&page=' + page_numb
        else:
            query = query + 'page=' + page_numb
    return query


@register.filter
def get_sale_price(price):
    sale = Sale.objects.first()
    sale_price = price - (price * sale.percent / 100)
    return sale_price
