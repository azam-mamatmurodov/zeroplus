from django import forms

from products.models import Review


class LeaveReviewForm(forms.ModelForm):
    class Meta:
        model = Review
        exclude = ['user', 'is_approved', 'created_at', 'product', ]
