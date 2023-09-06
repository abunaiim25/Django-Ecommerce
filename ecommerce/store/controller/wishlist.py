from django.shortcuts import render, redirect
from django.contrib import messages
from django.http.response import JsonResponse

from django.contrib.auth.decorators import login_required #login must

from store.models import Product, Cart, Wishlist


@login_required(login_url='login')
def index(request):
    wishlist = Wishlist.objects.filter(user=request.user)
    context = {'wishlist':wishlist}
    return render(request, 'store/wishlist.html', context)


# add-to-wishlist
def addtowishlist(request):
    if request.method == 'POST':
        if request.user.is_authenticated:
            prod_id = int(request.POST.get('product_id'))
            product_check = Product.objects.get(id=prod_id)
            
            if(product_check):
                if(Wishlist.objects.filter(user=request.user.id, product_id=prod_id)):
                    return JsonResponse({'status': "Product Already in Wishlist"})
                else:
                    Wishlist.objects.create(user=request.user, product_id=prod_id)
                    return JsonResponse({'status': "Product added to wishlist"})
            else:
                return JsonResponse({'status': "No such product found"})
        else:
            return JsonResponse({'status': "Login to Continue"})
    return redirect('/')



def deletewishilist(request):
    if request.method == 'POST':
        if request.user.is_authenticated:
           prod_id = int(request.POST.get('product_id'))
           
           if(Wishlist.objects.filter(user=request.user, product_id=prod_id)):
                wishlist = Wishlist.objects.get(user=request.user, product_id=prod_id)
                wishlist.delete()
                return JsonResponse({'status': "Product remove from wishlist"})
           else:
                return JsonResponse({'status': "Product not found in wishlist"})
        else:
            return JsonResponse({'status': "Login to Continue"})
    return redirect('/')


