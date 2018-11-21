$(document).ready(function(){
    $('.listValuePayment').on('click','a',function(e){
        e.preventDefault();
        var id = $(this).data('id');
        $('#payment_method').val(id);
        // console.log($(this).first());
        return;
    });


    toastr.options = {
	  "closeButton": true,
	  "debug": false,
	  "newestOnTop": false,
	  "progressBar": false,
	  "positionClass": "toast-top-right",
	  "preventDuplicates": false,
	  "onclick": null,
	  "showDuration": "300",
	  "hideDuration": "1000",
	  "timeOut": "5000",
	  "extendedTimeOut": "1000",
	  "showEasing": "swing",
	  "hideEasing": "linear",
	  "showMethod": "fadeIn",
	  "hideMethod": "fadeOut"
	}

    $('.btn-addcartx').click(function(event) {
        var id = $(this).attr('data-id');
        var qty = 1;
        $.ajax({
            url: window.urlAddCart,
            type: 'POST',
            cache: false,
            data: {
                qty:qty,
                id:id,
                _token: window.token
            },
            success: function(res){
                if(res >= 0){
                    toastr["success"]("Thêm vào giỏ hàng thành công");
                    $('#count_cart').html(res);                    
                }
            }
        });
    });

    //filter product
  $('.form-change').on('change', function(){

        $('#filter_products').submit();
  });

  $('.btn-filter').click(function(){

        $('#filter_products').submit();
  });
  $('.color-item').click(function(){
    var color = $(this).data('color');
    $('.set_color').val(color);
  });
});