from django.shortcuts import render, redirect
from django.contrib import messages
from django.http.response import JsonResponse

from django.contrib.auth.decorators import login_required #login must

from store.models import Order, OrderItems


@login_required(login_url='login')
def index(request):
    orders = Order.objects.filter(user=request.user)
    context = {'orders':orders}
    return render(request, "store/orders/index.html", context) 


@login_required(login_url='login')
def orderview(request, t_no):
    order = Order.objects.filter(tracking_no=t_no).filter(user=request.user).first()
    orderitems = OrderItems.objects.filter(order = order)
    context = {'order':order, 'orderitems':orderitems}
    return render(request, "store/orders/view.html", context) 