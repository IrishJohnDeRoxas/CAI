# Generated by Django 5.0.4 on 2024-04-16 08:47

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('python_tutorial', '0007_activity_code_example_content_code_example'),
    ]

    operations = [
        migrations.AlterField(
            model_name='activity',
            name='code_example',
            field=models.TextField(blank=True, null=True),
        ),
        migrations.AlterField(
            model_name='content',
            name='code_example',
            field=models.TextField(blank=True, null=True),
        ),
    ]
