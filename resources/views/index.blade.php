<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <?php 
        $setting = Cache::get('setting'); 
        $product_list = Cache::get('product_list');
    ?>
    <meta http-equiv="content-language" content="vi" />
    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=1" />
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=9; IE=8; IE=7; IE=EDGE" />
    <meta name="robots" content="noindex, nofollow" />
    <meta name='revisit-after' content='1 days' /> 
    <title><?php if(!empty($title)) echo $title; else echo $setting->title; ?></title>
    <meta name="author" content="{!! $setting->website !!}" />
    <meta name="copyright" content="GCO" />
    <meta name="keywords" content="<?php if(!empty($keyword)) echo $keyword; else echo $setting->keyword; ?>" />
    <meta name="description" content="<?php if(!empty($description)) echo $description; else echo $setting->description; ?>" />
    <meta http-equiv="content-language" content="vi" />
    <meta property="og:title" content="<?php if(!empty($title)) echo $title; else echo $setting->title; ?>" />
    <meta property="og:locale" content="vi_VN"/>
    <meta property="og:url" content="{!! $setting->website !!}" />
    <meta property="og:site_name" content="<?php if(!empty($title)) echo $title; else echo $setting->title; ?>" />
    <meta property="og:type" content="website" />
    <meta property="og:image" content="<?php if(!empty($img_share)) echo $img_share; else echo asset('upload/hinhanh/'.$setting->photo) ?>" />
    <meta property="og:description" content="<?php if(!empty($description)) echo $description; else echo $setting->description; ?>" />
    <meta name="googlebot" content="all, index, follow" />
    <meta name="geo.region" content="VN" />
    <meta name="geo.position" content="10.764338, 106.69208" />
    <meta name="geo.placename" content="Hà Nội" />
    <meta name="Area" content="HoChiMinh, Saigon, Hanoi, Danang, Vietnam" />    
    <link rel="shortcut icon" href="{!! asset('upload/hinhanh/'.$setting->favico) !!}" type="image/png" />
    
    <link href="{{ asset('public/plugin/jquery-ui/jquery-ui.min.css')}}" rel="stylesheet" />
    <link href="{{ asset('public/plugin/bootstrap/css/bootstrap.min.css')}}" rel="stylesheet" />
    <link href="{{ asset('public/plugin/mmenu/jquery.mmenu.all.css')}}" rel="stylesheet" />
    <link href="{{ asset('public/plugin/slick/slick.css')}}" rel="stylesheet" />
    <link href="//cdnjs.cloudflare.com/ajax/libs/toastr.js/latest/css/toastr.min.css" rel="stylesheet" />
    <link href="{{ asset('public/css/style.css')}}" rel="stylesheet" />
    <link href="{{ asset('public/css/customize.css')}}" rel="stylesheet" />
    <noscript id="deferred-styles">
        <link href="{{ asset('public/plugin/fonts/font-awesome/css/font-awesome.min.css')}}" rel="stylesheet" />
        <link href="{{ asset('public/plugin/fonts/themify-icons/themify-icons.css')}}" rel="stylesheet" />
        <link href="https://fonts.googleapis.com/css?family=Open+Sans:300,300i,400,400i,600,600i,700,700i|Roboto:300,300i,400,400i,500,500i,700,700i" rel="stylesheet">
    </noscript>
    <script src="{{ asset('public/plugin/jquery/jquery-3.2.1.min.js')}}"></script>
        <script type="text/javascript">
            function baseUrl(){
                return '<?php echo url('/'); ?>';
            }

            window.token = '{{ csrf_token() }}';
            window.urlAddCart = '{{ route("addProductToCartAjax") }}';
            window.loadmore = '{{ route("loadmoreProject") }}';
       </script>
</head>
<body>
    <div class="main-wrapper">
        @include('templates.layout.header')    
        @yield('content')
        @include('templates.layout.footer')

        <div id="fb-root"></div>
        <script>(function(d, s, id) {
            var js, fjs = d.getElementsByTagName(s)[0];
            if (d.getElementById(id)) return;
            js = d.createElement(s); js.id = id;
            js.src = 'https://connect.facebook.net/vi_VN/sdk.js#xfbml=1&version=v2.10';
            fjs.parentNode.insertBefore(js, fjs);
        }(document, 'script', 'facebook-jssdk'));</script>
    </div>
    
    {!! $setting->codechat !!}
    {{ $setting->analytics }}
    @yield('script')
    <script>
    var loadDeferredStyles = function() {
        var addStylesNode = document.getElementById("deferred-styles");
        var replacement = document.createElement("div");
        replacement.innerHTML = addStylesNode.textContent;
        document.body.appendChild(replacement)
        addStylesNode.parentElement.removeChild(addStylesNode);
    };
    var raf = window.requestAnimationFrame || window.mozRequestAnimationFrame ||
        window.webkitRequestAnimationFrame || window.msRequestAnimationFrame;
    if (raf) raf(function() { window.setTimeout(loadDeferredStyles, 0); });
    else window.addEventListener('load', loadDeferredStyles);
    </script>
    <!-- BEGIN: SCRIPT -->
    
    <script src="{{ asset('public/plugin/jquery/jquery-migrate-3.0.0.min.js')}}" defer></script>
    <script src="{{ asset('public/plugin/popper/popper.min.js')}}" defer></script>
    <script src="{{ asset('public/plugin/jquery-ui/jquery-ui.min.js')}}" defer></script>
    <script src="{{ asset('public/plugin/bootstrap/js/bootstrap.min.js')}}" defer></script>
    <script src="{{ asset('public/plugin/mmenu/jquery.mmenu.all.js')}}" defer></script>
    <script src="{{ asset('public/plugin/slick/slick.min.js')}}" defer></script>
    <script src="{{ asset('public/plugin/scrollup/jquery.scrollUp.min.js')}}" defer></script>
    <script src="{{ asset('public/plugin/stickOnScroll/jquery.stickOnScroll.min.js')}}" defer></script>
    <script src="//cdnjs.cloudflare.com/ajax/libs/toastr.js/latest/js/toastr.min.js"></script>
    <!-- <script src="{{ asset('public/plugin/main.min.js')}}" defer></script> -->
    <script src="{{ asset('public/plugin/main.js')}}" defer></script>
    <script src="{{ asset('public/plugin/custom.js')}}" defer></script>
</body>
</html>