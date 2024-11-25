<%@ Page Language="C#" AutoEventWireup="true" CodeFile="onlinetest.aspx.cs" Inherits="onlinetest" %>

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
    
    
      <div class="container">
        <div class="page-title clearfix">
            <div class="row">
                <div class="col-md-12">
                    <h6><a href="index.html">Home</a></h6>
                    <h6><a href="#">Student Zone</a></h6>
                    <h6><span class="page-active">Online Test</span></h6>
                </div>
            </div>
        </div>
    </div>


    <div class="container">
         
        <div class="row">
          
            <!-- Here begin Main Content -->
            <div class="col-md-8">
              
                <div class="row">
                    <div class="col-md-6">
                        <div class="blog-post-container">
                           
                            <div class="blog-post-inner">

                                 <div class="request-information">
                        <h1 class="widget-title">Online Test</h1>
                        <div class="request-info clearfix"> 
                            <div class="full-row">
                                <label for="cat">Select Quiz:</label>      
                                    <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>
            <asp:UpdatePanel ID="UpdatePanel1" runat="server">
                <ContentTemplate>
                                <div class="input-select">
                                     <asp:DropDownList ID="cat" name="cat" class="postform" runat="server"></asp:DropDownList>        
                                 
                                       
                                </div> <!-- /.input-select -->  
                     </div> <!-- /.full-row -->

                          
                            
                            <div class="full-row">
                                <div class="submit_field">
                                  
                                    <asp:LinkButton ID="LinkButton1" class="mainBtn pull-right" runat="server" OnClick="LinkButton1_Click">Go</asp:LinkButton><br />
                                </div> <!-- /.submit-field -->
                            </div> <!-- /.full-row -->

                    </ContentTemplate>
                </asp:UpdatePanel>
                           

                        </div>

                              
                               
                            </div>
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
</body>
</html>
