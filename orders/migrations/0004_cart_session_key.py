# -*- coding: utf-8 -*-
# Generated by Django 1.11.13 on 2018-06-25 12:12
from __future__ import unicode_literals

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('orders', '0003_auto_20180625_1710'),
    ]

    operations = [
        migrations.AddField(
            model_name='cart',
            name='session_key',
            field=models.CharField(max_length=255, null=True),
        ),
    ]
