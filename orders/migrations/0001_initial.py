# -*- coding: utf-8 -*-
# Generated by Django 1.11.13 on 2018-06-22 21:52
from __future__ import unicode_literals

from django.db import migrations, models


class Migration(migrations.Migration):

    initial = True

    dependencies = [
    ]

    operations = [
        migrations.CreateModel(
            name='Cart',
            fields=[
                ('id', models.AutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('session_key', models.CharField(max_length=255)),
                ('count', models.IntegerField()),
                ('status', models.BooleanField(default=True)),
                ('total_price', models.DecimalField(decimal_places=2, max_digits=10)),
            ],
            options={
                'verbose_name': 'Cart item',
                'verbose_name_plural': 'Cart items',
            },
        ),
        migrations.CreateModel(
            name='Order',
            fields=[
                ('id', models.AutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('client_name', models.CharField(default='', max_length=60, verbose_name='Client name')),
                ('phone', models.CharField(max_length=12, verbose_name='Phone number')),
                ('shipping_address', models.TextField(verbose_name='Shipping address')),
                ('total_price', models.DecimalField(blank=True, decimal_places=2, max_digits=10, null=True)),
                ('created', models.DateTimeField(auto_now_add=True)),
                ('state', models.IntegerField(blank=True, choices=[(0, 'Available'), (1, 'Awaiting Payment'), (2, 'Payment completed'), (3, 'Cancelled'), (4, 'Delivered')], default=0)),
                ('order_unique_id', models.CharField(blank=True, editable=False, max_length=120, null=True, unique=True, verbose_name='Order Id')),
                ('products', models.TextField(blank=True, null=True)),
            ],
        ),
    ]
