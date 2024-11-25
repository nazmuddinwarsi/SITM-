<%@ Page Language="C#" AutoEventWireup="true" CodeFile="MarksheetTyping.aspx.cs" Inherits="MarksheetTyping" %>

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
      <script type = "text/javascript">
        function PrintPanel() {
            var panel = document.getElementById("<%=pnlContents.ClientID %>");
         <%--   var panel2 = document.getElementById("<%=pnlContents2.ClientID %>");--%>
            var printWindow = window.open('', '');
            printWindow.document.open();
            printWindow.document.write('<html><head>');
            printWindow.document.write('<link href="css/style-main.css" rel="stylesheet" type="text/css" media="screen">');
            //printWindow.document.write('<link href="css/bootstrap.min.css" rel="stylesheet" type="text/css">');
            //printWindow.document.write('<link href="css/responsive.css" rel="stylesheet" type="text/css">');
            //printWindow.document.write(' <link href="css/custom-bootstrap-margin-padding.css" rel="stylesheet" type="text/css">');
           
            printWindow.document.write('</head><body>');
          printWindow.document.write('<div class="main-content">');
          printWindow.document.write('<section>');
          printWindow.document.write('<div class="container pb-60">');
          printWindow.document.write('<div class="section-content">');
          printWindow.document.write('<div class="row">');
           printWindow.document.write(panel.innerHTML);
            printWindow.document.write('</div>');
            printWindow.document.write('</div>');
            printWindow.document.write('</div>');
            printWindow.document.write('</section">');
            printWindow.document.write('</div>');
           // printWindow.document.write(panel2.innerHTML);
            printWindow.document.write('</body></html>');
            printWindow.document.close();
            setTimeout(function () {
                printWindow.print();
            }, 500);
            return false;
        }
    </script>
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


    
     <div class="container pb-60">
        <div class="section-content">
          <div class="row">
           <center><h4 class="text-theme-colored mt-0 pt-5 col-md-push-2"> Certificate Verifcation</h4></center>  
               <asp:Panel ID="pnlContents" runat="server">
                 <%--  <table id="bg">
                       <tr><td><h4 style="color:#183884; padding-top:115px;"><%=course %></h4></td></tr>
                   </table>--%>
                <div  class="col-md-12  col-md-push-1" style="position: relative;">
                      <div  style="position: absolute;top: 10px; left: 64px; color:#000000; text-align:right">
                       <br />
                       <b>U.P. Regd. No.1475/2012-13</b>
                        
                        </div>
                      <div  style="position: absolute;top: 10px; left: 730px; color:#000000; text-align:right">
                       <br />
                       <b>Regd. No. : HQ7270270</b><br />
                        
                        </div>
                     <img src="images/MarksheetTyping2.jpg" style=" width:930px; height:1325px;"  >
           <div class="col-md-9" style="position: absolute;top:10px; left: 0px;">
          
             
                
                  <div class="col-md-11 " style="padding-top:35px; padding-left:35px;">
                 <img src="images/resultbanner.png" width="850px" height="155px" style="position: absolute;top: 35px; left: 35px;"/>
                  </div>
                   <div style="width:268px;">
                        <img src="<%=photo %>"  width="140px" height="178px" style=" position: absolute;top: 230px; right: -15px;" /><br />
                       
                        </div>
          <%--       <div  style=" width:812px; padding-left:50px;color:#000000;">
                        <h3 style="color:#183884; position: absolute;top: 404px; left: 63px;"><%=course %></h3>
                   
                        </div>
                
                    <div  style="position: absolute;top: 455px; width:870px; left: 64px;color:#000000;">
                       
                        <b>Student's Name : <%=stuname %></b><br />
                      <b>Father's Name : <%=father %></b><br />
                        <b>Mother's Name : <%=mother %></b><br />
                       
                        </div>
                    <div  style="position: absolute;top: 437px; right: -64px; width:268px;color:#000000;">
                       <br /><br />
                       <b>Duration : <%=dur %></b><br />
                       <%-- <b>Certificate ID : <%=cert_id %></b><br /> 
                        <b>Enrolment No. : <%=regno %></b>
                        </div>--%>
                </div>

                       <div  >
        <div > 
                    <div  style="position: absolute;top: 583px; left: 67px; width:826px;  color:#000000;">
                       
                  <p style="font-family:'Monotype Corsiva'; font-size:30px; line-height:40px;text-align: justify;">&nbsp;&nbsp; &nbsp;This is to certify that 
                      <strong style="font-family:Arial;font-size:24px;"><%=stuname %></strong>  S/O  
                      <strong style="font-family:Arial;font-size:24px;"><%=father %></strong>  and 
                      <strong style="font-family:Arial;font-size:24px;"> <%=mother %></strong> 
                      <strong style="font-family:Arial;font-size:24px;">Enrollment No :  <%=regno %></strong>  having pursued Hindi Typing (<%=Hindi %> WPM) and English Typing (<%=English %> WPM) from <%=FromDate %> to <%=ToDate %> with grade '<%=Grade %>'.
                      </p> <br />
                      <p style="font-family:'Monotype Corsiva'; font-size:30px; line-height:40px;text-align: center;"> 
Given on this <%=GivenDate %> at <b><%=centre_name %> (<%=centre_code %>)</b>
                             </p>

 
                        
                        </div>
                    
         </div>
                <div >
                 <div  style=" position: absolute; top: 1049px; left:195px; color:#000000;">
                  <%-- <b style="font-style:italic"><%=website %></b>--%>
                      <b style="font-style:italic; font-size:25px">To verify this certificate visit : www.sitmup.in</b>
                     </div>

                     <div  style=" position: absolute; top: 1095px; left:100px; color:#000000;">
                  <%-- <b style="font-style:italic"><%=website %></b>--%>
                      <b style="font-size:23px">ATC :- <%=centre_name %> (<%=centre_code %>)</b>
                     </div>
                        <div  style=" position: absolute; top: 1182px; left:427px; color:#000000;">
                           <img src='https://api.qrserver.com/v1/create-qr-code/?size=150x150&data=http://sitmup.in/marksheetTyping.aspx?application_no=<%=regno %>'  width="100px" height="100px"/><br /><br />
                
                           </div>
                   
                     <div  style=" position: absolute; top: 1258px; left:75px; color:#000000;">
                         
                  <b>Issue Date : <%=GivenDate %></b>
                           </div>
                </div>
              </div>
              </div>

           </asp:Panel>
                 <div  style=" position: absolute; top: 1457px; left:650px; color:#000000; padding-top:58px;">

            <%--  <asp:Button ID="button1" runat="server" class="btn btn-dark btn-sm" Text="Print"  OnClientClick = "return PrintPanel();" />--%>
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