from django.db import models

from django.contrib.auth.models import User #auth

import datetime
import os

#images
def get_file_path(request, filename):
    orginal_filename = filename
    nowTime = datetime.datetime.now().strftime('%Y%m%d%H:%M:%S')
    filename = "%s%s" % (nowTime, orginal_filename)
    return os.path.join('uploads/', filename)

# Create your models here.
#------------------Category-------------------
class Category(models.Model):
    slug =models.CharField(max_length=150, null=False, blank=False)
    name =models.CharField(max_length=150, null=False, blank=False)
    image = models.ImageField( upload_to=get_file_path, null=True, blank=True)
    description =models.TextField(max_length=500, null=False, blank=False)
    status = models.BooleanField(default=False, help_text="0=default, 1=Hidden")
    trending = models.BooleanField(default=False, help_text="0=default, 1=Tending")
    meta_title =models.CharField(max_length=150, null=False, blank=False)
    meta_keywords =models.CharField(max_length=150, null=False, blank=False)
    meta_description =models.TextField(max_length=500, null=False, blank=False)
    created_at = models.DateTimeField(auto_now_add=True)
    
    def __str__(self):
        return self.name
    

#-----------------Product-------------------
class Product(models.Model):
    category = models.ForeignKey(Category, on_delete=models.CASCADE)
    slug =models.CharField(max_length=150, null=False, blank=False)
    name =models.CharField(max_length=150, null=False, blank=False)
    product_image = models.ImageField( upload_to=get_file_path, null=True, blank=True)
    small_description =models.CharField(max_length=250, null=False, blank=False)
    description =models.TextField(max_length=500, null=False, blank=False)
    quantity = models.IntegerField(null=False, blank=False)
    orginal_price = models.FloatField(null=False, blank=False)
    selling_price = models.FloatField(null=False, blank=False)
    status = models.BooleanField(default=False, help_text="0=default, 1=Hidden")
    trending = models.BooleanField(default=False, help_text="0=default, 1=Tending")
    tag = models.CharField(max_length=150, null=False, blank=False)
    meta_title =models.CharField(max_length=150, null=False, blank=False)
    meta_keywords =models.CharField(max_length=150, null=False, blank=False)
    meta_description =models.TextField(max_length=500, null=False, blank=False)
    created_at = models.DateTimeField(auto_now_add=True)
    
    def __str__(self):
        return self.name
    
    
#-----------------Cart-------------------
class Cart(models.Model):
    user = models.ForeignKey(User, on_delete=models.CASCADE)#join
    product = models.ForeignKey(Product, on_delete=models.CASCADE)
    product_qty = models.IntegerField(null=False, blank=False)
    created_at = models.DateTimeField(auto_now_add=True)
    
    
#-----------------Wishlist-------------------
class Wishlist(models.Model):
    user = models.ForeignKey(User, on_delete=models.CASCADE)#join
    product = models.ForeignKey(Product, on_delete=models.CASCADE)
    created_at = models.DateTimeField(auto_now_add=True)

    
#-----------------Orders-------------------
class Order(models.Model):
    user = models.ForeignKey(User, on_delete=models.CASCADE)#join
    fname = models.CharField(max_length=150, null=False)
    lname = models.CharField(max_length=150, null=False)
    email = models.CharField(max_length=150, null=False)
    phone = models.CharField(max_length=150, null=False)
    address = models.TextField(null=False)
    city = models.CharField(max_length=150, null=False)
    state = models.CharField(max_length=150, null=False)
    country = models.CharField(max_length=150, null=False)
    pincode = models.CharField(max_length=150, null=False)
    totalprice = models.FloatField(null=False)
    
    payment_mode = models.CharField(max_length=150, null=False)
    payment_id = models.CharField(max_length=250, null=True)
    orderstatus = (
        ('Pending','Pending'),
        ('Out For Sfipping', 'Out For Sfipping'),
        ('Completed','Completed')
    )
    status = models.CharField(max_length=150, choices=orderstatus, default='Pending')
    message = models.TextField(null=True)
    tracking_no = models.CharField(max_length=150, null=True)
    created_at = models.DateTimeField(auto_now_add=True)
    updated_at = models.DateTimeField(auto_now=True)
    
    def __str__(self):
        return '{} - {}'.format(self.id, self.tracking_no)
    
    
#-----------------OrderItems-------------------
class OrderItems(models.Model):
    order = models.ForeignKey(Order, on_delete=models.CASCADE)
    product = models.ForeignKey(Product, on_delete=models.CASCADE)
    price = models.FloatField(null=False)
    quantity = models.IntegerField(null=False)
    
    def __str__(self):
        return '{} - {}'.format(self.order.id, self.order.tracking_no)
    
    

#-----------------Profile-------------------
class Profile(models.Model):
    user = models.ForeignKey(User, on_delete=models.CASCADE)#join
    phone = models.CharField(max_length=50, null=False)
    address = models.TextField(null=False)
    city = models.CharField(max_length=150, null=False)
    state = models.CharField(max_length=150, null=False)
    country = models.CharField(max_length=150, null=False)
    pincode = models.CharField(max_length=150, null=False)
    
    def __str__(self):
        return self.user.username