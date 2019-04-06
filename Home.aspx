<%@ Page Title="" Language="C#" MasterPageFile="~/Home.Master" AutoEventWireup="true" CodeBehind="Home.aspx.cs" Inherits="Project.WebForm1" %>

<%@ OutputCache Duration="30" VaryByParam="none" %>
<asp:Content ID="Content1" ContentPlaceHolderID="Bodycontentplaceholder" runat="server">

    <%-- <asp:Image ID="Image1" runat="server" ImageUrl="~/wp-content/Images/Home (2).jpg" Width="100%" />--%>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
    <link rel="stylesheet" href="Css/Design.css" media="all" />
    <%--<link rel="stylesheet" href="Css/Color.css" media="all" />--%>
    <div>
        <div id="myCarousel" class="carousel slide" data-ride="carousel" style="clip: rect(auto, auto, auto, auto)">
            <!-- Indicators -->
            <ol class="carousel-indicators">
                <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
                <li data-target="#myCarousel" data-slide-to="1"></li>
                <li data-target="#myCarousel" data-slide-to="2"></li>
                <li data-target="#myCarousel" data-slide-to="3"></li>
                <li data-target="#myCarousel" data-slide-to="4"></li>
                <li data-target="#myCarousel" data-slide-to="5"></li>
                <li data-target="#myCarousel" data-slide-to="6"></li>
                <li data-target="#myCarousel" data-slide-to="7"></li>
            </ol>

            <!-- Wrapper for slides -->
            <div class="carousel-inner">
                <div class="item active">
                    <a href="#">
                        <img src="wp-content/Images/1.jpg" style="width: 100%;" />
                    </a>
                </div>
                <div class="item">
                    <a href="#">
                        <img src="wp-content/Images/2.jpg" style="width: 100%;">
                    </a>
                </div>
                <div class="item">
                    <a href="#">
                        <img src="wp-content/Images/Brand-Website-Banner---All-5-Airtel.jpg" style="width: 100%;">
                    </a>
                </div>
                <div class="item">
                    <a href="#">
                        <img src="wp-content/Images/EVD249Brand.jpg" style="width: 100%;">
                    </a>
                </div>
                <div class="item">
                    <a href="#">
                        <img src="wp-content/Images/4.jpg" style="width: 100%;">
                    </a>
                </div>
                <div class="item">
                    <a href="#">
                        <img src="wp-content/Images/WebBanner379.jpg" style="width: 100%;">
                    </a>
                </div>
                <div class="item">
                    <a href="#">
                        <img src="wp-content/Images/3.jpg" style="width: 100%;">
                    </a>
                </div>
                <div class="item">
                    <a href="#">
                        <img src="wp-content/Images/Dom_Homepage_Desktop_1366x452_amazon.jpg" style="width: 100%;">
                    </a>
                </div>

            </div>

            <!-- Left and right controls -->
            <a class="left carousel-control" href="#myCarousel" data-slide="prev">
                <span class="glyphicon glyphicon-chevron-left"></span>
                <span class="sr-only">Previous</span>
            </a>
            <a class="right carousel-control" href="#myCarousel" data-slide="next">
                <span class="glyphicon glyphicon-chevron-right"></span>
                <span class="sr-only">Next</span>
            </a>
        </div>
    </div>
    <br />

    &nbsp;&nbsp;&nbsp;

    <asp:HyperLink ID="HyperLink1" runat="server" Font-Size="X-Large" Font-Underline="False" NavigateUrl="#Menu">Menu</asp:HyperLink>
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;

    <asp:HyperLink ID="HyperLink2" runat="server" Font-Size="X-Large" Font-Underline="False" NavigateUrl="#Reviews">Reviews</asp:HyperLink>
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    
    <asp:HyperLink ID="HyperLink3" runat="server" Font-Size="X-Large" Font-Underline="False" NavigateUrl="https://localhost/Foodora.com/AboutUs.aspx">Info</asp:HyperLink>
    <hr>
    <div class="row">
        <div class="column side">
            <div id="navbar">
                <asp:Menu ID="Menu1" CssClass="sidenav" runat="server">
                    <Items>
                        <asp:MenuItem Text="Soup" Value="Soup" NavigateUrl="#soups"></asp:MenuItem>
                        <asp:MenuItem Text="Rolls" Value="Rolls"></asp:MenuItem>
                        <asp:MenuItem Text="Sandwiches" Value="Sandwiches"></asp:MenuItem>
                        <asp:MenuItem Text="Chinese Delicacies" Value="Chinese Delicacies"></asp:MenuItem>
                        <asp:MenuItem Text="Fried Rice &amp; Noodles" Value="Fried Rice &amp; Noodles"></asp:MenuItem>
                        <asp:MenuItem Text="Starters: Veg" Value="Starters: Veg"></asp:MenuItem>
                        <asp:MenuItem Text="Starters Non-Veg" Value="StarterL Non-Veg"></asp:MenuItem>
                        <asp:MenuItem Text="Main Course: Veg" Value="Main Course: Veg"></asp:MenuItem>
                        <asp:MenuItem Text="Main Course: Non-Veg" Value="Main Course: Non-Veg"></asp:MenuItem>
                        <asp:MenuItem Text="Breads" Value="Breads"></asp:MenuItem>
                        <asp:MenuItem Text="Rice &amp; Biryani" Value="Rice &amp; Biryani"></asp:MenuItem>
                        <asp:MenuItem Text="Thali" Value="Thali"></asp:MenuItem>
                        <asp:MenuItem Text="Desserts" Value="Desserts"></asp:MenuItem>
                        <asp:MenuItem Text="Beverages" Value="Beverages"></asp:MenuItem>
                    </Items>
                </asp:Menu>
            </div>
        </div>
        <div id="Menu">
            <div class="column middle">
                <div id="soups">
                    <asp:Label ID="lblsoup" runat="server" Text="Soups" Font-Size="Larger"></asp:Label>
                </div>
                <div>
                    <asp:Image ID="imgsoup" runat="server" ImageUrl="~/wp-content/ProductImages/2302645_menu.jpg" Width="100%" />
                    <%--<hr>--%>
                    <table style="width: 100%">
                        <tr>
                            <td>Tomato Soup</td>
                            <td>&nbsp;</td>
                            <td class="righty">RS.90.00</td>
                        </tr>
                        <tr>
                            <td>&nbsp;</td>
                            <td>&nbsp;</td>
                            <td>&nbsp;</td>
                        </tr>
                        <tr>
                            <td>
                                <asp:Image ID="Image2" runat="server" ToolTip="Vegitarion" ImageUrl="~/wp-content/VegSymbol.jpg" /></td>
                            <td>&nbsp;</td>
                            <td class="righty">
                                <asp:Button ID="Button6" runat="server" Text="Add" /></td>
                        </tr>
                    </table>
                    <hr>
                    <table style="width: 100%">
                        <tr>
                            <td>Veg. Sweet Corn Soup</td>
                            <td>&nbsp;</td>
                            <td class="righty">RS.90.00</td>
                        </tr>
                        <tr>
                            <td>&nbsp;</td>
                            <td>&nbsp;</td>
                            <td>&nbsp;</td>
                        </tr>
                        <tr>
                            <td>&nbsp;</td>
                            <td>&nbsp;</td>
                            <td class="righty">
                                <asp:Button ID="Button1" runat="server" Text="Add" /></td>
                        </tr>
                    </table>
                    <hr>
                    <table style="width: 100%">
                        <tr>
                            <td>Veg. Hot & Sour Soup</td>
                            <td>&nbsp;</td>
                            <td class="righty">RS.90.00</td>
                        </tr>
                        <tr>
                            <td>&nbsp;</td>
                            <td>&nbsp;</td>
                            <td>&nbsp;</td>
                        </tr>
                        <tr>
                            <td>&nbsp;</td>
                            <td>&nbsp;</td>
                            <td class="righty">
                                <asp:Button ID="Button2" runat="server" Text="Add" /></td>
                        </tr>
                    </table>
                    <hr>
                    <table style="width: 100%">
                        <tr>
                            <td>Veg. Manchow Soup</td>
                            <td>&nbsp;</td>
                            <td class="righty">RS.90.00</td>
                        </tr>
                        <tr>
                            <td>&nbsp;</td>
                            <td>&nbsp;</td>
                            <td>&nbsp;</td>
                        </tr>
                        <tr>
                            <td>&nbsp;</td>
                            <td>&nbsp;</td>
                            <td class="righty">
                                <asp:Button ID="Button3" runat="server" Text="Add" /></td>
                        </tr>
                    </table>
                    <hr>
                    <table style="width: 100%">
                        <tr>
                            <td>Veg. Lemon Coriander</td>
                            <td>&nbsp;</td>
                            <td class="righty">RS.90.00</td>
                        </tr>
                        <tr>
                            <td>&nbsp;</td>
                            <td>&nbsp;</td>
                            <td>&nbsp;</td>
                        </tr>
                        <tr>
                            <td>&nbsp;</td>
                            <td>&nbsp;</td>
                            <td class="righty">
                                <asp:Button ID="Button4" runat="server" Text="Add" /></td>
                        </tr>
                    </table>
                    <hr>
                    <table style="width: 100%">
                        <tr>
                            <td>Chicken Clear Soup</td>
                            <td>&nbsp;</td>
                            <td class="righty">RS.120.00</td>
                        </tr>
                        <tr>
                            <td>&nbsp;</td>
                            <td>&nbsp;</td>
                            <td>&nbsp;</td>
                        </tr>
                        <tr>
                            <td>&nbsp;</td>
                            <td>&nbsp;</td>
                            <td class="righty">
                                <asp:Button ID="Button5" runat="server" Text="Add" /></td>
                        </tr>
                    </table>
                    <hr>
                </div>
            </div>
            <div class="column R">
                <%--<div class=" main">--%>
                <asp:Image ID="Image1" runat="server" ImageUrl="~/wp-content/ProductImages/2302645_menu.jpg" Width="100%" />
                <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Maecenas sit amet pretium urna. Vivamus venenatis velit nec neque ultricies, eget elementum magna tristique. Quisque vehicula, risus eget aliquam placerat, purus leo tincidunt eros, eget luctus quam orci in velit. Praesent scelerisque tortor sed accumsan convallis.</p>
                <%--CouponCode--%>
                <div class="coupon">
                    <div class="containercoupon">
                        <h3>Foodora.com</h3>
                    </div>
                    <asp:Image ID="Coupon" ImageUrl="~/wp-content/Coupon/hamburger.jpg" Width="100%" runat="server" />
                    <div class="containercoupon" style="background-color: white">
                        <h5><b>20% OFF ON YOUR PURCHASE</b></h5>
                        <p>On Your First 5 Orders</p>
                    </div>
                    <div class="containercoupon">
                        <p>Use Promo Code: <span class="promo">BOH232</span></p>
                        <p class="expire">Expires: Jan 03, 2019</p>
                    </div>
                </div>
                <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Maecenas sit amet pretium urna. Vivamus venenatis velit nec neque ultricies, eget elementum magna tristique. Quisque vehicula, risus eget aliquam placerat, purus leo tincidunt eros, eget luctus quam orci in velit. Praesent scelerisque tortor sed accumsan convallis.</p>
                <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Maecenas sit amet pretium urna. Vivamus venenatis velit nec neque ultricies, eget elementum magna tristique. Quisque vehicula, risus eget aliquam placerat, purus leo tincidunt eros, eget luctus quam orci in velit. Praesent scelerisque tortor sed accumsan convallis.</p>
                <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Maecenas sit amet pretium urna. Vivamus venenatis velit nec neque ultricies, eget elementum magna tristique. Quisque vehicula, risus eget aliquam placerat, purus leo tincidunt eros, eget luctus quam orci in velit. Praesent scelerisque tortor sed accumsan convallis.</p>
                <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Maecenas sit amet pretium urna. Vivamus venenatis velit nec neque ultricies, eget elementum magna tristique. Quisque vehicula, risus eget aliquam placerat, purus leo tincidunt eros, eget luctus quam orci in velit. Praesent scelerisque tortor sed accumsan convallis.</p>
                <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Maecenas sit amet pretium urna. Vivamus venenatis velit nec neque ultricies, eget elementum magna tristique. Quisque vehicula, risus eget aliquam placerat, purus leo tincidunt eros, eget luctus quam orci in velit. Praesent scelerisque tortor sed accumsan convallis.</p>
                <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Maecenas sit amet pretium urna. Vivamus venenatis velit nec neque ultricies, eget elementum magna tristique. Quisque vehicula, risus eget aliquam placerat, purus leo tincidunt eros, eget luctus quam orci in velit. Praesent scelerisque tortor sed accumsan convallis.</p>
                <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Maecenas sit amet pretium urna. Vivamus venenatis velit nec neque ultricies, eget elementum magna tristique. Quisque vehicula, risus eget aliquam placerat, purus leo tincidunt eros, eget luctus quam orci in velit. Praesent scelerisque tortor sed accumsan convallis.</p>
            </div>
        </div>
    </div>

    <%--ScrollLock--%>
    <script>
        window.onscroll = function () { myFunction() };

        var navbar = document.getElementById("navbar");
        var sticky = navbar.offsetTop;

        function myFunction() {
            if (window.pageYOffset >= sticky) {
                navbar.classList.add("sticky")
            } else {
                navbar.classList.remove("sticky");
            }
        }
    </script>
</asp:Content>
