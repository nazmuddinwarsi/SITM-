<%@ Page Language="C#" AutoEventWireup="true" CodeFile="courses.aspx.cs" Inherits="courses" %>

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
                    <h6><a href="#">Courses</a></h6>
                    <h6><span class="page-active"><%=course_id %></span></h6>
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
                        <div class="widget-main">
                            <div class="widget-inner">
                                
                                    <asp:GridView ID="GridView1" runat="server" CellPadding="1" Width="100%"
                                    AutoGenerateColumns="False"  AllowPaging="False" BackColor="White" BorderColor="#CCCCCC"  
                                    BorderStyle="None" BorderWidth="1px"  
                                     Height="68px">
                                       
                                        <FooterStyle BackColor="White" ForeColor="#000066" />
                                        <PagerStyle BackColor="White" ForeColor="#000066" HorizontalAlign="Left" />
                                        <SelectedRowStyle BackColor="#669999" Font-Bold="True" ForeColor="White" />
                                        <HeaderStyle BackColor="#006699" Font-Bold="True" ForeColor="White" />
                                       
                                        <AlternatingRowStyle CssClass="alt" Wrap="True"></AlternatingRowStyle>
                                        <RowStyle ForeColor="#000066" />
                             <Columns>
 
                             



                                         
                                            <asp:TemplateField HeaderText="Courses Name" >
                                                <ItemTemplate>
                                                    <asp:Label ID="Courses" runat="server" ForeColor="Black" Font-Size="12px" Text='<%#Eval("course_name") %>'></asp:Label>
                                                </ItemTemplate>

<HeaderStyle Width="40%"></HeaderStyle>
                                            </asp:TemplateField>
                                  
                                            <asp:TemplateField HeaderText="Duration" >
                                                <ItemTemplate>
                                                    <asp:Label ID="duration" runat="server" ForeColor="Black" Font-Size="12px" Text='<%#Eval("duration") %>'></asp:Label>
                                                </ItemTemplate>

<HeaderStyle Width="20%"></HeaderStyle>
                                            </asp:TemplateField>
                                      <asp:TemplateField HeaderText="Eligibility" >
                                                <ItemTemplate>
                                                    <asp:Label ID="eligibility" runat="server" ForeColor="Black" Font-Size="12px" Text='<%#Eval("eligibility") %>'></asp:Label>
                                                </ItemTemplate>

<HeaderStyle Width="20%"></HeaderStyle>
                                            </asp:TemplateField>
                                            
                                  <asp:TemplateField HeaderText="Fee" >
                                                <ItemTemplate>
                                                    <asp:Label ID="fee" runat="server" ForeColor="Black" Font-Size="12px" Text='<%#Eval("fee") %>'></asp:Label>
                                                </ItemTemplate>

<HeaderStyle Width="20%"></HeaderStyle>
                                            </asp:TemplateField>
                                            
                             
                                           
                                           
                                            
                                            
                                          
                                          
                                                                      

                                        </Columns>
                                    </asp:GridView>

                            </div> <!-- /.widget-inner -->
                        </div> <!-- /.widget-main -->
                    </div> <!-- /.col-md-12 -->
                </div> <!-- /.row -->

            
               
            </div> <!-- /.col-md-8 -->

            <!-- Here begin Sidebar -->
            <div class="col-md-4">
                
             <uc3:news runat="server" ID="news" /> <!-- /.widget-main -->

            
            </div> <!-- /.col-md-4 -->
    
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
