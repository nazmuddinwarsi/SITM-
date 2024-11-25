<%@ Page Language="C#" AutoEventWireup="true" CodeFile="starttest.aspx.cs" Inherits="admin_starttest" %>

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
                    <div class="col-md-12">
                        <div class="blog-post-container">
                              
                            <div class="blog-post-inner">
                            
                        
                                   <center>
<div>

<asp:Timer ID="timer1" runat="server"
Interval="1000" OnTick="timer1_tick"></asp:Timer>
</div>
 
<div> <asp:ScriptManager ID="ScriptManager1" runat="server">
</asp:ScriptManager>
<asp:UpdatePanel id="updPnl"
runat="server" UpdateMode="Conditional">
<ContentTemplate>
<asp:Label ID="lblTimer" runat="server" Font-Bold="True" Font-Names="Arial"
        Font-Size="X-Large" ForeColor="#6600CC"></asp:Label><br />
    <asp:Label ID="lblque" runat="server" Font-Bold="True" Font-Names="Arial"
        Font-Size="X-Large" ForeColor="#6600CC"></asp:Label>

</ContentTemplate>
<Triggers>
<asp:AsyncPostBackTrigger ControlID="timer1" EventName ="tick" />
</Triggers>
</asp:UpdatePanel>
</div>
</center>
                              ;
                <asp:Panel ID="Panel1" runat="server">
            

             <asp:Label ID="Label6" runat="server" BorderStyle="None" style="font-weight: 700; float:left"></asp:Label>&nbsp;&nbsp;&nbsp;
       
           <div style="float:right"><asp:Label ID="Label3" runat="server" BorderStyle="None" style="font-weight: 700; float:left"></asp:Label></div>     
        <asp:Label ID="Label2" runat="server" BorderStyle="None" style="font-weight: 700; float:left; "></asp:Label>&nbsp;&nbsp;&nbsp;
             
              </asp:Panel>
                                        <table style="width: 99%; float: left; height: 301px;">
        <tr>
         
            <asp:MultiView ID="MultiView1" runat="server">
               
                <asp:View ID="View2" runat="server">
            <td style="width: 954px">
       
            
         <div style="color:black">


            


             <asp:Label ID="Label7" runat="server" Font-Bold="True" style="text-decoration: underline"></asp:Label><br />
        <asp:Label ID="Label5" runat="server" Font-Bold="True" style="text-decoration: underline"></asp:Label><br /><br />
        <asp:Label ID="Label1" runat="server" Font-Bold="True"></asp:Label>
        <br /><br /> <hr />
        <br />
        <asp:RadioButton ID="RadioButton1" runat="server"  GroupName="a"  /><br />
        <asp:RadioButton ID="RadioButton2" runat="server" GroupName="a"  />
        <br />
        <asp:RadioButton ID="RadioButton3" runat="server"  GroupName="a"  /><br />
        <asp:RadioButton ID="RadioButton4" runat="server"  GroupName="a"  /></div>
        <br /><br />
        

        <table style="width: 169px"><tr>
             <td> <asp:Button ID="btnSkip" runat="server" Text="Previous" OnClick="btnSkip_Click" /></td>
            <td>
        <asp:Button ID="btnSubmit" runat="server" Text="Next" OnClick="btnSubmit_Click" /></td>
      
                    </tr>
                    </table><br /><hr />
       
              
                
                <asp:LinkButton ID="btnTryAgain" runat="server" >Back To Home Page</asp:LinkButton>
                &nbsp;
                    
                    &nbsp;&nbsp;
                    <asp:LinkButton ID="btnBackToHomePage" runat="server" >Try Again</asp:LinkButton>
                <br />
                <br />
                <br />
                <br />
                <br />
                <br />
               </asp:View>
                
            </asp:MultiView>
            <td>&nbsp;</td>
        </tr>
    </table>
                        </div> <!-- /.blog-post-container -->
                    </div> <!-- /.col-md-12 -->
                </div> <!-- /.row -->
<div class="col-md-12" style="padding-top:20px;">
        <asp:Panel ID="Panel2" runat="server" >
   
            
                <div id="bar1" class="barfiller">

  <div class="tipWrap">

  <span class="tip"></span>

  </div>

  <span class="fill" data-percentage="<%=img %>"></span>
               
</div>
       
            </asp:Panel>
</div>
            
               
            </div> <!-- /.col-md-8 -->
             
            <!-- Here begin Sidebar -->
          
        </div> <!-- /.row -->
              <div class="col-md-4">
    <asp:Panel ID="pnlrank" runat="server">
         <div><img src="<%=rank %>" /></div>    
        </asp:Panel>
                   </div>

        
    </div>
        </div>
       <asp:TextBox ID="txtcheck" runat="server"  OnTextChanged="txtcheck_TextChanged"></asp:TextBox>
    <!-- begin The Footer -->
    <footer class="site-footer">
      <uc2:footer runat="server" ID="footer" />
    </footer> <!-- /.site-footer -->


    <script src="bootstrap/js/bootstrap.min.js"></script>
    <script src="js/plugins.js"></script>
    <script src="js/custom.js"></script>
       
        <script src="js/jquery.barfiller.js" type="text/javascript"></script>
<script type="text/javascript">

    $(document).ready(function () {

        $('#bar1').barfiller();
      

    });

</script>

    </form>
</body>
</html>