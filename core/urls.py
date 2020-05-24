from django.contrib import admin
from django.urls import path
from snippets import views

urlpatterns = [
    path('snippets/', views.SnippetList.as_view()),
    path('admin/', admin.site.urls),
]
