<!DOCTYPE html>
<html lang="en">
<head>
  <title></title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  
  <link rel="preconnect" href="https://fonts.googleapis.com">
  <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
  <link href="https://fonts.googleapis.com/css2?family=Poppins:wght@300;400;500;600&display=swap" rel="stylesheet">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/OwlCarousel2/2.3.4/assets/owl.carousel.min.css">
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
  <link rel="stylesheet" href="{{url('all_images/css/style.min.css')}}">
  
</head>
<body class="bg-white">
 @php
            $dd=date_default_timezone_set("Asia/Kolkata");
            $date=date('d-m-Y H:i:s');
            //$evtdate='24-09-2021 13:00:00';
            $evtdate='01-10-2021 12:12:00';

          @endphp
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
          <!-- <p>{{ date_diff(new \DateTime($evtdate), new \DateTime($date))->format("%H:%i:%s") }}</p> -->
          @if($date>$evtdate)
          <a class="nav-link text-pink px-0 mx-3 active" href="https://hulcontentday2021.streamy.in/event" target="_blank">Login</a>
          @else
          <a class="nav-link text-pink px-0 mx-3 active" href="javascript:void(0);" data-toggle="modal" data-target="#register-now-modal">Register</a>
          @endif
          <a class="nav-link text-pink px-0 mx-3 scroll-trigger" href="#nav-what-to-expect">What to Expect</a>
          <a class="nav-link text-pink px-0 mx-3 scroll-trigger d-none" href="#nav-agenda">Agenda</a>
          <a class="nav-link text-pink px-0 mx-3 scroll-trigger" href="#nav-speakers">Programme</a>
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
          
            @if($date>$evtdate)
            <a href="https://hulcontentday2021.streamy.in/event" target="_blank">
              <img src="{{url('all_images/images/login.png')}}" alt="image" class="banner-box-img-2 mt-3">
            </a>
            @else
            <a href="javascript:void(0);" data-toggle="modal" data-target="#register-now-modal">
              <img src="{{url('all_images/images/register-now.png')}}" alt="image" class="banner-box-img-2 mt-3">

            </a>
            
            
            @endif
             
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
 
  @if($date<$evtdate)
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
  @endif

  
  <div id="nav-what-to-expect" class="what-to-expect-area">
    <div class="container">
      <div class="row align-items-center flex-column-reverse flex-lg-row">

        <div class="col-lg-5 col-md-8 ml-lg-auto">
          <div class="what-to-expect-content text-center">
            <h3 class="main-title text-pink mb-4 text-uppercase">What to Expect</h3>
            <p><span class="d-inline-block d-sm-block">Welcome to the 5<sup>th</sup> Edition of HUL Content Day.</span>
              <span class="d-inline d-sm-block">Like every edition we have a day packed with</span>
              <span class="d-inline d-sm-block">the best Speakers, Showstoppers, Partner</span>
              <span class="d-inline d-sm-block">Showcase, Partner Speak & Entertainment.</span>
              <span class="d-inline d-sm-block">Come meet the Best Minds in the Content</span>
              <span class="d-inline d-sm-block">industry as they reveal the Secret Sauce behind</span>
              <span class="d-inline d-sm-block">Truly Impactful Content.</span></p>
              <img src="{{url('all_images/images/expect-icon.png')}}" width="26" class="mt-3">
            </div>
          </div>

          <div class="col-lg-5 col-md-8 ml-lg-auto">
            <div class="wte-img-right mb-5 mb-lg-0" data-speed="0.09" data-revert="true">
              <img src="{{url('all_images/images/wte-right-side.png')}}" alt="image" class="img-fluid">
            </div>
          </div>

        </div>
      </div>
    </div>

    <div id="nav-speakers" class="speakers-area position-relative">
      <div class="container">

        <h4 class="main-title text-pink text-uppercase text-center">Programme</h4>

        <div class="speaker-category brown text-center mb-4">
          <p class="d-lg-flex align-items-center text-uppercase text-white">
            <time>10.00 TO 10.10</time>
            <strong><span>Opening Address - Priya Nair</span></strong>
          </p>
        </div>

        <div class="speaker-category pink text-center">
          <p class="d-lg-flex align-items-center text-uppercase text-white mb-2">
            <time>10.15 TO 10.45</time>
            <strong><span>Getting Candid with Mr. Devgn</span></strong>
          </p>
          <span>A candid chat with Ajay Devgn, actor, director & producer. Get to know his thoughts on how Brands can create Breakthrough Content in Film</span>
        </div>

        <div id="speakers-carousel-1" class="owl-carousel owl-theme speaker-owl-theme mb-5">

          <div class="item">
            <div class="speaker-item blue text-center position-relative">
              <div class="speaker-img position-relative">
                <img src="{{url('all_images/images/priya-nair.jpg')}}" alt="image" class="rounded-circle position-relative">
              </div>
              <h5 class="text-uppercase">Priya Nair</h5>
            </div>
          </div>

          <div class="item">
            <div class="speaker-item pink text-center position-relative">
              <div class="speaker-img position-relative">
                <img src="{{url('all_images/images/ajay-devgn.jpeg')}}" alt="image" class="rounded-circle position-relative">
              </div>
              <h5 class="text-uppercase">Ajay Devgn</h5>
            </div>
          </div>

        </div>

        <div class="speaker-category blue text-center">
          <p class="d-lg-flex align-items-center text-uppercase text-white mb-2">
            <time>10.45 TO 11.30</time>
            <strong><span>Music & Brands - Finding the right Frequency</span></strong>
          </p>
          <span>Learn how Brands can hit the right note to Music. Understand how brands can use Music to deliver their messsage with impact</span>
        </div>

        <div id="speakers-carousel-2" class="owl-carousel owl-theme speaker-owl-theme">

          <div class="item">
            <div class="speaker-item pink text-center position-relative">
              <p class="mb-4 text-uppercase text-blue">Moderator</p>
              <div class="speaker-img position-relative">
                <img src="{{url('all_images/images/srinandan.jpg')}}" alt="image" class="rounded-circle position-relative">
              </div>
              <h5 class="text-uppercase">Srinandan<br> Sundaram</h5>
              <p>HUL</p>
            </div>
          </div>

          <div class="item">
            <div class="speaker-item blue text-center position-relative">
              <p class="mb-4 text-uppercase text-secondary">Speaker</p>
              <div class="speaker-img position-relative">
                <img src="{{url('all_images/images/devraj-sanyal.png')}}" alt="image" class="rounded-circle position-relative">
              </div>
              <h5 class="text-uppercase">Devraj Sanyal</h5>
              <p>Universal Music</p>
            </div>
          </div>

          <div class="item">
            <div class="speaker-item pink text-center position-relative">
              <p class="mb-4 text-uppercase text-secondary">Speaker</p>
              <div class="speaker-img position-relative">
                <img src="{{url('all_images/images/anurag-bedi.jpeg')}}" alt="image" class="rounded-circle position-relative">
              </div>
              <h5 class="text-uppercase">Anurag Bedi</h5>
              <p>Zee Music</p>
            </div>
          </div>

          <div class="item">
            <div class="speaker-item blue text-center position-relative">
              <p class="mb-4 text-uppercase text-secondary">Speaker</p>
              <div class="speaker-img position-relative">
                <img src="{{url('all_images/images/vikram-mehra.jpeg')}}" alt="image" class="rounded-circle position-relative">
              </div>
              <h5 class="text-uppercase">Vikram Mehra</h5>
              <p>Sa Re Ga Ma</p> 
            </div>
          </div>

          <div class="item">
            <div class="speaker-item pink text-center position-relative">
              <p class="mb-4 text-uppercase text-secondary">Speaker</p>
              <div class="speaker-img position-relative">
                <img src="{{url('all_images/images/badshah.jpg')}}" alt="image" class="rounded-circle position-relative">
              </div>
              <h5 class="text-uppercase">Badshah</h5>
              <p>Singer</p> 
            </div>
          </div>

          <div class="item">
            <div class="speaker-item blue text-center position-relative">
              <p class="mb-4 text-uppercase text-secondary">Speaker</p>
              <div class="speaker-img position-relative">
                <img src="{{url('all_images/images/mahendra-soni.jpg')}}" alt="image" class="rounded-circle position-relative">
              </div>
              <h5 class="text-uppercase">Mahendra Soni</h5>
              <p>SVF Entertainement</p> 
            </div>
          </div>

        </div>

        <button class="speaker-post-suggestion btn px-4 mt-4 mb-5 text-pink" data-toggle="modal" data-target="#suggestion-modal" data-title="Music & Brands - Finding the right Frequency">Post Your Suggestions / Questions for the Panel Here</button>

        <div class="speaker-category pink text-center">
          <p class="d-lg-flex align-items-center text-uppercase text-white mb-2">
            <time>11.30 TO 12.05</time>
            <strong><span>Sports & Brands - Breakthrough in Fan Engagement</span></strong>
          </p>
          <span>A look at the growing impact of Sports on Pop Culture & how a data driven approach helps Brands connect better with Indian Sports Fans</span>
        </div>

        <div id="speakers-carousel-3" class="owl-carousel owl-theme speaker-owl-theme">

          <div class="item">
            <div class="speaker-item blue text-center position-relative">
              <p class="mb-4 text-uppercase text-blue">Moderator</p>
              <div class="speaker-img position-relative">
                <img src="{{url('all_images/images/prabha.jpg')}}" alt="image" class="rounded-circle position-relative">
              </div>
              <h5 class="text-uppercase">Prabha<br> Narasimhan</h5>
              <p>HUL</p>
            </div>
          </div>

          <div class="item">
            <div class="speaker-item blue text-center position-relative">
              <p class="mb-4 text-uppercase text-secondary">Speaker</p>
              <div class="speaker-img position-relative">
                <img src="{{url('all_images/images/irfan.jpeg')}}" alt="image" class="rounded-circle position-relative">
              </div>
              <h5 class="text-uppercase">Irfan Pathan</h5>
              <p>Former Indian<br>Cricketer</p> 
            </div>
          </div>

          <div class="item">
            <div class="speaker-item pink text-center position-relative">
              <p class="mb-4 text-uppercase text-secondary">Speaker</p>
              <div class="speaker-img position-relative">
                <img src="{{url('all_images/images/gowthman.jpeg')}}" alt="image" class="rounded-circle position-relative">
              </div>
              <h5 class="text-uppercase">Gowthman<br> Ragomanthan</h5>
              <p>Aquilis</p>
            </div>
          </div>

          <div class="item">
            <div class="speaker-item blue text-center position-relative">
              <p class="mb-4 text-uppercase text-secondary">Speaker</p>
              <div class="speaker-img position-relative">
                <img src="{{url('all_images/images/mustafa-ghouse.jpeg')}}" alt="image" class="rounded-circle img-top position-relative">
              </div>
              <h5 class="text-uppercase">Mustafa Ghouse</h5>
              <p>JSW Sports</p>
            </div>
          </div>

          <div class="item">
            <div class="speaker-item pink text-center position-relative">
              <p class="mb-4 text-uppercase text-secondary">Speaker</p>
              <div class="speaker-img position-relative">
                <img src="{{url('all_images/images/sanjog-gupta.jpeg')}}" alt="image" class="rounded-circle position-relative">
              </div>
              <h5 class="text-uppercase">Sanjog Gupta</h5>
              <p>Star Sports</p>
            </div>
          </div>

          <div class="item">
            <div class="speaker-item blue text-center position-relative">
              <p class="mb-4 text-uppercase text-secondary">Speaker</p>
              <div class="speaker-img position-relative">
                <img src="{{url('all_images/images/arvind-iyengar.jpeg')}}" alt="image" class="rounded-circle position-relative">
              </div>
              <h5 class="text-uppercase">Arvind Iyengar</h5>
              <p>Sports Interactive</p> 
            </div>
          </div>

        </div>

        <button class="speaker-post-suggestion btn px-4 mt-4 mb-5 text-blue" data-toggle="modal" data-target="#suggestion-modal" data-title="Sports & Brands - Breakthrough in Fan Engagement">Post Your Suggestions / Questions for the Panel Here</button>

        <div class="speaker-category blue text-center">
          <p class="d-lg-flex align-items-center text-uppercase text-white mb-2">
            <time>12.05 TO 12.40</time>
            <strong><span>Front Foot with Ravi Shastri</span></strong>
          </p>
          <span>Mr. Sanjiv Mehta gets on the pitch with Ravi Shastri, player, commentator, coach on what goes into making the Indian Cricket Team a force to reckon with</span>
        </div>

        <div id="speakers-carousel-4" class="owl-carousel owl-theme speaker-owl-theme">

          <div class="item">
            <div class="speaker-item blue text-center position-relative">
              <div class="speaker-img position-relative">
                <img src="{{url('all_images/images/sanjiv-mehta.jpeg')}}" alt="image" class="rounded-circle position-relative">
              </div>
              <h5 class="text-uppercase">Sanjiv Mehta</h5>
            </div>
          </div>

          <div class="item">
            <div class="speaker-item pink text-center position-relative">
              <div class="speaker-img position-relative">
                <img src="{{url('all_images/images/ravi-shastri.jpg')}}" alt="image" class="rounded-circle position-relative">
              </div>
              <h5 class="text-uppercase">Ravi Shastri</h5>
            </div>
          </div>

        </div>

        <div class="speaker-category brown text-center mt-4 mb-5">
          <p class="d-lg-flex align-items-center text-uppercase text-white">
            <time>12.40 TO 13.00</time>
            <strong><span>Address by Sanjiv Mehta</span></strong>
          </p>
        </div>

        <div class="speaker-category pink text-center">
          <p class="d-lg-flex align-items-center text-uppercase text-white mb-2">
            <time>13.00 TO 13.20</time>
            <strong><span>Comedy Club</span></strong>
          </p>
          <span>A look at the lighter side of ‘Working from Home’ & now ‘Getting back to Office’</span>
        </div>

        <div id="speakers-carousel-5" class="owl-carousel owl-theme speaker-owl-theme mb-5">

          <div class="item">
            <div class="speaker-item pink text-center position-relative">
              <div class="speaker-img position-relative">
                <img src="{{url('all_images/images/atul.jpg')}}" alt="image" class="rounded-circle position-relative">
              </div>
              <h5 class="text-uppercase">Atul Khatri</h5>
            </div>
          </div>

          <div class="item">
            <div class="speaker-item pink text-center position-relative">
              <div class="speaker-img position-relative">
                <img src="{{url('all_images/images/dolly.jpg')}}" alt="image" class="rounded-circle position-relative">
              </div>
              <h5 class="text-uppercase">Dolly Singh</h5>
            </div>
          </div>

        </div>

        <div class="speaker-category blue text-center">
          <p class="d-lg-flex align-items-center text-uppercase text-white mb-2">
            <time>13.20 TO 13.50</time>
            <strong><span>Shopping as Pop Culture</span></strong>
          </p>
          <span>The new normal has seen a huge upsurge in Online Shopping, undertand how Content lets you breakthrough India's latest passion 'Shopping'</span>
        </div>

        <div id="speakers-carousel-6" class="owl-carousel owl-theme speaker-owl-theme">

          <div class="item">
            <div class="speaker-item pink text-center position-relative">
              <p class="mb-4 text-uppercase text-blue">Moderator</p>
              <div class="speaker-img position-relative">
                <img src="{{url('all_images/images/kedar.jpg')}}" alt="image" class="rounded-circle position-relative">
              </div>
              <h5 class="text-uppercase">Kedar Lele</h5>
              <p>HUL</p>
            </div>
          </div>

          <div class="item">
            <div class="speaker-item blue text-center position-relative">
              <p class="mb-4 text-uppercase text-secondary">Speaker</p>
              <div class="speaker-img position-relative">
                <img src="{{url('all_images/images/bimal-rebba.jpeg')}}" alt="image" class="rounded-circle position-relative">
              </div>
              <h5 class="text-uppercase">Bimal Rebba</h5>
              <p>Trell</p> 
            </div>
          </div>

          <div class="item">
            <div class="speaker-item pink text-center position-relative">
              <p class="mb-4 text-uppercase text-secondary">Speaker</p>
              <div class="speaker-img position-relative">
                <img src="{{url('all_images/images/bhargav-errangi.jpg')}}" alt="image" class="rounded-circle img-top-20 position-relative">
              </div>
              <h5 class="text-uppercase">Bhargav Errangi</h5>
              <p>Flipkart</p>
            </div>
          </div>

          <div class="item">
            <div class="speaker-item blue text-center position-relative">
              <p class="mb-4 text-uppercase text-secondary">Speaker</p>
              <div class="speaker-img position-relative">
                <img src="{{url('all_images/images/angad-kikla.jpeg')}}" alt="image" class="rounded-circle position-relative">
              </div>
              <h5 class="text-uppercase">Angad Kikla</h5>
              <p>CityMall</p>
            </div>
          </div>

          <div class="item">
            <div class="speaker-item pink text-center position-relative">
              <p class="mb-4 text-uppercase text-secondary">Speaker</p>
              <div class="speaker-img position-relative">
                <img src="{{url('all_images/images/pawan-sarda.jpeg')}}" alt="image" class="rounded-circle img-top position-relative">
              </div>
              <h5 class="text-uppercase">Pawan Sarda</h5>
              <p>Future Group</p>  
            </div>
          </div>

          <div class="item">
            <div class="speaker-item blue text-center position-relative">
              <p class="mb-4 text-uppercase text-secondary">Speaker</p>
              <div class="speaker-img position-relative">
                <img src="{{url('all_images/images/niraj-ruparel.jpeg')}}" alt="image" class="rounded-circle position-relative">
              </div>
              <h5 class="text-uppercase">Niraj Ruparel</h5>
              <p>Group M</p>
            </div>
          </div>

        </div>

        <button class="speaker-post-suggestion btn px-4 mt-4 mb-5 text-pink" data-toggle="modal" data-target="#suggestion-modal" data-title="Shopping as Pop Culture">Post Your Suggestions / Questions for the Panel Here</button>

        <div class="speaker-category pink text-center">
          <p class="d-lg-flex align-items-center text-uppercase text-white mb-2">
            <time>13.55 TO 14.25</time>
            <strong><span>Film & Brands - Art Vs Formula Debate</span></strong>
          </p>
          <span>What makes a Hit Film & how do brands leverage India's biggest passion</span>
        </div>

        <div id="speakers-carousel-7" class="owl-carousel owl-theme speaker-owl-theme">

          <div class="item">
            <div class="speaker-item pink text-center position-relative">
              <p class="mb-4 text-uppercase text-blue">Moderator </p>
              <div class="speaker-img position-relative">
                <img src="{{url('all_images/images/shiva.jpeg')}}" alt="image" class="rounded-circle position-relative">
              </div>
              <h5 class="text-uppercase">Shiva Krishnamurthy</h5>
              <p>HUL</p>
            </div>
          </div>

          <div class="item">
            <div class="speaker-item blue text-center position-relative">
              <p class="mb-4 text-uppercase text-secondary">Speaker</p>
              <div class="speaker-img position-relative">
                <img src="{{url('all_images/images/ajit.jpg')}}" alt="image" class="rounded-circle position-relative">
              </div>
              <h5 class="text-uppercase">Ajit Andhare</h5>
              <p>Viacom18 Studios</p> 
            </div>
          </div>

          <div class="item">
            <div class="speaker-item pink text-center position-relative">
              <p class="mb-4 text-uppercase text-secondary">Speaker</p>
              <div class="speaker-img position-relative">
                <img src="{{url('all_images/images/asit.jpg')}}" alt="image" class="rounded-circle position-relative">
              </div>
              <h5 class="text-uppercase">Asit Modi</h5>
              <p>Neela Film<br>Productions</p>
            </div>
          </div>

          <div class="item">
            <div class="speaker-item blue text-center position-relative">
              <p class="mb-4 text-uppercase text-secondary">Speaker</p>
              <div class="speaker-img position-relative">
                <img src="{{url('all_images/images/shailesh-kapoor.jpeg')}}" alt="image" class="rounded-circle img-top position-relative">
              </div>
              <h5 class="text-uppercase">Shailesh<br> Kapoor</h5>
              <p>Ormax Media</p> 
            </div>
          </div>

        </div>

        <button class="speaker-post-suggestion btn px-4 mt-4 mb-5 text-blue" data-toggle="modal" data-target="#suggestion-modal" data-title="Film & Brands - Art Vs Formula Debate">Post Your Suggestions / Questions for the Panel Here</button>

        <div class="speaker-category blue text-center">
          <p class="d-lg-flex align-items-center text-uppercase text-white mb-2">
            <time>14.30 TO 15.00</time>
            <strong><span>Uplay India - Gaming Coming of Age</span></strong>
          </p>
          <span>The Indian Gamer is here, take a headshot at understanding the new language & passion of Young India</span>
        </div>

        <div id="speakers-carousel-8" class="owl-carousel owl-theme speaker-owl-theme">

          <div class="item">
            <div class="speaker-item blue text-center position-relative">
              <p class="mb-4 text-uppercase text-blue">Moderator</p>
              <div class="speaker-img position-relative">
                <img src="{{url('all_images/images/jasper.jpg')}}" alt="image" class="rounded-circle position-relative">
              </div>
              <h5 class="text-uppercase">Jasper Donat</h5>
              <p>Branded</p>
            </div>
          </div>

          <div class="item">
            <div class="speaker-item pink text-center position-relative">
              <p class="mb-4 text-uppercase text-secondary">Speaker</p>
              <div class="speaker-img position-relative">
                <img src="{{url('all_images/images/manish.jpg')}}" alt="image" class="rounded-circle position-relative">
              </div>
              <h5 class="text-uppercase">Manish Agarwal</h5>
              <p>Nazara Technologies</p> 
            </div>
          </div>

          <div class="item">
            <div class="speaker-item blue text-center position-relative">
              <p class="mb-4 text-uppercase text-secondary">Speaker</p>
              <div class="speaker-img position-relative">
                <img src="{{url('all_images/images/shilpa.jpg')}}" alt="image" class="rounded-circle position-relative">
              </div>
              <h5 class="text-uppercase">Shilpa Keswani</h5>
              <p>YouTube Gaming</p> 
            </div>
          </div>

          <div class="item">
            <div class="speaker-item pink text-center position-relative">
              <p class="mb-4 text-uppercase text-secondary">Speaker</p>
              <div class="speaker-img position-relative">
                <img src="{{url('all_images/images/anuj.jpg')}}" alt="image" class="rounded-circle position-relative">
              </div>
              <h5 class="text-uppercase">Anuj Tandon</h5>
              <p>Krafton (PUBG)</p> 
            </div>
          </div>

          <div class="item">
            <div class="speaker-item blue text-center position-relative">
              <p class="mb-4 text-uppercase text-secondary">Speaker</p>
              <div class="speaker-img position-relative">
                <img src="{{url('all_images/images/candice.jpg')}}" alt="image" class="rounded-circle position-relative">
              </div>
              <h5 class="text-uppercase">Candice<br> Mudrick</h5>
              <p>ex - Newzoo</p> 
            </div>
          </div>

        </div>

        <button class="speaker-post-suggestion btn px-4 mt-4 text-pink" data-toggle="modal" data-target="#suggestion-modal" data-title="Uplay India - Gaming Coming of Age">Post Your Suggestions / Questions for the Panel Here</button>

      </div>
    </div>

    <footer class="footer py-3">
      <div class="container">
        <p>*Programme subject to change.</p>
      </div>
    </footer>

    <div class="modal fade modal-style" id="suggestion-modal">
      <div class="modal-dialog modal-sm">
        <div class="modal-content">

          <div class="modal-header">
            <h4 class="modal-title text-white">Post Your Suggestions</h4>
            <button type="button" class="close" data-dismiss="modal">&times;</button>
          </div>

          <div class="modal-body">
            <span id="userform2">
             <input type="hidden" name="title" id="title">


             <div class="form-group">
              <label class="text-white">Name</label>
              <input type="text" name="cname" id="cname" class="form-control" >
              <span class="cname-error text-white" style="font-size: 12px;"></span>

            </div>
            <div class="form-group">
              <label class="text-white">Ask Questions</label>
              <textarea name="comment" id="comment" rows="5" class="form-control" ></textarea>
              <span class="comment-error text-white" style="font-size: 12px;"></span>

            </div>
            <button type="button"  class="btn bg-pink" onClick="userComment();" id="suggestion-btn">Submit</button>
          </span>
          <div class="thanyou-area text-center" id="msg3">
           <h5 class="text-white mb-3" style="font-size: 18px">Your Suggestions / Questions has been Submitted Successfully</h5>
         </div>

       </div>

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
<button type="button" onclick="createPostt()" class="btn bg-pink btn-block" id="register-btn">Register</button>
</span>
<div class="thanyou-area text-center" id="msg2">
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
<script src="https://cdnjs.cloudflare.com/ajax/libs/OwlCarousel2/2.3.4/owl.carousel.min.js"></script>
<script src="{{url('all_images/js/scroll.min.js')}}"></script>
<script src="{{url('all_images/js/TweenMax.min.js')}}"></script>
<script src="{{url('all_images/js/script.min.js')}}"></script>

<script>
 function refreshPage() {
   window.location.reload();
 }
</script>

<script type="text/javascript">
  $('.email-valid-error').hide();
  $('#msg2').hide();

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
              $('#register-now-modal .modal-title').hide();

        //   
        if(response.message){
          $('#userform').show();
          $('#msg2').hide();
          $('.email-valid-error').show();



          $('.email-valid-error').html(response.message);



        }else{
          setInterval(function() {
            $('#msg2').hide();
            window.location.href="{{url('/')}}";
          }, 2000);
          $('.email-valid-error').hide();
              // $('#msg2').show();


            }


          }


        });

  }

</script>
<script>
 function userComment() {
  var title = $('#title').val();
  var cname = $('#cname').val();
  var comment = $('#comment').val();
  var id = $('#post_id').val();

  if(cname == ''){
    $('.cname-error').html('Name is Required');
  }
  else{
    $('.cname-error').hide();
  }

  if(comment == ''){
    $('.comment-error').html('Comment is Required');
  }
  else{
    $('.comment-error').hide();
  }

  $.ajax({
    url: "{{url('/save-comment')}}",
    type: "POST",
    data: {
      id: id,
      title: title,
      cname: cname,
      comment: comment,
      _token: '{{csrf_token()}}',
    },
    success: function(response) {
      $('#suggestion-modal .modal-title').hide();

      $('#userform2').hide();
      $('#msg3').show();

      $("#title").val('');
      $("#cname").val('');
      $("#comment").val('');
      setInterval(function() {
                    // $('#msg2').hide(1000);
                    window.location.href="{{url('/')}}";
                  }, 2000);



    }


  });

}
</script>
</body>
</html>
