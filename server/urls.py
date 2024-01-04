from django.urls import re_path
from django.contrib import admin
from django.urls import path

from . import views

urlpatterns = [
    re_path('signup', views.signup),
    re_path('login', views.login),
    re_path('test_token', views.test_token),
    re_path('chat', views.chat),
    path('admin/', admin.site.urls, {'login_url': '/login/?next=/'}),

]
