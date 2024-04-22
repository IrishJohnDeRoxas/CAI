from django import template

register = template.Library()

@register.simple_tag
def is_even(number):
  """Checks if a number is even and returns True/False"""
  return number % 2 == 0
