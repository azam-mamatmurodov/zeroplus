from django.db import models
from django.contrib.auth.models import AbstractUser, PermissionsMixin, BaseUserManager
from django.utils.translation import gettext_lazy as _
from django.conf import settings

from mptt.models import MPTTModel
from filer.fields.image import FilerImageField


class UserManager(BaseUserManager):
    """Define a model manager for User model with no username field."""

    use_in_migrations = True

    def _create_user(self, username, password, **extra_fields):
        """Create and save a User with the given phone and password."""
        if not username:
            raise ValueError('The given phone must be set')
        user = self.model(username=username, **extra_fields)
        user.set_password(password)
        user.save(using=self._db)
        return user

    def create_user(self, username, password=None, **extra_fields):
        """Create and save a regular User with the given phone and password."""
        extra_fields.setdefault('is_staff', False)
        extra_fields.setdefault('is_superuser', False)
        return self._create_user(username, password, **extra_fields)

    def create_superuser(self, username, password, **extra_fields):
        """Create and save a SuperUser with the given phone and password."""
        extra_fields.setdefault('is_staff', True)
        extra_fields.setdefault('is_superuser', True)

        if extra_fields.get('is_staff') is not True:
            raise ValueError('Superuser must have is_staff=True.')
        if extra_fields.get('is_superuser') is not True:
            raise ValueError('Superuser must have is_superuser=True.')

        return self._create_user(username, password, **extra_fields)


class User(AbstractUser):

    username = models.CharField(
        _('username'),
        max_length=150,
        unique=True,
        help_text=_('Required. 150 characters or fewer. Letters, digits and @/./+/-/_ only.'),
        validators=[AbstractUser.username_validator],
        error_messages={
            'unique': _("User with that username already exists."),
        },
    )
    phone = models.CharField(max_length=12, unique=True, verbose_name=_('Phone number or Username'))
    first_name = models.CharField(max_length=30, blank=True, verbose_name=_('First name'))
    last_name = models.CharField(max_length=30, blank=True, verbose_name=_('Last name'))
    date_joined = models.DateTimeField(auto_now_add=True, verbose_name=_('Date joined'),)
    is_active = models.BooleanField(default=True, verbose_name=_('Active'),)
    image = FilerImageField(null=True, blank=True, verbose_name=_('Avatar'), )

    EMAIL_FIELD = 'email'
    USERNAME_FIELD = 'username'
    REQUIRED_FIELDS = ['email', ]
    objects = UserManager()

    class Meta:
        verbose_name = _('User')
        verbose_name_plural = _('Users')

    def __str__(self):
        return self.first_name if self.first_name else self.phone

    def is_customer(self):
        return True if Customer.objects.filter(user=self) else False


class Customer(models.Model):
    user = models.OneToOneField(settings.AUTH_USER_MODEL, related_name='customer', verbose_name=_('Customer'))
    address = models.TextField(blank=True, null=True, verbose_name=_('Customer address'))

    def __str__(self):
        return "{}".format(self.user.username)


class Partners(models.Model):
    title = models.CharField(max_length=60)
    logo = FilerImageField()
    link = models.CharField(max_length=60)

    def __str__(self):
        return self.title

    class Meta:
        verbose_name = _('Partner')
        verbose_name_plural = _('Partners')