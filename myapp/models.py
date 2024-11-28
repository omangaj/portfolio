from django.db import models

# Create your models here.


class Links(models.Model):
    name = models.CharField(max_length = 100)
    link = models.CharField(max_length = 200)
    icon = models.CharField(max_length = 100,help_text="Enter Icon boostrap class ex.icon-youtube",null=True)
    
    
    def __str__ (self):
        return self.name
    class Meta:
        verbose_name_plural="1. Link"


class Mydata(models.Model):
    name = models.CharField(max_length = 100)
    profetion = models.CharField(max_length = 150,null=True)
    background_img = models.ImageField(upload_to="media/myphoto")
    profile_img = models.ImageField(upload_to="media/myphoto",null=True)
    mobile = models.CharField(max_length = 11)
    email = models.EmailField(max_length=254,unique=True)
    address = models.CharField(max_length=200)
    high_education = models.CharField(max_length=200,null=True)
    
    def __str__ (self):
        return self.name
    class Meta:
        verbose_name_plural="2. Mydata"

class Experience(models.Model):
    name = models.ForeignKey(Mydata, on_delete=models.CASCADE,null=True)
    experience = models.CharField(max_length = 100)
    joining_date=models.CharField(max_length = 100,null=True,default="-----")
    resignation_date=models.CharField(max_length = 100,null=True,default="-----")
    Work_experience=models.TextField(null=True,default="-----")
    company = models.CharField(max_length = 100,default="-----")
    job_role = models.CharField(max_length = 100,default="-----")
    Position = models.CharField(max_length = 100,default="-----")
    address = models.CharField(max_length = 100,default="-----")

    def __str__ (self):
        return self.experience
    class Meta:
        verbose_name_plural="3. Experience"


class My_skill(models.Model):
    skill_name = models.CharField(max_length = 100)
    skill_percentage = models.IntegerField()
    

    def __str__ (self):
        return self.skill_name
    class Meta:
        verbose_name_plural="4. My_skill"
    
class About(models.Model):
    name = models.ForeignKey(Mydata, on_delete=models.CASCADE)
    about = models.TextField()
    resume = models.FileField(upload_to="media/myphoto",null=True)
    about_resume = models.TextField(null=True)
    profile = models.CharField(max_length = 50)
    domain = models.CharField(max_length = 50,null=True,default="-----")
    high_education = models.CharField(max_length = 50)

    
    def __str__ (self):
        return self.profile
    class Meta:
        verbose_name_plural="5. About"

class Language(models.Model):
    language = models.CharField(max_length = 50)
    
    def __str__ (self):
        return self.language
    class Meta:
        verbose_name_plural="6. Language"
    
    
class Code_Editor(models.Model):
    editor = models.CharField(max_length = 50)
    
    def __str__ (self):
        return self.editor
    class Meta:
        verbose_name_plural="7. Code_Editor"

class Soft_Skill(models.Model):
    soft_skill = models.CharField(max_length = 50)
    
    def __str__ (self):
        return self.soft_skill
    class Meta:
        verbose_name_plural="8. Soft_Skill"

class Hobbies(models.Model):
    hobbie = models.CharField(max_length = 50)
    
    def __str__ (self):
        return self.hobbie
    class Meta:
        verbose_name_plural="9. Hobbies"

class Education(models.Model):
    college = models.CharField(max_length = 50)
    branch = models.CharField(max_length = 30,default="-----")
    GENRE_CHOICE=[
        ('Secondary School','Secondary School'),
        ('Higher Secondary School','Higher Secondary School'),
        ('Bachelor of Science','Bachelor of Science'),
    ]
    std = models.CharField(max_length = 50,choices=GENRE_CHOICE)
    first_year = models.CharField(max_length = 4)
    final_year = models.CharField(max_length = 4)
    grade = models.CharField(max_length = 5)
    percentage = models.FloatField()
    
    def __str__ (self):
        return self.std
    class Meta:
        verbose_name_plural="10. Education"
    
class Project(models.Model):
    pro_image = models.ImageField(upload_to="media/project")
    pro_link = models.CharField(max_length = 150)
    pro_name = models.CharField(max_length = 150)
    pro_info = models.TextField()
    
    def __str__ (self):
        return self.pro_name
    class Meta:
        verbose_name_plural="11. Project"
    
    
    
    
    
    