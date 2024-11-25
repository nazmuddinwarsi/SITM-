<%@ Page Language="C#" AutoEventWireup="true" CodeFile="search_marksheet.aspx.cs" Inherits="search_marksheet" %>

<%@ Register Src="~/controls/menu.ascx" TagName="menu" TagPrefix="uc1" %>
<%@ Register Src="~/controls/footer.ascx" TagName="footer" TagPrefix="uc2" %>

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
    <link href="/bootstrap/css/bootstrap.css" rel="stylesheet" media="screen">
    <link href="/css/font-awesome.min.css" rel="stylesheet" media="screen">
    <link href="/css/animate.css" rel="stylesheet" media="screen">
    
    <link href="/style.css" rel="stylesheet" media="screen">
        
    <!-- Favicons -->
    <link rel="apple-touch-icon-precomposed" sizes="144x144" href="/images/ico/apple-touch-icon-144-precomposed.png">
    <link rel="apple-touch-icon-precomposed" sizes="114x114" href="/images/ico/apple-touch-icon-114-precomposed.png">
    <link rel="apple-touch-icon-precomposed" sizes="72x72" href="/images/ico/apple-touch-icon-72-precomposed.png">
    <link rel="apple-touch-icon-precomposed" href="/images/ico/apple-touch-icon-57-precomposed.png">
    <link rel="shortcut icon" href="/images/ico/favicon.ico">
        <link href="/css/login-box.css" rel="stylesheet" type="text/css" />

    <script src="/js/my_validation.js" type="text/javascript"></script>
    <!-- JavaScripts -->
    <script src="/js/jquery-1.10.2.min.js"></script>
    <script src="/js/jquery-migrate-1.2.1.min.js"></script>
    <script src="/js/modernizr.js"></script>
    <!--[if lt IE 8]>
	<div style=' clear: both; text-align:center; position: relative;'>
            <a href="http://www.microsoft.com/windows/internet-explorer/default.aspx?ocid=ie6_countdown_bannercode"><img src="http://storage.ie6countdown.com/assets/100/images/banners/warning_bar_0000_us.jpg" border="0" alt="" /></a>
        </div>
    <![endif]-->
</head>
<body>
   <form id="form1" runat="server">
     <uc1:menu runat="server" ID="menu" />
    
    
      <div class="container">
        <div class="page-title clearfix">
            <div class="row">
                <div class="col-md-12">
                    <h6><a href="index.html">Home</a></h6>
                    <h6><a href="#">Admission</a></h6>
                    <h6><span class="page-active">Admission</span></h6>
                </div>
            </div>
        </div>
    </div>


    <div class="container">
        <div class="section-content">
          <div class="row">
          
           <div class="col-md-6 col-md-push-3">
            <div class="contact-page-content">
                <h4 class="text-theme-colored mt-0 pt-5"> Certificate Verifcation</h4>
             
                <div name="login-form" >
                  <div class="row">
                    <div class="form-group col-md-12">
                   
                        <asp:TextBox ID="txtcourse" class="form-control" runat="server" placeholder="Enter Enrollment No."></asp:TextBox>
                    
                    </div>
                  </div>
              
                 
                  <div class="form-group pull-right mt-10">
                    
                  </div>
                  <div class="clear text-center pt-10">
          <asp:Button ID="Button1" class="mainBtn" runat="server" Text="Submit"  OnClick="Button1_Click"/>
                  </div>
                 <%-- <div class="clear text-center pt-10">
                    <a class="btn btn-dark btn-lg btn-block no-border mt-15 mb-15" href="#" data-bg-color="#3b5998">Login with facebook</a>
                    <a class="btn btn-dark btn-lg btn-block no-border" href="#" data-bg-color="#00acee">Login with twitter</a>
                  </div>--%>
                </div>
                </div>
              </div>
          </div>
        </div>  
      </div>

    <!-- begin The Footer -->
    <footer class="site-footer">
      <uc2:footer runat="server" ID="footer" />
    </footer> <!-- /.site-footer -->


    <script src="/bootstrap/js/bootstrap.min.js"></script>
    <script src="/js/plugins.js"></script>
    <script src="/js/custom.js"></script>

    </form>
    

</body>
</html>