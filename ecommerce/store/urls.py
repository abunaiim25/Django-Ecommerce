from django.urls import path
from . import views
from store.controller import authview, cartview, wishlist, checkout, order



urlpatterns = [
     path('', views.home, name = 'home'),
     path('collections', views.collections, name = 'collections'),
     path('collections/<str:slug>', views.collectionsview, name = 'collectionsview'),
     path('collections/<str:cate_slug>/<str:prod_slug>', views.productview, name = 'productview'),
     #auth
     path('register/', authview.register, name="register"),
     path('login/', authview.loginpage, name="login"),
     path('logout/', authview.logoutpage, name="logout"),
     #cart
     path('add-to-cart', cartview.addtocart, name="addtocart"),
     path('cart', cartview.cartpage, name="cart"),
     path('updateQty-cart', cartview. updateQtycart, name="updateQtycart"),
     path('delete-cart-item', cartview. deletecart, name="deletecart"),
     #Wishlist
     path('wishlist', wishlist.index, name="wishlist"),
     path('add-to-wishlist', wishlist.addtowishlist, name="addtowishlist"),
     path('delete-wishilist-item', wishlist.deletewishilist, name="deletewishilist"),
     #checkout
     path('checkout', checkout.index, name="checkout"),
     path('place-order', checkout.placeorder, name="placeorder"),
     #Order
     path('my-orders', order.index, name="myorders"),
     path('order-view/<str:t_no>', order.orderview, name="orderview"),
     
]
    