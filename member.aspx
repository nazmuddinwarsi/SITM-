<%@ Page Language="C#" AutoEventWireup="true" CodeFile="member.aspx.cs" Inherits="member" %>
<%@ Register Src="~/controls/menu.ascx" TagName="menu" TagPrefix="uc1" %>
<%@ Register Src="~/controls/footer.ascx" TagName="footer" TagPrefix="uc2" %>
<%@ Register Src="~/controls/news.ascx" TagName="news" TagPrefix="uc3" %>
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
    <form id="form1" runat="server">
     <uc1:menu runat="server" ID="menu" />
    
    
    
    
    <!-- Being Page Title -->
    <div class="container">
        <div class="page-title clearfix">
            <div class="row">
                <div class="col-md-12">
                    <h6><a href="index.html">Home</a></h6>
                    <h6><span class="page-active">Corporate Member</span></h6>
                </div>
            </div>
        </div>
    </div>


    <div class="container">
        <div class="row">

     
            <div class="row">
            <div class="col-md-12">
             
                  <center>
                    
                    <div class="col-md-1"  >
                      <div class="member">
                            <a class="fancybox" rel="gallery1" href="images/member/Parmanand_Rai.jpg">
                                <div class="gallery-thumb">
                                    <img src="images/member/Parmanand_Rai-thumb.jpg" alt="" />
                                </div>
                                <div class="gallery-content">
                                    <h4 class="gallery-title">Parmanand Rai</h4>
                                    <p class="small-text">Founder/Chairman</p>
                                </div>
                            </a>
                        </div> <!-- /.gallery-item -->
                    </div> 
                      </center>    <!-- /.col-md-4 -->
                        </div>
             
                </div>
        <center>
            <div class="row">
                    
                    <div class="col-md-4" data-cat="1">
                        <div class="member">
                            <a class="fancybox" rel="gallery1" href="images/member/ashu.jpg">
                                <div class="gallery-thumb">
                                    <img src="images/member/ashu-thumb.jpg" alt="" />
                                </div>
                                <div class="gallery-content">
                                    <h4 class="gallery-title">Ashutosh Rai</h4>
                                    <p class="small-text">Managing Director</p>
                                </div>
                            </a>
                        </div> <!-- /.gallery-item -->
                    </div> <!-- /.col-md-4 -->

                    <div class="col-md-4 mix nature" data-cat="2">
                        <div class="member">
                            <a class="fancybox" rel="gallery1" href="images/member/Alok-Sharma.jpg">
                                <div class="gallery-thumb">
                                    <img src="images/member/Alok-Sharma-thumb.jpg" alt="" />
                                </div>
                                <div class="gallery-content">
                                    <h4 class="gallery-title">Alok Sharma</h4>
                                    <p class="small-text">Cheif Excutive Officer</p>
                                </div>
                            </a>
                        </div> <!-- /.gallery-item -->
                    </div> 
                <!-- /.col-md-4 -->

                    <div class="col-md-4 mix campus" data-cat="2">
                        <div class="member">
                            <a class="fancybox" rel="gallery1" href="images/member/Pawan-Kumar-Mishra.jpg">
                                <div class="gallery-thumb">
                                    <img src="images/member/Pawan-Kumar-Mishra-thumb.jpg" alt="" />
                                </div>
                                <div class="gallery-content">
                                    <h4 class="gallery-title">Pawan Kumar Mishra</h4>
                                    <p class="small-text">Technical Head & Project Manager</p>
                                </div>
                            </a>
                        </div> <!-- /.gallery-item -->
                    </div> 
                </div><!-- /.col-md-4 -->
            </center>
            <center>
            <div class="row">
                 <div class="col-md-4 mix students" data-cat="2">
                        <div class="member">
                            <a class="fancybox" rel="gallery1" href="images/member/blank.jpeg">
                                <div class="gallery-thumb">
                                    <img src="images/member/blank.jpeg" alt="" />
                                </div>
                                <div class="gallery-content">
                                    <h4 class="gallery-title">Sailesh Kumar</h4>
                                    <p class="small-text">Sr. Office Excutive</p>
                                </div>
                            </a>
                        </div> <!-- /.gallery-item -->
                    </div> <!-- /.col-md-4 -->
                    <div class="col-md-4 mix travel" data-cat="3">
                        <div class="member">
                            <a class="fancybox" rel="gallery1" href="images/member/MD-Imran.jpeg">
                                <div class="gallery-thumb">
                                    <img src="images/member/MD-Imran-thumb.jpg" alt="" />
                                </div>
                                <div class="gallery-content">
                                    <h4 class="gallery-title">MD Imran</h4>
                                    <p class="small-text">Office Assistance</p>
                                </div>
                            </a>
                        </div> <!-- /.gallery-item -->
                    </div> <!-- /.col-md-4 -->

                   
                 <div class="col-md-4 mix travel" data-cat="3">
                        <div class="member">
                            <a class="fancybox" rel="gallery1" href="images/member/Pawan-Kumar.jpg">
                                <div class="gallery-thumb">
                                    <img src="images/member/Pawan-Kumar-thumb.jpg" alt="" />
                                </div>
                                <div class="gallery-content">
                                    <h4 class="gallery-title">Mr. Pawan Kumar</h4>
                                    <p class="small-text">Office Assistance</p>
                                </div>
                            </a>
                        </div> <!-- /.gallery-item -->
                    </div> <!-- /.col-md-4 -->
                </div>

                </center>

                <center>
            <div class="row">
                 <div class="col-md-4 mix students" data-cat="2">
                        <div class="member">
                            <a class="fancybox" rel="gallery1" href="images/member/blank.jpeg">
                                <div class="gallery-thumb">
                                    <img src="images/member/blank.jpeg" alt="" />
                                </div>
                                <div class="gallery-content">
                                    <h4 class="gallery-title">Pramod Kumar</h4>
                                    <p class="small-text">Sr. Examination Excutive</p>
                                </div>
                            </a>
                        </div> <!-- /.gallery-item -->
                    </div> <!-- /.col-md-4 -->
                    <div class="col-md-4 mix travel" data-cat="3">
                        <div class="member">
                            <a class="fancybox" rel="gallery1" href="images/member/Abhishek-Rai.jpeg">
                                <div class="gallery-thumb">
                                    <img src="images/member/Abhishek-Rai-thumb.jpg" alt="" />
                                </div>
                                <div class="gallery-content">
                                    <h4 class="gallery-title">Abhishek Rai</h4>
                                    <p class="small-text">Examination Excutive</p>
                                </div>
                            </a>
                        </div> <!-- /.gallery-item -->
                    </div> <!-- /.col-md-4 -->

                   
                 <div class="col-md-4 mix travel" data-cat="3">
                        <div class="member">
                            <a class="fancybox" rel="gallery1" href="images/member/blank.jpeg">
                                <div class="gallery-thumb">
                                    <img src="images/member/blank.jpeg" alt="" />
                                </div>
                                <div class="gallery-content">
                                    <h4 class="gallery-title">Pranjal Pradhan</h4>
                                   <%-- <p class="small-text">Office Assistance</p>--%>
                                </div>
                            </a>
                        </div> <!-- /.gallery-item -->
                    </div> <!-- /.col-md-4 -->
                </div>

                </center>

             <center>
            <div class="row">
             <div class="col-md-3 mix travel" data-cat="3">
                        <div class="member">
                            <a class="fancybox" rel="gallery1" href="images/member/Abhishek-Pradhan.jpeg">
                                <div class="gallery-thumb">
                                    <img src="images/member/Abhishek-Pradhan-thumb.jpg" alt="" />
                                </div>
                                <div class="gallery-content">
                                    <h4 class="gallery-title">Abhishek Pradhan</h4>
                                    <p class="small-text">Placement Head</p>
                                </div>
                            </a>
                        </div> <!-- /.gallery-item -->
                    </div> <!-- /.col-md-4 -->
                    <div class="col-md-3 mix travel" data-cat="3">
                        <div class="member">
                            <a class="fancybox" rel="gallery1" href="images/member/Pawan-Kumar-Verma.jpeg">
                                <div class="gallery-thumb">
                                    <img src="images/member/Pawan-Kumar-Verma-thumb.jpg" alt="" />
                                </div>
                                <div class="gallery-content">
                                    <h4 class="gallery-title">Pawan Verma</h4>
                                    <p class="small-text">Sr. Marketing Excutive</p>
                                </div>
                            </a>
                        </div> <!-- /.gallery-item -->
                    </div> <!-- /.col-md-4 -->

                   
                 <div class="col-md-3 mix travel" data-cat="3">
                        <div class="member">
                            <a class="fancybox" rel="gallery1" href="images/member/blank.jpeg">
                                <div class="gallery-thumb">
                                    <img src="images/member/blank.jpeg" alt="" />
                                </div>
                                <div class="gallery-content">
                                    <h4 class="gallery-title">Harendra Kumar</h4>
                                    <p class="small-text">Marketing Excutive</p>
                                </div>
                            </a>
                        </div> <!-- /.gallery-item -->
                    </div> <!-- /.col-md-4 -->
        
                    <div class="col-md-3 mix travel" data-cat="3">
                        <div class="member">
                            <a class="fancybox" rel="gallery1" href="images/member/Yogesh-kumar.jpg">
                                <div class="gallery-thumb">
                                    <img src="images/member/Yogesh-kumar-thumb.jpg" alt="" />
                                </div>
                                <div class="gallery-content">
                                    <h4 class="gallery-title">Yogesh Kumar</h4>
                                    <p class="small-text">Marketing Excutive</p>
                                </div>
                            </a>
                        </div> <!-- /.gallery-item -->
                    </div> <!-- /.col-md-4 -->
                </div>

                </center>
                    </div> <!-- /#Grid -->

              </div> <!-- /.row -->

              
           <!-- /.col-md-9 -->

       <!-- /.row -->
        
   
       <!-- /.container -->

    <!-- begin The Footer -->
  <footer class="site-footer">
      <uc2:footer runat="server" ID="footer" />
    </footer><!-- /.site-footer -->


    <script src="bootstrap/js/bootstrap.min.js"></script>
    <script src="js/plugins.js"></script>
    <script src="js/custom.js"></script>
    </form>
</body>
</html>
