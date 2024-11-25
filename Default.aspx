<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default"  EnableEventValidation="false" %>
<%@ Register Src="~/controls/menu.ascx" TagName="menu" TagPrefix="uc1" %>
<%@ Register Src="~/controls/footer.ascx" TagName="footer" TagPrefix="uc2" %>
<%@ Register Src="~/controls/news.ascx" TagName="news" TagPrefix="uc3" %>
<%@ Register Src="~/controls/get_gallery.ascx" TagName="get_gallery" TagPrefix="uc4" %>
<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Saraswati Institute Technology & Management</title>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="description" content="Saraswati Institute Technology & Management">
    <meta name="author" content="Esmet">
    <meta charset="UTF-8">

    <link href='http://fonts.googleapis.com/css?family=Raleway:400,100,200,300,500,600,700,800' rel='stylesheet' type='text/css'>
        
    <!-- CSS Bootstrap & Custom -->
    <link href="bootstrap/css/bootstrap.css" rel="stylesheet" media="screen">
    <link href="css/font-awesome.min.css" rel="stylesheet" media="screen">
    <link href="css/animate.css" rel="stylesheet" media="screen">
    
    <link href="style.css" rel="stylesheet" media="screen">
        
    <!-- Favicons -->
    <link rel="apple-touch-icon-precomposed" sizes="144x144" href="images/ico/apple-touch-icon-144-precomposed.png">
    <link rel="apple-touch-icon-precomposed" sizes="114x114" href="images/ico/apple-touch-icon-114-precomposed.png">
    <link rel="apple-touch-icon-precomposed" sizes="72x72" href="images/ico/apple-touch-icon-72-precomposed.png">
    <link rel="apple-touch-icon-precomposed" href="images/ico/apple-touch-icon-57-precomposed.png">
    <link rel="shortcut icon" href="images/ico/favicon.ico">
    
    <!-- JavaScripts -->
    <script src="js/jquery-1.10.2.min.js"></script>
    <script src="js/jquery-migrate-1.2.1.min.js"></script>
    <script src="js/modernizr.js"></script>
    <!--[if lt IE 8]>
	<div style=' clear: both; text-align:center; position: relative;'>
            <a href="http://www.microsoft.com/windows/internet-explorer/default.aspx?ocid=ie6_countdown_bannercode"><img src="http://storage.ie6countdown.com/assets/100/images/banners/warning_bar_0000_us.jpg" border="0" alt="" /></a>
        </div>
    <![endif]-->
</head>
<body>
   
     <uc1:menu runat="server" ID="menu" />
    
   
    <div class="container">
        <div class="row">
            <div class="col-md-8">
                <div class="main-slideshow">
                    <div class="flexslider">
                        <ul class="slides">
						      <li>
                                <img src="images/slide9.jpg" />
                              
                            </li>
                            <li>
                                <img src="images/slide8.jpg" />
                              
                            </li>
                             <li>
                                <img src="images/slide10.jpg" />
                              
                            </li>
                            <li>
                                <img src="images/slide11.jpg" />
                              
                            </li>
                               <li>
                                <img src="images/slide0.jpg" />
                              
                            </li>
                            <li>
                                <img src="images/slide2.jpg" />
                              
                            </li>
                      <!--      <li>
                                <img src="images/slide3.jpg" />
                             <div class="slider-caption">
                                    <h2><a href="blog-single.html">Unlocking the scrolls of Herculaneum</a></h2>
                                    <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit...</p>
                                </div>
                            </li>-->
                            <li>
                                <img src="images/slide5.jpg" />
                         
                            </li>
							  <li>
                                <img src="images/slide6.jpg" />
                         
                            </li>
							  <li>
                                <img src="images/slide7.jpg" />
                         
                            </li>
                        </ul> <!-- /.slides -->
                    </div> <!-- /.flexslider -->
                </div> <!-- /.main-slideshow -->
            </div> <!-- /.col-md-12 -->
            
            <div class="col-md-4">
                <div class="widget-item">
                    <div class="request-information">
                        <h1 class="widget-title">Request Information</h1>
                        <div class="request-info clearfix"> 
                            <form method="post" action="php/contact.php" runat="server" name="contactform" id="contactform">
                            <div class="full-row">
                                <label for="cat">Course:</label>      
                                 
                                <div class="input-select">
                                     <asp:DropDownList ID="cat" name="cat" class="postform" runat="server"></asp:DropDownList>        
                                 
                                       
                                </div> <!-- /.input-select -->  
                            </div> <!-- /.full-row -->

                            <div class="full-row">
                                <label for="yourname">Contact No.:</label>
                                <input type="text" id="contact" name="contact">
                                </div> <!-- /.input-select -->
                           

                            <div class="full-row">
                                <label for="yourname">Full Name:</label>
                                <input type="text" id="yourname" name="yourname">
                            </div> <!-- /.full-row -->

                            <div class="full-row">
                                <label for="email-id">Email Address:</label>
                                <input type="text" id="email" name="email">
                            </div> <!-- /.full-row -->
                            
                            <div class="full-row">
                                <div class="submit_field">
                                    <span class="small-text pull-left"></span>
                                    <input class="mainBtn pull-right" id="submit" type="submit" name="send" value="Send"><br />
                                </div> <!-- /.submit-field -->
                            </div> <!-- /.full-row -->

                        </form>
                        </div> 
                        
                        
                        <!-- /.request-info -->
                    </div> <!-- /.request-information -->
                </div> <!-- /.widget-item -->
            </div> <!-- /.col-md-4 -->
        </div>
    </div>


    <div class="container">
        <div class="row">
            
            <!-- Here begin Main Content -->
            <div class="col-md-8">
                <div class="row">
                    <div class="col-md-12">
                        <div class="widget-item">
                            <h2 class="welcome-text">Welcome to Saraswati Institute Of Tetchnology & Management</h2>
                         
                            <p><strong>Saraswati Institute Of Tetchnology & Management( a specific and unique coaching for Computer & Hardware Networking) Established in 2000 It is one of the most prestigious computer institutes of Gauspur Ghazipur. The Institute provides ample opportunities for both students and staff of various disciplines for a fruitful interaction. On the other hand it has facilities for the development of the most mordern Knowledge in Computer Science and Hardware Networking.</strong></br></br></p>
                        </div> <!-- /.widget-item -->
                    </div> <!-- /.col-md-12 -->
                </div> <!-- /.row -->

                <div class="row">
                    
                    <!-- Show Latest Blog News -->
                 
                    <!-- Show Latest Events List -->
                     <div class="col-md-12">

         

                <div class="widget-main">
                    <div class="widget-main-title">
                        <h4 class="widget-title">Our Gallery</h4>
                    </div>
                    <div class="widget-inner">
                       
                         <uc4:get_gallery runat="server" ID="get_gallery" />
                        <a href="gallery.aspx">View All</a>
                         <!-- /.galler-small-thumbs -->
                    </div> <!-- /.widget-inner -->
                </div> <!-- /.widget-main -->

            </div>
                   <%-- <div class="col-md-6">
                        <div class="widget-main">
                            <div class="widget-main-title">
                                <h4 class="widget-title">Events</h4>
                            </div> <!-- /.widget-main-title -->
                            <div class="widget-inner">
                                <div class="event-small-list clearfix">
                                    <div class="calendar-small">
                                        <span class="s-month">Jan</span>
                                        <span class="s-date">24</span>
                                    </div>
                                    <div class="event-small-details">
                                        <h5 class="event-small-title"><a href="event-single.html">Nelson Mandela Memorial Tribute</a></h5>
                                        <p class="event-small-meta small-text">Cramton Auditorium 9:00 AM to 1:00 PM</p>
                                    </div>
                                </div>
                                <div class="event-small-list clearfix">
                                    <div class="calendar-small">
                                        <span class="s-month">Jan</span>
                                        <span class="s-date">24</span>
                                    </div>
                                    <div class="event-small-details">
                                        <h5 class="event-small-title"><a href="event-single.html">OVADA Oxford Open</a></h5>
                                        <p class="event-small-meta small-text">Posner Center 4:30 PM to 6:00 PM</p>
                                    </div>
                                </div>
                                <div class="event-small-list clearfix">
                                    <div class="calendar-small">
                                        <span class="s-month">Jan</span>
                                        <span class="s-date">24</span>
                                    </div>
                                    <div class="event-small-details">
                                        <h5 class="event-small-title"><a href="event-single.html">Filming Objects And Sculpture</a></h5>
                                        <p class="event-small-meta small-text">A70 Cyert Hall 12:00 PM to 1:00 PM</p>
                                    </div>
                                </div>
                            </div> <!-- /.widget-inner -->
                        </div> <!-- /.widget-main -->
                    </div>--%> <!-- /.col-md-6 -->
                    
                </div> <!-- /.row -->
                
               <!-- /.row -->

            </div> <!-- /.col-md-8 -->
               <div class="col-md-4">
                        <uc3:news runat="server" ID="news" /><!-- /.widget-main -->
                    </div> <!-- /col-md-6 -->
                    
            <!-- Here begin Sidebar -->
           
        </div>
          <div class="row">
                    <div class="col-md-12">
                        <div class="widget-main">
                            <div class="widget-main-title">
                                <h4 class="widget-title">Our Branches</h4>
                            </div> <!-- /.widget-main-title -->
                            <div class="widget-inner">
                                <div class="our-campus clearfix">
                                    <ul>
                                        <li><h4>Near Ansari School Mohammdabad</h4></li>
                                        <li><h4>&nbsp;&nbsp;|| &nbsp;&nbsp;Near Railway Station Yusufpur</h4></li>
                                        <li><h4>&nbsp;&nbsp;|| &nbsp;&nbsp;Kamalpur Chandauli</h4></li>
                                        <li><h4>&nbsp;&nbsp;|| &nbsp;&nbsp;Gangauli Kasimabad</h4></li>
                                         <li><h4>&nbsp;&nbsp;|| &nbsp;&nbsp;Kathwamod</h4></li>
                                    </ul>
                                </div>
                            </div>
                        </div> <!-- /.widget-main -->
                    </div> <!-- /.col-md-12 -->
                </div>
    </div>

    <!-- begin The Footer -->
    <footer class="site-footer">
      <uc2:footer runat="server" ID="footer" />
    </footer> <!-- /.site-footer -->


    <script src="bootstrap/js/bootstrap.min.js"></script>
    <script src="js/plugins.js"></script>
    <script src="js/custom.js"></script>

   
</body>
</html>
