<!doctype html>
<html lang="en">

<head>
    <!-- Meta data -->
    <meta charset="UTF-8">
    
      
    <!-- Favicon -->
    <link rel="icon" href="{{url('all_images/logo/16173616812.png')}}" type="image/x-icon" />
    <link rel="shortcut icon" type="image/x-icon" href="{{url('all_images/logo/16173616812.png')}}" />

    <!-- Title -->
    <title>Berger Silk Breathe easy-e-meet</title>

    <!-- Bootstrap css -->
    <link href="{{url('assets/plugins/bootstrap-4.3.1/css/bootstrap.min.css')}}" rel="stylesheet" />

    <!-- Sidemenu Css -->
    <link href="{{url('assets/css/sidemenu.css')}}" rel="stylesheet" />

    <!-- Dashboard Css -->
    <link href="{{url('assets/css/style.css')}}" rel="stylesheet" />
    <link href="{{url('assets/css/admin-custom.css')}}" rel="stylesheet" />

    <!-- c3.js Charts Plugin -->
    <link href="{{url('assets/plugins/charts-c3/c3-chart.css')}}" rel="stylesheet" />

    <!-- select2 Plugin -->
    <link href="{{url('assets/plugins/select2/select2.min.css')}}" rel="stylesheet" />

    <!-- Time picker Plugin -->
    <link href="{{url('assets/plugins/time-picker/jquery.timepicker.css')}}" rel="stylesheet" />

    <!-- Date Picker Plugin -->
    <link href="{{url('assets/plugins/date-picker/spectrum.css')}}" rel="stylesheet" />

    <!-- p-scroll bar css-->
    <link href="{{url('assets/plugins/pscrollbar/pscrollbar.css')}}" rel="stylesheet" />

    <!-- file Uploads -->
    <link href="{{url('assets/plugins/fileuploads/css/fileupload.css')}}" rel="stylesheet" type="text/css" />

    <!---Font icons-->
    <link href="{{url('assets/css/icons.css')}}" rel="stylesheet" />

    <!---P-scroll Bar css -->
    <link href="{{url('assets/plugins/pscrollbar/pscrollbar.css')}}" rel="stylesheet" />

    <!-- Color Skin css -->
    <link id="theme" rel="stylesheet" type="text/css" media="all" href="{{url('assets/color-skins/color6.css')}}" />


</head>

<body class="app sidebar-mini">

    <!--Loader-->
    <div id="global-loader">
        <img src="{{url('assets/images/loader.svg')}}" class="loader-img" alt="">
    </div>
    <!--/Loader-->

    <!--Page-->
    <div class="page">
        <div class="page-main">

           @include('layout1.topheader')
        <!--  --> @include('layout1.sidebar')

                @yield('content')

        </div>

      

    </div>


    <!-- Back to top -->

    <!-- JQuery js-->
  

    <script src="{{url('assets/js/jquery-3.2.1.min.js')}}"></script>

    <!-- Bootstrap js -->
    <script src="{{url('assets/plugins/bootstrap-4.3.1/js/popper.min.js')}}"></script>
    <script src="{{url('assets/plugins/bootstrap-4.3.1/js/bootstrap.min.js')}}"></script>

    <!--JQuery Sparkline Js-->
    <script src="{{url('assets/js/jquery.sparkline.min.js')}}"></script>

    <!-- Circle Progress Js-->
    <script src="{{url('assets/js/circle-progress.min.js')}}"></script>

    <!-- Star Rating Js-->
    <script src="{{url('assets/plugins/rating/jquery.rating-stars.js')}}"></script>

    <!-- Fullside-menu Js-->
    <script src="{{url('assets/plugins/sidemenu/sidemenu.js')}}"></script>

    <!--Select2 js -->
    <script src="{{url('assets/plugins/select2/select2.full.min.js')}}"></script>

    <!-- Timepicker js -->
    <script src="{{url('assets/plugins/time-picker/jquery.timepicker.js')}}"></script>
    <script src="{{url('assets/plugins/time-picker/toggles.min.js')}}"></script>

    <!-- Datepicker js -->
    <script src="{{url('assets/plugins/date-picker/spectrum.js')}}"></script>
    <script src="{{url('assets/plugins/date-picker/jquery-ui.js')}}"></script>
    <script src="{{url('assets/plugins/input-mask/jquery.maskedinput.js')}}"></script>

    <!-- Inline js -->
    <script src="{{url('assets/js/select2.js')}}"></script>
    <script src="{{url('assets/js/formelements.js')}}"></script>

    <!-- file uploads js -->
    <script src="{{url('assets/plugins/fileuploads/js/fileupload.js')}}"></script>

    <!--InputMask Js-->
    <script src="{{url('assets/plugins/jquery-inputmask/jquery.inputmask.bundle.min.js')}}"></script>

    <!-- p-scroll bar Js-->
    <script src="{{url('assets/plugins/pscrollbar/pscrollbar.js')}}"></script>
    <script src="{{url('assets/plugins/pscrollbar/pscroll.js')}}"></script>

    <!--Counters -->
    <script src="{{url('assets/plugins/counters/counterup.min.js')}}"></script>
    <script src="{{url('assets/plugins/counters/waypoints.min.js')}}"></script>


    <!-- Custom Js-->
    <script src="{{url('assets/js/admin-custom.js')}}"></script>

</body>

</html>