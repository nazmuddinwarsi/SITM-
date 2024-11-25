<%@ Page Language="C#" AutoEventWireup="true" CodeFile="branch_login.aspx.cs" Inherits="branch_login" %>

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
        <link href="css/login-box.css" rel="stylesheet" type="text/css" />

    <script src="js/my_validation.js" type="text/javascript"></script>
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
    
    
      <div class="container">
        <div class="page-title clearfix">
            <div class="row">
                <div class="col-md-12">
                    <h6><a href="index.html">Home</a></h6>
                    <h6><a href="#">Login</a></h6>
                    <h6><span class="page-active">Branch Login</span></h6>
                </div>
            </div>
        </div>
    </div>


    <div class="container">
        <div class="row">

            <!-- Here begin Main Content -->
            <div class="col-md-12">

                <div class="row">
                    <div class="col-md-12">
                        <div class="blog-post-container">
                            <div >
                                <center>
                                    <div id="login-box">

<H2>Branch Login</H2>

<div id="login-box-name" style="margin-top:20px;">C Code:</div><div id="login-box-field" style="margin-top:20px;"><input name="username" id="emailid" class="form-login" title="Username" value="" size="30" maxlength="2048" type="text" /><div style="color:White;" id="err1"></div></div>




<div id="login-box-name">Password:</div><div id="login-box-field"><input name="password" type="password" id="pass" class="form-login" title="Password" value="" size="30" maxlength="2048" /><div id="err2" style="color:White;"></div>
</div>
<br />
<span class="login-box-options"><input type="checkbox" name="1" value="1" /> Remember Me <a href="javascript://" onclick="forget();" style="margin-left:30px;">Forgot password?</a></span>
<br />
<br />
<span>
<input type="hidden" value="0" name="check" id="check" />

</span>
<a href="javascript://" onclick="form_submit();" ><img src="images/login-btn.png" width="103" height="42" style="margin-left:90px;" /></a>






</div>
                               </center>
                            </div> <!-- /.blog-post-image -->
                       
                        </div> <!-- /.blog-post-container -->
                    </div> <!-- /.col-md-12 -->
                </div> <!-- /.row -->

            
               
            </div> <!-- /.col-md-8 -->

            <!-- Here begin Sidebar -->
           
    
        </div> <!-- /.row -->
    </div>

    <!-- begin The Footer -->
    <footer class="site-footer">
      <uc2:footer runat="server" ID="footer" />
    </footer> <!-- /.site-footer -->


    <script src="bootstrap/js/bootstrap.min.js"></script>
    <script src="js/plugins.js"></script>
    <script src="js/custom.js"></script>

    </form>
     <script type="text/javascript">
function form_submit()
{
if(document.getElementById("emailid").value=="")

{
alert("Username can't be left blank");
}
else if(document.getElementById("pass").value=="")
{
alert("Password can't be left blank");
}
else
{
document.getElementById("check").value=1;
form1.submit();


document.getElementById("check").value=document.getElementById("check").defaultValue;

}
}
</script>

     <script type="text/javascript">
         function forget() {
             {
                 alert("Please Contact Your Admin");
             }
          
         }
</script>

</body>
</html>

