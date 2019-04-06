    <%@ Page Title="" Language="C#" MasterPageFile="~/Home.Master" AutoEventWireup="true" CodeBehind="AboutUs.aspx.cs" Inherits="Foodora.com.WebForm8" %>

<asp:Content ID="Content1" ContentPlaceHolderID="Bodycontentplaceholder" runat="server">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
    <link rel="stylesheet" href="../Css/Design.css" />
    <div>
        <asp:Image ID="Image2" runat="server" ImageUrl="~/wp-content/Images/AboutUs.jpg" Width="100%" />
        <div class="centered">About Us</div>
    </div>
    <div class="intro-section">
        <div class="container1">

            <div class="col-xs-12 col-sm-12">
                <p>
                    For us, it's not just about bringing you good food from your favourite Foodora. It's about making a connection, which is why we sit down with the chefs, dreaming up menus that will arrive fresh and full of flavour. Try us!               
                </p>
            </div>
        </div>
    </div>
   
</asp:Content>
