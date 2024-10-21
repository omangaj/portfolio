from django.shortcuts import render
from myapp.models import *

# Create your views here.

def home(request):

    mydata=Mydata.objects.all().order_by('-id')[:1]
    link=Links.objects.all().order_by('-id')[:1]
    experience=Experience.objects.all().order_by('-id')[:1]
    skill=My_skill.objects.all().order_by('-id')[:1]
    about=About.objects.all().order_by('-id')[:1]
    language=Language.objects.all()
    editor=Code_Editor.objects.all()
    soft=Soft_Skill.objects.all()
    hobbie=Hobbies.objects.all()
    education=Education.objects.all()

    data={
        
        "mydata": mydata,
        "link":link,
        "experience":experience,
        "skill":skill,
        "about":about,
        "language":language,
        "editor":editor,
        "soft":soft,
        "hobbie":hobbie,
        "education":education
    }

    return render(request,"myapp/index.html",data)
