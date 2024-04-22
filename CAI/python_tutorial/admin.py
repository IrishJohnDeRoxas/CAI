from django.contrib import admin
from .models import Lesson, Questionnaire, Activity, Content, UploadImage

# Register your models here.

# TODO Make python editor for the admin page
# TODO Finish adding data to the admin page

class QuestionnaireInline(admin.StackedInline):
    model = Questionnaire
    extra = 1
    
class ActivityInline(admin.StackedInline):
    model = Activity
    extra = 1
    
class ContentInline(admin.StackedInline):
    model = Content
    extra = 1


class LessonAdmin(admin.ModelAdmin):
    fieldsets = [
        ('Lesson',
         {'fields': [
             'topic',]}),
    ]

    inlines = [ContentInline, QuestionnaireInline, ActivityInline, ]
    

admin.site.register(Lesson,LessonAdmin)
admin.site.register(UploadImage)
