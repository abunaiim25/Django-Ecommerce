from django.shortcuts import render, redirect
from django.contrib import messages
from django.http.response import JsonResponse

from django.contrib.auth.decorators import login_required #login must

from store.models import Product, Cart


def addtocart(request): # this is come on ajex
    if request.method == 'POST':
        if request.user.is_authenticated:
            prod_id = int(request.POST.get('product_id'))
            product_check = Product.objects.get(id=prod_id)
            
            if(product_check):
                if(Cart.objects.filter(user=request.user.id, product_id=prod_id)):
                    return JsonResponse({'status': "Product Already in Cart"})
                else:
                    prod_qty = int(request.POST.get('product_qty'))
                    
                    if product_check.quantity >= prod_qty:
                        Cart.objects.create(
                            user=request.user, 
                            product_id=prod_id, 
                            product_qty=prod_qty)
                        return JsonResponse({'status': "Product added successfully"})
                    else:
                        return JsonResponse({'status': "Only "+ str(product_check.quantity) +" quantity available"})
            else:
                return JsonResponse({'status': "No such product found"})
        else:
            return JsonResponse({'status': "Login to Continue"})
    return redirect('/')
                      
                      
#get
@login_required(login_url='login')
def cartpage(request):
    if request.user.is_authenticated:
        cart = Cart.objects.filter(user=request.user)
        context = {'cart':cart}
        return render(request, "store/cart.html", context)
    """
    else:
        messages.error(request, "Login to Continue")
        return redirect('login')
    """


#update
def updateQtycart(request):
    if request.method == 'POST':
         prod_id = int(request.POST.get('product_id'))
         if(Cart.objects.filter(user=request.user, product_id=prod_id)):
               prod_qty = int(request.POST.get('product_qty'))
               cart = Cart.objects.get(product_id=prod_id, user=request.user)
               cart.product_qty = prod_qty
               cart.save()
               return JsonResponse({'status': "Updated Successfully"})
    return redirect('/')


#delete
def deletecart(request):
    if request.method == 'POST':
         prod_id = int(request.POST.get('product_id'))
         if(Cart.objects.filter(user=request.user, product_id=prod_id)):
             cartitem = Cart.objects.get(user=request.user, product_id=prod_id)
             cartitem.delete()
         return JsonResponse({'status': "Deleted Successfully"})
    return redirect('/')
