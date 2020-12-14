<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Home.aspx.cs" Inherits="Home" %>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">

<head id="Head1" runat="server">
    <title>Dance Academy</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="keywords" content="Dance whirl Responsive web template, Bootstrap Web Templates, Flat Web Templates, Android Compatible web template, 
	SmartPhone Compatible web template, free WebDesigns for Nokia, Samsung, LG, Sony Ericsson, Motorola web design" />
<script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } </script>
<!-- Custom Theme files -->
<link href="css/bootstrap.css" type="text/css" rel="stylesheet" media="all">
<link href="css/popup-box.css" rel="stylesheet" type="text/css" media="all" />
<link href="css/style.css" type="text/css" rel="stylesheet" media="all"> 
<link rel="stylesheet" href="css/main-gallery.css" type="text/css" media="screen" />  <!-- flexslider-CSS --> 
<link href="css/font-awesome.css" rel="stylesheet">		<!-- font-awesome icons -->
<!-- //Custom Theme files --> 
<!-- web-fonts -->  
<link href="//fonts.googleapis.com/css?family=Arapey:400,400i" rel="stylesheet">
<link href="//fonts.googleapis.com/css?family=Source+Sans+Pro:300i,400,400i,600,600i,700" rel="stylesheet">
<!-- //web-fonts -->

<style>
* {box-sizing: border-box}
body {font-family: Verdana, sans-serif; margin:0}
.mySlides {display: none}
img {vertical-align: middle;}

/* Slideshow container */
.slideshow-container {
  max-width: 1000px;
  position: relative;
  margin: auto;
}

/* Next & previous buttons */
.prev, .next {
  cursor: pointer;
  position: absolute;
  top: 50%;
  width: auto;
  padding: 16px;
  margin-top: -22px;
  color: white;
  font-weight: bold;
  font-size: 18px;
  transition: 0.6s ease;
  border-radius: 0 3px 3px 0;
  user-select: none;
}

/* Position the "next button" to the right */
.next {
  right: 0;
  border-radius: 3px 0 0 3px;
}

/* On hover, add a black background color with a little bit see-through */
.prev:hover, .next:hover {
  background-color: rgba(0,0,0,0.8);
}

/* Caption text */
.text {
  color: #f2f2f2;
  font-size: 15px;
  padding: 8px 12px;
  position: absolute;
  bottom: 8px;
  width: 100%;
  text-align:left;
}
/* The dots/bullets/indicators */
.dot {
  cursor: pointer;
  height: 15px;
  width: 15px;
  margin: 0 2px;
  background-color:#1d7de5;
  border-radius: 50%;
  display:inline-block;
   transition: background-color 0.6s ease;
}

.active, .dot:hover {
  background-color:#808080;
}

/* Fading animation */
.fade {
  -webkit-animation-name: fade;
  -webkit-animation-duration:8.5s;
  animation-name: fade;
  animation-duration: 8.5s;
}

@-webkit-keyframes fade {
  from {opacity: .4} 
  to {opacity: 1}
}

@keyframes fade {
  from {opacity: .4} 
  to {opacity: 1}
}

/* On smaller screens, decrease text size */
@media only screen and (max-width: 300px) {
  .prev, .next,.text {font-size: 11px}
}
</style>

</head>

<body id="page-top" data-spy="scroll" data-target=".navbar-fixed-top">  
    
    <form id="form1" runat="server">
	<!-- banner -->
	<div id="home" class="w3ls-banner"> 

		<!-- banner-text -->
		<div class="slider">
			<div class="callbacks_container">
				<ul class="rslides callbacks callbacks1" id="slider4">
					<li>
						<div class="w3layouts-banner-top">
							<div class="container">
								<div class="agileits-banner-info">
									<h3>Shall We <span>Dance</span> ?</h3>
										<p>CELEBRATE YOUR EVENT WITH US</p>
								<!--	<div class="agileits_w3layouts_more menu__item">
				<a href="#" class="menu__link" data-toggle="modal" data-target="#myModal">Learn More</a>
			</div>-->
								</div>	
							</div>
						</div>
					</li>
					<li>
						<div class="w3layouts-banner-top w3layouts-banner-top1">
							<div class="container">
								<div class="agileits-banner-info">
									<h3>Shall We <span>Dance</span> ?</h3>
									<p>CELEBRATE YOUR EVENT WITH US</p>
								<!--	<div class="agileits_w3layouts_more menu__item">
				<a href="#" class="menu__link" data-toggle="modal" data-target="#myModal">Learn More</a>
			</div>-->
								</div>	
							</div>
						</div>
					</li>
					<li>
						<div class="w3layouts-banner-top w3layouts-banner-top2">
							<div class="container">
								<div class="agileits-banner-info">
									<h3>Shall We <span>Dance</span> ?</h3>
									<p>CELEBRATE YOUR EVENT WITH US</p>
									<!--<div class="agileits_w3layouts_more menu__item">
											<a href="#" class="menu__link" data-toggle="modal" data-target="#myModal">Learn More</a>
										</div>-->
								</div>
							</div>
						</div>
					</li>
                    <li>
						<div class="w3layouts-banner-top w3layouts-banner-top3">
							<div class="container">
								<div class="agileits-banner-info">
									<h3>Shall We <span>Dance</span> ?</h3>
									<p>CELEBRATE YOUR EVENT WITH US</p>
									<!--<div class="agileits_w3layouts_more menu__item">
											<a href="#" class="menu__link" data-toggle="modal" data-target="#myModal">Learn More</a>
										</div>-->
								</div>
							</div>
						</div>
					</li>
				</ul>
			</div>
			<div class="clearfix"> </div>
			
			<!--banner Slider starts Here-->
		</div>
		    <div class="thim-click-to-bottom">
				<a href="#about" class="scroll">
					<i class="fa fa-long-arrow-down" aria-hidden="true"></i>
				</a>
			</div>
 			<!-- header -->
		<div class="header-w3layouts"> 
			<!-- Navigation -->
			<nav class="navbar navbar-default navbar-fixed-top">
				<div class="container">
					<div class="navbar-header page-scroll">
						<button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-ex1-collapse">
							<span class="sr-only">Spirit soul dancing</span>
							<span class="icon-bar"></span>
							<span class="icon-bar"></span>
							<span class="icon-bar"></span>
						</button>
                   
						<h1><a class="navbar-brand" href="Home.aspx"><p style="font-family:'AR BLANCA';color:#00ff99">Spirit soul dancing</p></a></h1>
					</div> 
					<!-- Collect the nav links, forms, and other content for toggling -->
					<div class="collapse navbar-collapse navbar-ex1-collapse">
						<ul class="nav navbar-nav navbar-right">
							<li class="scroll active"><a href="#home">HOME</a></li>
							<li><a href="Event.aspx">EVENT</a></li>
                            <li><a href="Classes.aspx">CLASSES</a></li>
							<li><a href="Instructors.aspx">INSTRUCTORS</a></li>
							<li><a href="Gallery.aspx">GALLERY</a></li>
                            <li><a href="Contact.aspx">CONTACT</a></li>
                            <li><a href="Login.aspx">LOGIN</a></li>
						</ul>
					</div>
					<!-- /.navbar-collapse -->
				</div>
				<!-- /.container -->
			</nav>  
		</div>	
		<!-- //header -->
	</div>	
	<!-- //banner --> 

        
        <div>
           <!-- about -->
<div class="about" id="about">
      <div class="col-md-6 ab-w3-agile-info">
	   <div class="ab-w3-agile-info-text">
	     <h2 class="title-w3">About Us</h2>
		 <p class="sub-text one">Choose Your Style</p>
		 <p>Spirit Soul Dancing Academy truly values the blend of solid technique and sincere expressiveness in the classic art form of dance.
              We offer an opportunity for children and adults to embrace technique and the art of dancing. 
             We aim for Spirit Soul Dancing Academy pupils to be strongly encouraged to embrace the aesthetic qualities of dance so they will be
              transformed into passionate, strong & knowledgeable dancers.</p>
			<div class="agileits_w3layouts_more menu__item one">
				<a href="#" class="menu__link" data-toggle="modal" data-target="#myModal">Learn More</a>
			</div>
		  </div>
		  <div class="ab-w3-agile-inner">
	       <div class="col-md-6 ab-w3-agile-part">
				<h4>OUR MISSION</h4>
		     <p>We find great value in knowing each student on a personal and artistic level. Our curriculum allows freedom to design a program that is tailored to individual desires,
                  allowing participants to thrive and flourish in the areas they choose to explore.</p>
	       </div>
			<div class="col-md-6 ab-w3-agile-part two">
			<h4>COMMUNITY</h4>
		     <p>We make it a priority to promote confidence in our students, and to empower them to make an impact on their community.
                  DMA provides highly qualified teachers who are dedicated to infusing an artistic presence into the communities we serve.</p>
	       </div>
			<div class="clearfix"></div>		   
	  </div>	
   </div>	 	  
	  <div class="col-md-6 ab-w3-agile-img">
	     
	  </div>
 
		<div class="clearfix"></div>
</div>
	<!-- //about -->

                                      <!-- Modal1 -->
                 
													<div class="modal fade" id="myModal" tabindex="-1" role="dialog">
														<div class="modal-dialog">
														<!-- Modal content-->
															<div class="modal-content">
																<div class="modal-header">
									                                 
                                                                  <div class="slideshow-container">
																	 <div class="mySlides fade">
                                                                         <button type="button" class="close" data-dismiss="modal">&times;</button>
                                                                        <img src="images/kathak.jpg" style="width:100%">
                                                                        <div class="text">
                                                                          <h5>KATHAK</h5>
                                                                 Kathak is a popular North Indian dance form. These Kathaks wearing Kathak dance dress used myths and scripts
                                                                             as a dance that was accompanied by music, vocals and gestures bringing to life the dance show.
                                                                         </div>
                                                                      </div>
                                                                      <div class="mySlides fade">
                                                                          <button type="button" class="close" data-dismiss="modal">&times;</button>
                                                                          <img src="images/salsa.jpg" style="width:100%">
                                                                            <div class="text">
                                                                                Salsa is a popular form of social dance originating in Cuba and before from United States of America U.S.A regions of New York and Puerto Rico and Cuban folk dances. 
                                                                                The movements of Salsa are a combination of the Afro-Cuban dances Son, cha-cha-cha, Mambo, Rumba, bomba and the Danzón.
                                                                            </div>
                                                                      </div>

                                                                     <div class="mySlides fade">
                                                                         <button type="button" class="close" data-dismiss="modal">&times;</button>
                                                                       <img src="images/kuchi.jpg" style="width:100%">
                                                                          <div class="text">
                                                                              <h5>KUCHIPUDI</h5>
                                                                              Kuchipudi is one of the eleven major Indian classical dances. 
                                                                              It originated in a village named Kuchipudi in the Indian state of Andhra Pradesh. </div>
                                                                     </div>

                                                                      <div class="mySlides fade">
                                                                         <button type="button" class="close" data-dismiss="modal">&times;</button>
                                                                       <img src="images/ballet.jpg" style="width:100%">
                                                                          <div class="text">
                                                                              <h5>BALLET</h5>
                                                                              Ballet (French: [balɛ]) is a type of performance dance that originated during the Italian Renaissance in the fifteenth century and later developed into a
                                                                               concert dance form in France and Russia.Ballets are choreographed and performed by trained ballet dancers.</div>
                                                                     </div>

                                                                    <a class="prev" onclick="plusSlides(-1)">&#10094;</a>
                                                                    <a class="next" onclick="plusSlides(1)">&#10095;</a>

                                                                    </div>
                                                                    <br>

                                                                    <div style="text-align:center">
                                                                      <span class="dot" onclick="currentSlide(1)"></span> 
                                                                      <span class="dot" onclick="currentSlide(2)"></span> 
                                                                      <span class="dot" onclick="currentSlide(3)"></span>
                                                                      <span class="dot" onclick="currentSlide(4)"></span> 
                                                                    </div>

                                                                        <script>
                                                                            var slideIndex = 1;
                                                                            showSlides(slideIndex);

                                                                            function plusSlides(n) {
                                                                                showSlides(slideIndex += n);
                                                                            }

                                                                            function currentSlide(n) {
                                                                                showSlides(slideIndex = n);
                                                                            }

                                                                            function showSlides(n) {
                                                                                var i;
                                                                                var slides = document.getElementsByClassName("mySlides");
                                                                                var dots = document.getElementsByClassName("dot");
                                                                                if (n > slides.length) { slideIndex = 1 }
                                                                                if (n < 1) { slideIndex = slides.length }
                                                                                for (i = 0; i < slides.length; i++) {
                                                                                    slides[i].style.display = "none";
                                                                                }
                                                                                for (i = 0; i < dots.length; i++) {
                                                                                    dots[i].className = dots[i].className.replace(" active", "");
                                                                                }
                                                                                slides[slideIndex - 1].style.display = "block";
                                                                                dots[slideIndex - 1].className += " active";
                                                                            }
                                                                        </script>

			                                                   </div>
														</div>
													</div>
													<!-- //Modal1 -->
        
    </div>

<a href="#" id="toTop" style="display: block;"> <span id="toTopHover" style="opacity: 1;"> </span></a>

<script src="js/jquery-2.2.3.min.js"></script> 
			<script src="js/particles.js"></script>
			<script src="js/app.js"></script>
	
<!-- skills -->

						<script src="js/responsiveslides.min.js"></script>
			<script>
			    // You can also use "$(window).load(function() {"
			    $(function () {
			        // Slideshow 4
			        $("#slider4").responsiveSlides({
			            auto: true,
			            pager: true,
			            nav: false,
			            speed: 500,
			            namespace: "callbacks",
			            before: function () {
			                $('.events').append("<li>before event fired.</li>");
			            },
			            after: function () {
			                $('.events').append("<li>after event fired.</li>");
			            }
			        });

			    });
			</script>
			<script>
			    // You can also use "$(window).load(function() {"
			    $(function () {
			        // Slideshow 4
			        $("#slider3").responsiveSlides({
			            auto: true,
			            pager: false,
			            nav: true,
			            speed: 500,
			            namespace: "callbacks",
			            before: function () {
			                $('.events').append("<li>before event fired.</li>");
			            },
			            after: function () {
			                $('.events').append("<li>after event fired.</li>");
			            }
			        });

			    });
							 </script>

 <!-- js -->
	<script src="js/main.js"></script>
<!-- search-jQuery -->
<!-- pop-up-box -->
			<script src="js/jquery.magnific-popup.js" type="text/javascript"></script>
			<!--//pop-up-box -->
			<script>
			    $(document).ready(function () {
			        $('.popup-with-zoom-anim').magnificPopup({
			            type: 'inline',
			            fixedContentPos: false,
			            fixedBgPos: true,
			            overflowY: 'auto',
			            closeBtnInside: true,
			            preloader: false,
			            midClick: true,
			            removalDelay: 300,
			            mainClass: 'my-mfp-zoom-in'
			        });
			    });
			</script>

		<!-- Map-JavaScript -->
			
	<!-- //Map-JavaScript -->

	
<!-- start-smoth-scrolling -->
<script type="text/javascript" src="js/move-top.js"></script>
<script type="text/javascript" src="js/easing.js"></script>
<script type="text/javascript">
    jQuery(document).ready(function ($) {
        $(".scroll").click(function (event) {

            event.preventDefault();
            $('html,body').animate({ scrollTop: $(this.hash).offset().top }, 1000);
        });
    });
</script>
<!-- start-smoth-scrolling -->


<!-- here stars scrolling icon -->
	<script type="text/javascript">
	    $(document).ready(function () {
	        /*
				var defaults = {
				containerID: 'toTop', // fading element id
				containerHoverID: 'toTopHover', // fading element hover id
				scrollSpeed: 1200,
				easingType: 'linear' 
				};
			*/

	        $().UItoTop({ easingType: 'easeOutQuart' });

	    });
	</script>
<!-- //here ends scrolling icon -->
	<script src="js/bootstrap.js"></script>
<!-- //for bootstrap working -->
    </form>
    <!-- footer -->
			<div class="copy-right">
				<p>&copy; 2020 Spirit soul dancing. All rights reserved </p>
			</div>
			
<!-- //footer -->
</body>
</html>
