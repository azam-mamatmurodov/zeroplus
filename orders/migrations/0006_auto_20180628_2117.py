# -*- coding: utf-8 -*-
# Generated by Django 1.11.13 on 2018-06-28 16:17
from __future__ import unicode_literals

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('orders', '0005_auto_20180626_1658'),
    ]

    operations = [
        migrations.AlterModelOptions(
            name='cart',
            options={'verbose_name': 'Корзина товара', 'verbose_name_plural': 'Элементы корзины'},
        ),
        migrations.AlterField(
            model_name='order',
            name='client_name',
            field=models.CharField(default='', max_length=60, verbose_name='Имя клиента'),
        ),
        migrations.AlterField(
            model_name='order',
            name='order_unique_id',
            field=models.CharField(blank=True, editable=False, max_length=120, null=True, unique=True, verbose_name='Номер заказа'),
        ),
        migrations.AlterField(
            model_name='order',
            name='phone',
            field=models.CharField(max_length=12, verbose_name='Номер телефона'),
        ),
        migrations.AlterField(
            model_name='order',
            name='shipping_address',
            field=models.TextField(verbose_name='Адрес доставки'),
        ),
        migrations.AlterField(
            model_name='order',
            name='state',
            field=models.IntegerField(blank=True, choices=[(0, 'Доступный'), (1, 'Ожидание оплаты'), (2, 'Оплата завершена'), (3, 'Отменен'), (4, 'Доставлен')], default=0),
        ),
    ]
