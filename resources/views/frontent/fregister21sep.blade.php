<!DOCTYPE html>
<html lang="en">
<head>
  <title>Content Day 2021</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
       <meta name="csrf-token" content="{{ csrf_token() }}">
  
  <link rel="preconnect" href="https://fonts.googleapis.com">
  <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
  <link href="https://fonts.googleapis.com/css2?family=Poppins:wght@300;400;500;600&display=swap" rel="stylesheet">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
  <link rel="stylesheet" href="{{url('all_images/css/style.min.css')}}">
 
</head>
<body>

<div class="header-area">
<nav class="navbar navbar-expand-lg navbar-light bg-white shadow-sm py-2">

<ul class="d-flex d-lg-none align-items-center justify-content-between w-100">
<li>
  <img src="{{url('all_images/images/unilever.png')}}" alt="image" class="unilever-logo d-block d-lg-none">
  </li>
  <li class="d-flex">
  <button class="navbar-toggler border-0 rounded-0 py-0 pr-0" type="button" data-toggle="collapse" data-target="#navbarNavAltMarkup" aria-controls="navbarNavAltMarkup" aria-expanded="false" aria-label="Toggle navigation">
    <span class="navbar-toggler-icon"></span>
  </button>
  <img src="{{url('all_images/images/media.png')}}" alt="image" class="media-logo d-block d-lg-none ml-3">
  </li>
  </ul>
  
  <div class="collapse navbar-collapse" id="navbarNavAltMarkup">
  
  <img src="{{url('all_images/images/unilever.png')}}" alt="image" class="unilever-logo d-none d-lg-block">
    <div class="navbar-nav mx-auto">
      <a class="nav-link text-pink px-0 mx-3 active" href="javascript:void(0);" data-toggle="modal" data-target="#register-now-modal">Register</a>
      <a class="nav-link text-pink px-0 mx-3 scroll-trigger" href="#nav-what-to-expect">What to Expect</a>
      <a class="nav-link text-pink px-0 mx-3 scroll-trigger" href="#nav-agenda">Agenda</a>
      <a class="nav-link text-pink px-0 mx-3 scroll-trigger" href="#nav-speakers">speaker</a>
    </div>
  <img src="{{url('all_images/images/media.png')}}" alt="image" class="media-logo d-none d-lg-block">
  
  </div>
</nav>
</div>
  
<div class="banner-area">
<div class="container-fluid">
<div class="row align-items-center">

<div class="col-lg-6 col-12 ml-auto d-flex justify-content-center justify-content-lg-start">
<div class="banner-box text-center">
<img src="{{url('all_images/images/content-day.png')}}" alt="image" class="banner-box-img-1">
<h1 class="text-pink mt-3">24<sup>TH</sup> SEPT 2021</h1>
<p class="text-blue">TIME: 10 AM TO 3 PM</p>
<a href="javascript:void(0);" data-toggle="modal" data-target="#register-now-modal">
<img src="{{url('all_images/images/register-now.png')}}" alt="image" class="banner-box-img-2 mt-3">
</a>
</div>
</div>

</div>
</div>

<div class="banner-img-left" data-speed="0.09" data-revert="true">
<img src="{{url('all_images/images/banner-left-side.gif')}}" alt="image">
</div>

<div class="banner-img-right" data-speed="0.05" data-revert="true">
<img src="{{url('all_images/images/banner-right-side.png')}}" alt="image">
</div>
</div>

<div class="timer-area py-5 bg-pink">
<div class="container">
<div class="row">

<div class="col-lg-6 col-md-12">
<div class="timer-left-content text-center text-lg-left mb-4 mb-lg-0">
<h2 class="text-white text-uppercase mb-1">Time is Running Out</h2>
<p class="text-white text-uppercase">Grab Your Ticket</p>
</div>
</div>

<div class="col-lg-6 col-md-12">
<ul class="days-count-down text-center d-flex align-items-center justify-content-center justify-content-lg-start text-white">
<li><strong id="days"></strong><p class="text-uppercase bg-white text-pink">Days</p></li>
<li><span>:</span></li>
<li><strong id="hours"></strong><p class="text-uppercase bg-white text-pink">Hours</p></li>
<li><span>:</span></li>
<li><strong id="minutes"></strong><p class="text-uppercase bg-white text-pink">Min</p></li>
<li><span>:</span></li>
<li class="mr-0"><strong id="seconds"></strong><p class="text-uppercase bg-white text-pink">Sec</p></li>
</ul>
</div>

</div>
</div>
</div>

<div id="nav-what-to-expect" class="what-to-expect-area">
<div class="container">
<div class="row align-items-center flex-column-reverse flex-lg-row">

<div class="col-lg-6 col-md-8 ml-lg-auto">
<div class="what-to-expect-content">
<h3 class="main-title text-pink mb-4 ml-3 ml-sm-5 text-uppercase">What to Expect</h3>
<p class="text-uppercase">What to Expect at Content Day'21</p>
<span>Unravel the secret sauce behind truly impactful content</span>
<ul class="mt-3">
<li class="text-pink pb-2">Insightful Panels on Movies, Music, Sports, Gaming<br> & Content to Commerce</li>
<li class="text-blue py-2">Big Idea Sessions</li>
<li class="text-pink py-2">Exciting Entertainement</li>
<li class="text-blue py-2">Street Showcase</li>
<li class="text-pink py-2">Content Day Speakers & Showstopper</li>
</ul>
</div>
</div>

<div class="col-lg-5 col-md-8">
<div class="wte-img-right mb-5 mb-lg-0" data-speed="0.09" data-revert="true">
<img src="{{url('all_images/images/wte-right-side.png')}}" alt="image" class="img-fluid">
</div>
</div>

</div>
</div>
</div>

<div id="nav-agenda" class="agenda-area position-relative">
<div class="container-fluid">

<h3 class="main-title text-pink text-uppercase text-center">Agenda</h3>

<div class="table-responsive">
<table class="table table-bordered table-style text-center">
  <thead class="text-white text-uppercase">
    <tr>
      <th colspan="6">Content Day 21 - 'AGE OF CONTENT DISRUPTION'</th>
    </tr>
  </thead>
  <thead class="text-uppercase bg-gradient-blue text-dark-blue">
    <tr>
      <th>Time Slot</th>
    <th>Session Type</th>
      <th>Session Name</th>
      <th>Duration</th>
      <th>Speakers</th>
    <th>In Conversation With</th>
    </tr>
  </thead>
  <tbody>
    <tr>
      <td class="text-pink">10:00 to 15:00</td>
    <td class="text-blue">MC/Host</td>
      <td class="text-pink">Event Compere</td>
      <td class="text-blue">5 hrs</td>
      <td class="text-pink">Siddharth Kannan</td>
      <td class="text-blue">Siddharth Kannan</td>
    </tr>
    <tr>
      <td class="text-pink">10:00 to 10:10</td>
    <td class="text-blue">Keynote</td>
      <td class="text-pink">Keynote</td>
      <td class="text-blue">10 mins</td>
      <td class="text-pink">Priya Nair</td>
      <td class="text-blue"></td>
    </tr>
  <tr>
      <td class="text-pink">10:15 to 10:50</td>
    <td class="text-blue">Tete a Tete</td>
      <td class="text-pink">Film - Art vs Formula Debate</td>
      <td class="text-blue">30 mins</td>
      <td class="text-pink">Ajay Devgn</td>
      <td class="text-blue">Priya Nair</td>
    </tr>
  <tr>
    <td class="text-pink">10:50 to 11:30</td>
    <td class="text-blue">Panel</td>
    <td class="text-pink">Music - What makes a Hit Song?</td>
    <td class="text-blue">30 mins</td>
    <td class="text-pink">Devraj Sanyal, Vikram Mehra, Anurag Bedi,<br> Badshaah, Mahendra Soni</td>
    <td class="text-blue">Tan</td>
  </tr>
  <tr>
    <td class="text-pink">11:30 to 12:05</td>
    <td class="text-blue">Panel</td>
    <td class="text-pink">Sports - Breakthrough in Fan Engagement</td>
    <td class="text-blue">30 mins</td>
    <td class="text-pink">Sanjog Gupta, Mustafa Ghouse,<br> Gowthaman Ragomanthan, Arvind Iyengar</td>
    <td class="text-blue">Prabha Narasimhan</td>
  </tr>
  <tr>
    <td class="text-pink">12:04 to 12:40</td>
    <td class="text-blue">Showstopper</td>
    <td class="text-pink">Front Foot with Ravi Shastri</td>
    <td class="text-blue">30 mins</td>
    <td class="text-pink">Sanjiv Mehta + Ravi Shastri</td>
    <td class="text-blue">Anantha Rangaswamy</td>
  </tr>
  <tr>
    <td class="text-pink">12:40 to 13:00</td>
    <td class="text-blue"></td>
    <td class="text-pink">Sanjiv Mehta Address</td>
    <td class="text-blue">10 mins</td>
    <td class="text-pink">Sanjiv Mehta</td>
    <td class="text-blue">NA</td>
  </tr>
  <tr>
    <td class="text-pink">13:00 to 13:20</td>
    <td class="text-blue">Entertainement</td>
    <td class="text-pink">Stand Up Comedy</td>
    <td class="text-blue">15 mins</td>
    <td class="text-pink">Atul Khatri</td>
    <td class="text-blue"></td>
  </tr>
  <tr>
    <td class="text-pink">13:20 to 13:40</td>
    <td class="text-blue">Panel</td>
    <td class="text-pink">Shopping as Pop Culture</td>
    <td class="text-blue">30 mins</td>
    <td class="text-pink">Bimal Rebba, Bhargav, Sachin Bhatia,<br> Angad Kikla, Pawan Sarda</td>
    <td class="text-blue">Kedar Lele</td>
  </tr>
  <tr>
    <td class="text-pink">13:45 to 14:30</td>
    <td class="text-blue">Panel</td>
    <td class="text-pink">UPlay India - Gaming coming of Age</td>
    <td class="text-blue">40 mins</td>
    <td class="text-pink">NewZoo, Lui Yi MS Gaming, Manish Agarwal,<br> Shilpa Keswani, Anuj Tandon</td>
    <td class="text-blue">Jasper Donat</td>
  </tr>
  <tr>
    <td class="text-pink">14:30 to 15:00</td>
    <td class="text-blue">Presentation</td>
    <td class="text-pink">MTV Youth Marketing Study</td>
    <td class="text-blue">30 mins</td>
    <td class="text-pink">MTV</td>
    <td class="text-blue">MTV</td>
  </tr>
  </tbody>
</table>
</div>

</div>
</div>

<div id="nav-speakers" class="speakers-area position-relative">
<div class="container">

<h4 class="main-title text-pink text-uppercase text-center">Speakers</h4>

<ul class="speaker-row d-flex justify-content-center">
<li class="speaker-item text-center position-relative">
<div class="speaker-img position-relative">
<img src="{{url('all_images/images/ajay-devgn.jpeg')}}" alt="image" class="rounded-circle position-relative">
</div>
<h5 class="text-uppercase">Ajay Devgn</h5>
<p>Actor</p>
</li>

<li class="speaker-item text-center position-relative">
<div class="speaker-img position-relative">
<img src="{{url('all_images/images/angad-kikla.jpeg')}}" alt="image" class="rounded-circle position-relative">
</div>
<h5 class="text-uppercase">Angad Kikla</h5>
<p>CityMall.com</p>
</li>

<li class="speaker-item text-center position-relative">
<div class="speaker-img position-relative">
<img src="{{url('all_images/images/bhargav-errangi.jpg')}}" alt="image" class="rounded-circle img-top-20 position-relative">
</div>
<h5 class="text-uppercase">Bhargav Errangi</h5>
<p>Flipkart Social<br> Commerce</p>
</li>

<li class="speaker-item text-center position-relative">
<div class="speaker-img position-relative">
<img src="{{url('all_images/images/arvind-iyengar.jpeg')}}" alt="image" class="rounded-circle position-relative">
</div>
<h5 class="text-uppercase">Arvind Iyengar</h5>
<p>Sports Interactive<br>Singapore</p> 
</li>
</ul>

<ul class="speaker-row d-flex justify-content-center">
<li class="speaker-item text-center position-relative">
<div class="speaker-img position-relative">
<img src="{{url('all_images/images/anurag-bedi.jpeg')}}" alt="image" class="rounded-circle position-relative">
</div>
<h5 class="text-uppercase">Anurag Bedi</h5>
<p>Zee Music</p>
</li>

<li class="speaker-item text-center position-relative">
<div class="speaker-img position-relative">
<img src="{{url('all_images/images/bimal-rebba.jpeg')}}" alt="image" class="rounded-circle position-relative">
</div>
<h5 class="text-uppercase">Bimal Rebba</h5>
<p>Trell Influencer<br>Commerce</p> 
</li>

<li class="speaker-item text-center position-relative">
<div class="speaker-img position-relative">
<img src="{{url('all_images/images/devraj-sanyal.png')}}" alt="image" class="rounded-circle position-relative">
</div>
<h5 class="text-uppercase">Devraj Sanyal</h5>
<p>Universal Music</p>
</li>
</ul>

<ul class="speaker-row d-flex justify-content-center">
<li class="speaker-item text-center position-relative">
<div class="speaker-img position-relative">
<img src="{{url('all_images/images/gowthman-gman.jpeg')}}" alt="image" class="rounded-circle position-relative">
</div>
<h5 class="text-uppercase">Gowthman Gman</h5>
<p>Aquilis - Dubai</p>
</li>

<li class="speaker-item text-center position-relative">
<div class="speaker-img position-relative">
<img src="{{url('all_images/images/harivansh-narayan-singh.jpeg')}}" alt="image" class="rounded-circle position-relative">
</div>
<h5 class="text-uppercase">Harivansh<br> Narayan Singh</h5>
<p></p>
</li>

<li class="speaker-item text-center position-relative">
<div class="speaker-img position-relative">
<img src="{{url('all_images/images/lui-yi.jpeg')}}" alt="image" class="rounded-circle img-top-20 position-relative">
</div>
<h5 class="text-uppercase">Lui Yi</h5>
<p>MS Gaming Lead</p> 
</li>

<li class="speaker-item text-center position-relative">
<div class="speaker-img position-relative">
<img src="{{url('all_images/images/mustafa-ghouse.jpeg')}}" alt="image" class="rounded-circle img-top position-relative">
</div>
<h5 class="text-uppercase">Mustafa Ghouse</h5>
<p>JSW</p> 
</li>
</ul>

<ul class="speaker-row d-flex justify-content-center">
<li class="speaker-item text-center position-relative">
<div class="speaker-img position-relative">
<img src="{{url('all_images/images/pawan-sarda.jpeg')}}" alt="image" class="rounded-circle img-top position-relative">
</div>
<h5 class="text-uppercase">Pawan Sarda</h5>
<p>Future Group</p> 
</li>

<li class="speaker-item text-center position-relative">
<div class="speaker-img position-relative">
<img src="{{url('all_images/images/niraj-ruparel.jpeg')}}" alt="image" class="rounded-circle position-relative">
</div>
<h5 class="text-uppercase">Niraj Ruparel</h5>
<p>Mobile</p>
</li>

<li class="speaker-item text-center position-relative">
<div class="speaker-img position-relative">
<img src="{{url('all_images/images/priya-nair.jpg')}}" alt="image" class="rounded-circle position-relative">
</div>
<h5 class="text-uppercase">Priya Nair</h5>
<p>HLL</p> 
</li>
</ul>

<ul class="speaker-row d-flex justify-content-center">
<li class="speaker-item text-center position-relative">
<div class="speaker-img position-relative">
<img src="{{url('all_images/images/sanjiv-mehta.jpeg')}}" alt="image" class="rounded-circle position-relative">
</div>
<h5 class="text-uppercase">Sanjiv Mehta</h5>
<p></p> 
</li>

<li class="speaker-item text-center position-relative">
<div class="speaker-img position-relative">
<img src="{{url('all_images/images/sanjog-gupta.jpeg')}}" alt="image" class="rounded-circle position-relative">
</div>
<h5 class="text-uppercase">Sanjog Gupta</h5>
<p>Star Sports</p>
</li>

<li class="speaker-item text-center position-relative">
<div class="speaker-img position-relative">
<img src="{{url('all_images/images/vinit-karnik.png')}}" alt="image" class="rounded-circle position-relative">
</div>
<h5 class="text-uppercase">Vinit Karnik</h5>
<p>ESP</p> 
</li>

<li class="speaker-item text-center position-relative">
<div class="speaker-img position-relative">
<img src="{{url('all_images/images/shailesh-kapoor.jpeg')}}" alt="image" class="rounded-circle img-top position-relative">
</div>
<h5 class="text-uppercase">Shailesh Kapoor</h5>
<p>Ormax</p> 
</li>
</ul>

<ul class="speaker-row d-flex justify-content-center">
<li class="speaker-item text-center position-relative arrow-hide px-2">
<div class="speaker-img position-relative">
<img src="{{url('all_images/images/vikram-mehra.jpeg')}}" alt="image" class="rounded-circle position-relative">
</div>
<h5 class="text-uppercase">Vikram Mehra</h5>
<p>Sa Re Ga Ma</p> 
</li>
</ul>

</div>
</div>
<div class="col-md-12 ">   
    <div class="row">
       <div class=" col-md-9" style="padding-top: 10px">    
          <input type="text" name="title" id="title" rows="1"  placeholder="ENTER YOUR COMMENT" class="inp1" maxlength="100" required="">     
          <input type="text" name="name" id="name" rows="1"  placeholder="ENTER YOUR COMMENT" class="inp1" maxlength="100" required="">     
          <input type="text" name="description" id="description" rows="1"  placeholder="ENTER YOUR COMMENT" class="inp1" maxlength="100" required="">     
          <br>
          &nbsp;<span id="msg2" style="color: #fff;float: left;font-size: 12px;margin-left: 12px;"></span>

      </div>
      <div class=" col-md-3" style="padding-top: 10px">    
        <input type="submit" name="submit" id="Submit" class="btn1" onclick="createComment()" value="SUBMIT">
    </div>
</div>
</div>
  <div class="modal fade modal-style" id="register-now-modal">
    <div class="modal-dialog modal-sm">
      <div class="modal-content">
      
        <div class="modal-header">
          <h4 class="modal-title text-white">Register Now</h4>
          <button type="button" class="close" onclick="refreshPage()" data-dismiss="modal">&times;</button>
        </div>
       
        <div class="modal-body">
          <span id="userform">
		    <div class="form-group">
            <label class="text-white">First Name</label>
            <input type="text" name="name" id="name" class="form-control" required="">
            <span class="fname-error text-white" style="font-size: 12px;"></span>
            </div>
			<div class="form-group">
            <label class="text-white">Last Name</label>
            <input type="text" name="lname" id="lname" class="form-control" required="">
          <span class="lname-error text-white" style="font-size: 12px;"></span>
            </div>
			<div class="form-group">
            <label class="text-white">Email ID</label>
            <input type="email" name="email" id="email" class="form-control" required="">
            <span class="email-error text-white" style="font-size: 12px;"></span>
            <span class="email-valid-error text-white" style="font-size: 12px;"></span>
<!--             <span id="msg3" style="color:#fff"></span>
 -->            
            </div>
            <button type="submit" name="" onclick="createPostt()" class="btn bg-pink btn-block" id="register-btn">Register</button>
		  </span>
		   
		<div class="thanyou-area text-center text-white" id="msg2">
           <h1 class="text-white mb-3">Congratulations!</h1>
           <p class="text-white">You have successfully registered for HUL Content Day 2021.<br> A confirmation has been sent to your registered email ID.</p>
        </div>

        </div>
        
      </div>
    </div>
  </div>

<div class="go-up bg-white position-fixed rounded-circle text-center shadow d-flex align-items-center justify-content-center"> 
<i class="fa fa-chevron-up"></i> 
</div>

  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
  <script src="{{url('all_images/js/scroll.min.js')}}"></script>
  <script src="{{url('all_images/js/TweenMax.min.js')}}"></script>
  <script src="{{url('all_images/js/script.min.js')}}"></script>
  
 <!--  <script>
  $(document).ready(function(){
    $('#register-btn').click(function(){
	  $('#register-form').hide();
	  $('#register-now-modal .modal-title').hide();
	  $('#register-now-modal .modal-body').css({'paddingTop':'0px'});
	  $('.thanyou-area').show();
	});  
  });
  </script> -->
  <script>
     function refreshPage() {
           window.location.reload();
         }
  </script>
  
  <script type="text/javascript">
                $('.email-valid-error').hide();

     function createPostt() {

        var name = $('#name').val();
        var lname = $('#lname').val();
        var email = $('#email').val();
        var id = $('#post_id').val();
    
    if(name == ''){
        $('.fname-error').html('First Name is Required');
       
    }
    else{
  $('.fname-error').hide();
    }
    if(lname == ''){
        $('.lname-error').html('Last Name is Required');
       
    }
    else{
$('.lname-error').hide();
    }
    if(email == ''){
      $('.email-error').show();

        $('.email-error').html('Email ID is Required');
                $('.email-valid-error').hide();

       
    }
    else{
      $('.email-error').hide();
      $('.email-valid-error').hide();

    }

        $.ajax({
            url: "{{url('/saveuser')}}",
            type: "POST",
             // contentType: "application/json",
        dataType: "json",
            data: {
                id: id,
                name: name,
                lname: lname,
                email: email,
                _token: '{{csrf_token()}}'
            },
            success: function(response) {
                $('#userform').hide();
                $('#msg2').show();
        //   
                if(response.message){
                $('#userform').show();
                $('#msg2').hide();
                $('.email-valid-error').show();



                $('.email-valid-error').html(response.message);


              }else{
                setInterval(function() {
                    // $('#msg2').hide(1000);
                    window.location.href="{{url('/')}}";
                }, 2000);
                $('.email-valid-error').hide();

              }


            }


        });

    }
    
  </script>
<!-- //comments -->
<script>
   function createComment() {
        var title = $('#title').val();
        var name = $('#name').val();
        var description = $('#description').val();
        var id = $('#post_id').val();
        $.ajax({
            url: "{{url('/posts2')}}",
            type: "POST",
            data: {
                id: id,
                title: title,
                name: name,
                description: description,
                _token: '{{csrf_token()}}',
            },
            success: function(response) {

                $('#msg2').html(response.message);
                $("#title").val('');
                $("#name").val('');
                $("#description").val('');
                


            }


        });

    }
</script>
</body>
</html>
