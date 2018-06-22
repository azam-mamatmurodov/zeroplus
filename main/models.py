from django.db import models
from django.utils.translation import gettext_lazy as _
from django.core.urlresolvers import reverse_lazy

from parler.models import TranslatableModel, TranslatedFields
from parler.managers import TranslationManager
from ckeditor_uploader.fields import RichTextUploadingField
from filer.fields.image import FilerImageField


class Menu(TranslatableModel):
    translations = TranslatedFields(
        name=models.CharField(max_length=60, verbose_name=_('Name')),
        slug=models.SlugField(max_length=60, verbose_name=_('Slug')),
    )

    order = models.IntegerField(default=0, verbose_name=_('Order'))
    objects = TranslationManager()

    def __str__(self):
        return "{}".format(self.name)


class Banner(TranslatableModel):
    translations = TranslatedFields(
        name=models.CharField(max_length=60, verbose_name=_('Name')),
        slug=models.SlugField(max_length=60, verbose_name=_('Slug')),
    )
    banner = FilerImageField(null=True, related_name='banner')
    order = models.IntegerField(default=0, verbose_name=_('Order'))
    objects = TranslationManager()

    def __str__(self):
        return "{}".format(self.name)


class Static(TranslatableModel):
    translations = TranslatedFields(
        name=models.CharField(max_length=60, verbose_name=_('Name')),
        slug=models.SlugField(max_length=60, verbose_name=_('Slug'), unique=True),
        body=RichTextUploadingField()
    )
    image = FilerImageField(null=True)
    created_at = models.DateTimeField()
    objects = TranslationManager()

    def __str__(self):
        return "{}".format(self.name)


class News(TranslatableModel):
    translations = TranslatedFields(
        name=models.CharField(max_length=60, verbose_name=_('Name')),
        slug=models.SlugField(max_length=60, verbose_name=_('Slug'), unique=True),
        body=RichTextUploadingField()
    )
    image = FilerImageField(null=True)
    published_at = models.DateTimeField()
    objects = TranslationManager()

    class Meta:
        verbose_name = _('News')
        verbose_name_plural = _('News')

    def get_absolute_url(self):
        return reverse_lazy('main:news_detail', args=[self.slug])