$(document).ready(function () {
    
    //incriment-btn
    $('.incriment-btn').click(function (e) { 
        e.preventDefault();
        
        var inc_value = $(this).closest('.product_data').find('.qty-input').val();
        var value = parseInt(inc_value, 10)
        value = isNaN(value) ? 0 : value;
        if(value < 10)
        {
            value++;
            $(this).closest('.product_data').find('.qty-input').val(value);
        }
    });


    //incriment-btn
    $('.decrement-btn').click(function (e) { 
        e.preventDefault();
        
        var dec_value = $(this).closest('.product_data').find('.qty-input').val();
        var value = parseInt(dec_value, 10)
        value = isNaN(value) ? 0 : value;
        if(value > 1)
        {
            value--;
            $(this).closest('.product_data').find('.qty-input').val(value);
        }
    });

    //addToCartBtn
    $('.addToCartBtn').click(function (e) { 
        e.preventDefault();
        
        var product_id =  $(this).closest('.product_data').find('.prod_id').val();
        var product_qty =  $(this).closest('.product_data').find('.qty-input').val();
        var token = $('input[name=csrfmiddlewaretoken]').val();

        $.ajax({
            method: "POST",
            url: "/add-to-cart",
            data: {
                'product_id':product_id,
                'product_qty':product_qty,
                 csrfmiddlewaretoken: token
            },
            success: function (response) {
                alertify.success(response.status)
            }
        });
    });

    //changeQty
    $('.updateQty').click(function (e) { 
        e.preventDefault();
        
        var product_id =  $(this).closest('.product_data').find('.prod_id').val();
        var product_qty =  $(this).closest('.product_data').find('.qty-input').val();
        var token = $('input[name=csrfmiddlewaretoken]').val();

        $.ajax({
            method: "POST",
            url: "updateQty-cart",
            data: {
                'product_id':product_id,
                'product_qty':product_qty,
                 csrfmiddlewaretoken: token
            },
            success: function (response) {
                alertify.success(response.status)
            }
        });
    });

    //addToWishlist
    $('.addToWishlist').click(function (e) { 
        e.preventDefault();
        
        var product_id =  $(this).closest('.product_data').find('.prod_id').val();
        var token = $('input[name=csrfmiddlewaretoken]').val();

        $.ajax({
            method: "POST",
            url: "/add-to-wishlist",
            data: {
                'product_id':product_id,
                 csrfmiddlewaretoken: token
            },
            success: function (response) {
                alertify.success(response.status)
            }
        });
    });


    //delete-cart-item
    $(document).on('click', '.delete-cart-item', function (e) { //multiple delete
        e.preventDefault();
        
        var product_id =  $(this).closest('.product_data').find('.prod_id').val();
        var token = $('input[name=csrfmiddlewaretoken]').val();

        $.ajax({
            method: "POST",
            url: "delete-cart-item",
            data: {
                'product_id':product_id,
                 csrfmiddlewaretoken: token
            },
            success: function (response) {
                alertify.success(response.status)
                $('.cartdata_load').load(location.href + " .cartdata_load"); //delete with hidden load
                
            }
        });
    });


    //delete-wishilist-item
    $(document).on('click', '.delete-wishilist-item', function (e) { 
        e.preventDefault();
        
        var product_id =  $(this).closest('.product_data').find('.prod_id').val();
        var token = $('input[name=csrfmiddlewaretoken]').val();

        $.ajax({
            method: "POST",
            url: "delete-wishilist-item",
            data: {
                'product_id':product_id,
                 csrfmiddlewaretoken: token
            },
            success: function (response) {
                alertify.success(response.status)
                $('.wishdata_load').load(location.href + " .wishdata_load"); //delete with hidden load
                
            }
        });
    });

});
