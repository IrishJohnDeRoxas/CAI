from django.shortcuts import render, get_object_or_404
import json
from .models import Lesson, Content, Activity, Questionnaire

def index(request):
    lessons = Lesson.objects.all()
    context={
        'lessons': lessons
    }
    return render(request, 'python_tutorial/index.html', context)

def lesson(request, topic: str):
    lessons = Lesson.objects.all()
    current_lesson = get_object_or_404(Lesson, topic=topic)
    contents = Content.objects.filter(topic=current_lesson.pk)
    activities = Activity.objects.filter(topic=current_lesson.pk)
    questions = Questionnaire.objects.filter(topic=current_lesson.pk)
    context={
        'lessons': lessons,
        'topic':topic.capitalize(),
        'contents': contents,
        'activities': activities,
        'questions': questions,
        'number': 1
    }
    return render(request, 'python_tutorial/lesson.html', context)