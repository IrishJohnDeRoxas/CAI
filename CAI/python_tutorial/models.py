from django.db import models
import uuid, os

# Create your models here.

class Lesson(models.Model):
    topic = models.CharField(max_length=200, null=False)
    def __str__(self):
        return self.topic
    
    @property
    def slug(self):
        # Implement logic to generate a slug from the title (e.g., using a library like `django-slugify`)
        return self.topic.capitalize().replace(" ", "-")
    
class Content(models.Model):
    topic = models.ForeignKey(Lesson, on_delete=models.CASCADE, default='')
    title = models.CharField(max_length=200, null=True, blank=True)
    desc = models.TextField()
    code_example = models.TextField(null=True, blank=True)
    error_code_example = models.TextField(null=True, blank=True)
    image = models.ImageField(upload_to='img/python', null=True, blank=True) 
     
    def generate_unique_filename(self, filename):
        # ... (other code, if needed)
        uuid_str = str(uuid.uuid1)
        return f'{uuid_str}{filename}' 
    
    def save(self, *args, **kwargs):
        # ... (other code)
        if self.image:
            self.image.name = self.generate_unique_filename(self.image.name)
        # ... (other code)
        super().save(*args, **kwargs)
        
    def delete(self, *args, **kwargs):
        if self.image:
            image_path = self.image.path
            if os.path.exists(image_path):
                os.remove(image_path)
        super().delete(*args, **kwargs)

class Questionnaire(models.Model):
    topic = models.ForeignKey(Lesson, on_delete=models.CASCADE, default='')
    question = models.CharField(max_length=200)
    answer = models.CharField(max_length=200)
    status = models.CharField(max_length=20, choices=[
        ('PENDING', 'Pending'),
        ('DONE', 'Done'),
    ], default='PENDING')
    

    
class Activity(models.Model):
    topic = models.ForeignKey(Lesson, on_delete=models.CASCADE, default='')
    activity = models.TextField(null=True)
    compiler_src = models.TextField(null=True, blank=True) 
    status = models.CharField(max_length=20, choices=[
        ('PENDING', 'Pending'),
        ('DONE', 'Done'),
    ], default='PENDING')
    
   
    
class UploadImage(models.Model):
    # Other fields...
    image = models.ImageField(upload_to='img/python') 
    
    def __str__(self):
        return self.image.name
    
    def generate_unique_filename(self, filename):
        # ... (other code, if needed)
        uuid_str = str(uuid.uuid4())
        ext = os.path.splitext(filename)[1]
        return f'{uuid_str}{filename}' 
    
    def save(self, *args, **kwargs):
        # ... (other code)
        if self.image:
            self.image.name = self.generate_unique_filename(self.image.name)
        # ... (other code)
        super().save(*args, **kwargs)
        
    def delete(self, *args, **kwargs):
        if self.image:
            image_path = self.image.path
            if os.path.exists(image_path):
                os.remove(image_path)
        super().delete(*args, **kwargs)

