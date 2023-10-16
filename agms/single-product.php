<?php
session_start();
error_reporting(0);
include('includes/dbconnection.php');
?>
<!DOCTYPE html>
<html lang="zxx">
   <head>
      <title>Art Gallery Management System | Single Product</title>
     
      <script>
         addEventListener("load", function () {
         	setTimeout(hideURLbar, 0);
         }, false);
         
         function hideURLbar() {
         	window.scrollTo(0, 1);
         }
      </script>
      <!--//meta tags ends here-->
      <!--booststrap-->
      <link href="css/bootstrap.min.css" rel="stylesheet" type="text/css" media="all">
      <!--//booststrap end-->
      <!-- font-awesome icons -->
      <link href="css/fontawesome-all.min.css" rel="stylesheet" type="text/css" media="all">
      <!-- //font-awesome icons -->
      <!--Shoping cart-->
      <link rel="stylesheet" href="css/shop.css" type="text/css" />
      <!--//Shoping cart-->
      <link rel="stylesheet" type="text/css" href="css/jquery-ui1.css">
      <link href="css/easy-responsive-tabs.css" rel='stylesheet' type='text/css' />
      <link rel="stylesheet" href="css/flexslider.css" type="text/css" media="screen" />
      <!--stylesheets-->
      <link href="css/style.css" rel='stylesheet' type='text/css' media="all">
      <!--//stylesheets-->
      <link href="//fonts.googleapis.com/css?family=Sunflower:500,700" rel="stylesheet">
      <link href="//fonts.googleapis.com/css?family=Open+Sans:400,600,700" rel="stylesheet">
   </head>
   <body>
      <!--headder-->
     <?php include_once('includes/header.php');?>
      <!-- banner -->
      <div class="inner_page-banner one-img">
      </div>
      <!--//banner -->
      <!-- short -->
      <div class="using-border py-3">
         <div class="inner_breadcrumb  ml-4">
            <ul class="short_ls">
               <li>
                  <a href="index.php">Home</a>
                  <span>/ /</span>
               </li>
               <li>Single Product</li>
            </ul>
         </div>
      </div>
      <!-- //short-->
      <!--//banner -->
      <!--/shop-->
      <section class="banner-bottom py-lg-5 py-3">
         <div class="container">
            <div class="inner-sec-shop pt-lg-4 pt-3">
               <?php
               $pid=$_GET['pid'];
$ret=mysqli_query($con,"select tblarttype.ID as atid,tblarttype.ArtType as typename,tblartmedium.ID as amid,tblartmedium.ArtMedium as amname,tblartproduct.ID as apid,tblartist.Name,tblartproduct.Title,tblartproduct.Dimension,tblartproduct.Orientation,tblartproduct.Size,tblartproduct.Artist,tblartproduct.ArtType,tblartproduct.ArtMedium,tblartproduct.SellingPricing,tblartproduct.Description,tblartproduct.Image,tblartproduct.Image1,tblartproduct.Image2,tblartproduct.Image3,tblartproduct.Image4,tblartproduct.RefNum,tblartproduct.ArtType from tblartproduct join tblarttype on tblarttype.ID=tblartproduct.ArtType join tblartmedium on tblartmedium.ID=tblartproduct.ArtMedium join tblartist on tblartist.ID=tblartproduct.Artist where tblartproduct.ID='$pid'");
$cnt=1;
while ($row=mysqli_fetch_array($ret)) {
?>
               <div class="row">
                  <div class="col-lg-4 single-right-left ">
                     <div class="grid images_3_of_2">
                        <div class="flexslider1">
                           <ul class="slides">
                              <li data-thumb="admin/images/<?php echo $row['Image'];?>">
                                 <div class="thumb-image">
                                  <img src="admin/images/<?php echo $row['Image'];?>" data-imagezoom="true" class="img-fluid" alt=" "> 
                               </div>
                              </li>
                              <?php if($row['Image1']): ?>
                              <li data-thumb="admin/images/<?php echo $row['Image1'];?>">
                                 <div class="thumb-image"> <img src="admin/images/<?php echo $row['Image1'];?>" data-imagezoom="true" class="img-fluid" alt=" "> 
                                 </div>
                              </li>
                           <?php endif;?>
                             <?php if($row['Image2']!=''): ?>
                              <li data-thumb="admin/images/<?php echo $row['Image2'];?>">
                                 <div class="thumb-image"> <img src="admin/images/<?php echo $row['Image2'];?>" data-imagezoom="true" class="img-fluid" alt=" "> </div>
                              </li>
            <?php endif;?>
                             <?php if($row['Image3']!=''): ?>
                                 <li data-thumb="admin/images/<?php echo $row['Image3'];?>">
                                 <div class="thumb-image"> <img src="admin/images/<?php echo $row['Image3'];?>" data-imagezoom="true" class="img-fluid" alt=" "> </div>
                              </li>
            <?php endif;?>
                             <?php if($row['Image4']!=''): ?>
                                 <li data-thumb="admin/images/<?php echo $row['Image4'];?>">
                                 <div class="thumb-image"> <img src="admin/images/<?php echo $row['Image4'];?>" data-imagezoom="true" class="img-fluid" alt=" "> </div>
                              </li>
                                          <?php endif;?>
                   
                           </ul>
                           <div class="clearfix"></div>
                        </div>
                     </div>
                  </div>
                  <div class="col-lg-8 single-right-left simpleCart_shelfItem">
                     <h3><?php echo $row['Title'];?>(by <?php echo $row['Name'];?>)</h3>
                   
                     </p>
                  
                    
                     <div class="color-quality">
                        <div class="color-quality-right">
                           <h5>Size : <?php echo $row['Size'];?></h5>
                           <h5>Dimension : <?php echo $row['Dimension'];?></h5>
                           <h5>Orientation : <?php echo $row['Orientation'];?></h5>
                          
                        </div>
                     </div>
                     <div class="occasional">
                        <h5>Art Types : <?php echo $row['typename'];?></h5>
                       
                       <h5>Art Medium : <?php echo $row['amname'];?></h5>
                       <h5>Art Reference Number : <?php echo $row['RefNum'];?></h5>
                   
                        <div class="clearfix"> </div>
                     </div>

                     <div class="occasion-cart">
                        <div>
                           <h4>
                                             <button class="btn btn-success"><a href="art-enquiry.php?eid=<?php echo $row['apid'];?>" >Enquiry</a></button></h4>
                          
                        </div>
                     </div>
             
                  </div>
                  <div class="clearfix"> </div>
                  <!--/tabs-->
                  <div class="responsive_tabs">
                     <div id="horizontalTab">
                        <ul class="resp-tabs-list">
                           <li>Description</li>
                          
                        </ul>
                        <div class="resp-tabs-container">
                           <!--/tab_one-->
                           <div class="tab1">
                              <div class="single_page">
                                 <h6><?php echo $row['Title'];?></h6>
                                 <p><?php echo $row['Description'];?>
                                 </p>
                                
                              </div>
                           </div>
                           <!--//tab_one-->
                         
                   
                        </div>
                     </div>
                  </div>
                  <!--//tabs-->
               </div>
            </div><?php }?>
         </div>
      </section>
      <!--subscribe-address-->
      
  
    <?php include_once('includes/footer.php');?>
      
      <!--jQuery-->
      <script src="js/jquery-2.2.3.min.js"></script>
      <!-- newsletter modal -->
      <!-- cart-js -->
      <script src="js/minicart.js"></script>
      <script>
         toys.render();
         
         toys.cart.on('toys_checkout', function (evt) {
         	var items, len, i;
         
         	if (this.subtotal() > 0) {
         		items = this.items();
         
         		for (i = 0, len = items.length; i < len; i++) {}
         	}
         });
      </script>
      <!-- //cart-js -->
      <!-- price range (top products) -->
      <script src="js/jquery-ui.js"></script>
      <script>
         //<![CDATA[ 
         $(window).load(function () {
         	$("#slider-range").slider({
         		range: true,
         		min: 0,
         		max: 9000,
         		values: [50, 6000],
         		slide: function (event, ui) {
         			$("#amount").val("$" + ui.values[0] + " - $" + ui.values[1]);
         		}
         	});
         	$("#amount").val("$" + $("#slider-range").slider("values", 0) + " - $" + $("#slider-range").slider("values", 1));
         
         }); //]]>
      </script>
      <!-- //price range (top products) -->
      <!-- single -->
      <script src="js/imagezoom.js"></script>
      <!-- single -->
      <!-- script for responsive tabs -->
      <script src="js/easy-responsive-tabs.js"></script>
      <script>
         $(document).ready(function () {
         	$('#horizontalTab').easyResponsiveTabs({
         		type: 'default', //Types: default, vertical, accordion           
         		width: 'auto', //auto or any width like 600px
         		fit: true, // 100% fit in a container
         		closed: 'accordion', // Start closed if in accordion view
         		activate: function (event) { // Callback function if tab is switched
         			var $tab = $(this);
         			var $info = $('#tabInfo');
         			var $name = $('span', $info);
         			$name.text($tab.text());
         			$info.show();
         		}
         	});
         	$('#verticalTab').easyResponsiveTabs({
         		type: 'vertical',
         		width: 'auto',
         		fit: true
         	});
         });
      </script>
      <!-- FlexSlider -->
      <script src="js/jquery.flexslider.js"></script>
      <script>
         // Can also be used with $(document).ready()
         $(window).load(function () {
         	$('.flexslider1').flexslider({
         		animation: "slide",
         		controlNav: "thumbnails"
         	});
         });
      </script>
      <!-- //FlexSlider-->
      <!-- start-smoth-scrolling -->
      <script src="js/move-top.js"></script>
      <script src="js/easing.js"></script>
      <script>
         jQuery(document).ready(function ($) {
         	$(".scroll").click(function (event) {
         		event.preventDefault();
         		$('html,body').animate({
         			scrollTop: $(this.hash).offset().top
         		}, 900);
         	});
         });
      </script>
      <!-- start-smoth-scrolling -->
      <!-- here stars scrolling icon -->
      <script>
         $(document).ready(function () {
         
         	var defaults = {
         		containerID: 'toTop', // fading element id
         		containerHoverID: 'toTopHover', // fading element hover id
         		scrollSpeed: 1200,
         		easingType: 'linear'
         	};
         
         
         	$().UItoTop({
         		easingType: 'easeOutQuart'
         	});
         
         });
      </script>
      <!-- //here ends scrolling icon -->
      <!-- //smooth-scrolling-of-move-up -->
      <!--bootstrap working-->
      <script src="js/bootstrap.min.js"></script>
      <!-- //bootstrap working--> 
   </body>
</html>