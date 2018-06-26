from django.db import models
from django.utils.translation import gettext_lazy as _
from django.core.urlresolvers import reverse_lazy

from parler.models import TranslatableModel, TranslatedFields
from parler.managers import TranslationManager
from ckeditor_uploader.fields import RichTextUploadingField
from filer.fields.image import FilerImageField
from mptt.models import MPTTModel, TreeForeignKey


class Menu(MPTTModel, TranslatableModel):
    parent = TreeForeignKey('self', null=True, blank=True,)
    translations = TranslatedFields(
        name=models.CharField(max_length=60, verbose_name=_('Name')),
        slug=models.SlugField(max_length=60, verbose_name=_('Slug')),
    )
    order = models.IntegerField(default=0, verbose_name=_('Order'))
    objects = TranslationManager()

    class MPTTMeta:
        level_attr = 'mptt_level'

    def get_slug_list(self):
        try:
            ancestors = self.get_ancestors(include_self=self)
        except:
            ancestors = []
        else:
            ancestors = [i.slug for i in ancestors]
        slugs = []
        for i in range(len(ancestors)):
            slugs.append('/'.join(ancestors[i + 1]))
        return slugs

    def __str__(self):
        return "{}".format(self.safe_translation_getter('name'))


class Banner(TranslatableModel):
    translations = TranslatedFields(
        name=models.CharField(max_length=60, verbose_name=_('Name')),
        slug=models.SlugField(max_length=60, verbose_name=_('Slug')),
    )
    banner = FilerImageField(null=True, related_name='banner')
    order = models.IntegerField(default=0, verbose_name=_('Order'))
    objects = TranslationManager()

    def __str__(self):
        return "{}".format(self.safe_translation_getter('name'))


class Static(TranslatableModel):
    translations = TranslatedFields(
        name=models.CharField(max_length=60, verbose_name=_('Name')),
        slug=models.SlugField(max_length=60, verbose_name=_('Slug'), unique=True),
        body=RichTextUploadingField()
    )
    image = FilerImageField(null=True, blank=True)
    objects = TranslationManager()

    def __str__(self):
        return "{}".format(self.safe_translation_getter('name'))


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
        return reverse_lazy('main:news_detail', args=[self.safe_translation_getter('slug')])


class Contact(models.Model):
    first_name = models.CharField(max_length=60)
    last_name = models.CharField(max_length=60, null=True, blank=True)
    email = models.EmailField()
    subject = models.CharField(max_length=120)
    text = models.TextField()
    created_at = models.DateTimeField(auto_now_add=True)