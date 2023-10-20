
         <div class="header-bar">
            <div class="info-top-grid">
               <div class="info-contact-agile">
                <?php

$ret=mysqli_query($con,"select * from tblpage where PageType='contactus' ");
$cnt=1;
while ($row=mysqli_fetch_array($ret)) {

?>
                  <ul>
                     <li>
                        <span class="fas fa-phone-volume"></span>
                        <p><?php  echo $row['MobileNumber'];?></p>
                     </li>
                     <li>
                        <span class="fas fa-envelope"></span>
                        <p><?php  echo $row['Email'];?></p>
                     </li>
                     <li>
                     </li>
                  </ul><?php } ?>
               </div>
            </div>
             <div class="container-fluid">
                 <div class="hedder-up row">
                     <div class="col-lg-3 col-md-3 logo-head">
                         <img src="images/11.jpg" alt="Header Image" width="90" height="90" />
                         <h1><a class="navbar-brand" href="index.php"><b>Laksala</b></a></h1>
                     </div>
                     <div class="col-lg-9 col-md-9 text-right">
                         <img src="images/handicrafts_board_logo.jpg" alt="Header Image" width="200" height="90" />
                     </div>
                 </div>
             </div>

             <nav class="navbar navbar-expand-lg navbar-light">
               <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
               <span class="navbar-toggler-icon"></span>
               </button>
               <div class="collapse navbar-collapse justify-content-center" id="navbarSupportedContent">
                  <ul class="navbar-nav ">
                     <li class="nav-item active">
                        <a class="nav-link" href="index.php">Home <span class="sr-only">(current)</span></a>
                     </li>
                     <li class="nav-item">
                        <a href="about.php" class="nav-link">About</a>
                     </li>
                    
                    
                     
                     <li class="nav-item dropdown">
                        <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown1" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                        Art Type
                        </a>
                       
                        <div class="dropdown-menu" aria-labelledby="navbarDropdown">
                           <?php
                                    $ret=mysqli_query($con,"select * from tblarttype");
$cnt=1;
while ($row=mysqli_fetch_array($ret)) {

?>
                           <a class="nav-link" href="product.php?cid=<?php  echo $row['ID'];?>&&artname=<?php  echo $row['ArtType'];?>"><?php  echo $row['ArtType'];?></a>
                          <?php } ?>
                        </div>
                     </li>
                     <li class="nav-item">
                        <a href="contact.php" class="nav-link">Contact</a>
                     </li>
                      <li class="nav-item">
                        <a href="admin/login.php" class="nav-link">Admin</a>
                     </li>
                  </ul>
               </div>
            </nav>
         </div>
         <!-- Slideshow 4 -->
        
      
        <div class="modal fade" id="exampleModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
         <div class="modal-dialog" role="document">
            <div class="modal-content">
               <div class="modal-header">
                  <h5 class="modal-title" id="exampleModalLabel">Login</h5>
                  <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                  <span aria-hidden="true">&times;</span>
                  </button>
               </div>
               <div class="modal-body">
                  <div class="register-form">
                     <form action="#" method="post">
                        <div class="fields-grid">
                           <div class="styled-input">
                              <input type="text" placeholder="Your Name" name="Your Name" required="">
                           </div>
                           <div class="styled-input">
                              <input type="email" placeholder="Your Email" name="Your Email" required="">
                           </div>
                           <div class="styled-input">
                              <input type="password" placeholder="password" name="password" required="">
                           </div>
                           <button type="submit" class="btn subscrib-btnn">Login</button>
                        </div>
                     </form>
                  </div>
               </div>
               <div class="modal-footer">
                  <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
               </div>
            </div>
         </div>
      </div>
      <!-- //Modal 1-->