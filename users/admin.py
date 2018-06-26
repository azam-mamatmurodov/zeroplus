# -*- coding: utf-8 -*-
from __future__ import unicode_literals

from django.contrib import admin
from django.contrib.auth.admin import UserAdmin as DjangoUserAdmin
from django.utils.translation import ugettext_lazy as _
from django.contrib.auth.models import Group

from users.models import Customer

from .models import User


@admin.register(User)
class UserAdmin(DjangoUserAdmin, admin.ModelAdmin):
    fieldsets = (
        (None, {'fields': ('email', 'password')}),
        (_('Personal info'), {'fields': ('first_name', 'last_name', 'image',  'username',)}),
        (_('Permissions'), {'fields': ('is_active', 'is_staff', 'is_superuser',
                                       'groups', 'user_permissions')}),
        (_('Important dates'), {'fields': ('last_login',)}),
    )
    add_fieldsets = (
        (None, {
            'classes': ('wide',),
            'fields': ('email', 'password1', 'password2', 'username', 'first_name', 'last_name', ),
        }),
    )
    list_display = ('get_username', 'get_fullname', 'is_staff', )
    search_fields = ('email', 'first_name', 'last_name', 'username',)
    ordering = ('email',)

    def get_username(self, obj):
        return obj.username

    def get_fullname(self, obj):
        return "{} {}".format(obj.first_name, obj.last_name)


class CustomerAdmin(admin.ModelAdmin):
    list_display = ['user']


admin.site.register(Customer, CustomerAdmin)

# Unregistered
admin.site.unregister(Group)