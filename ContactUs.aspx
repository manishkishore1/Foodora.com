<%@ Page Title="" Language="C#" MasterPageFile="~/Home.Master" AutoEventWireup="true" CodeBehind="ContactUs.aspx.cs" Inherits="Foodora.com.WebForm7" %>

<asp:Content ID="Content1" ContentPlaceHolderID="Bodycontentplaceholder" runat="server">

    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
    <link rel="stylesheet" href="../Css/Design.css" />
    <div>
        <asp:Image ID="Image2" runat="server" ImageUrl="~/wp-content/Images/Contactus.jpg" Width="100%" />
    </div>
    <div class="intro-section">
        <div class="container1">

            <div>
                <p>
                    For us, it's not just about bringing you good food from your favourite Foodora. It's about making a connection, which is why we sit down with the chefs, dreaming up menus that will arrive fresh and full of flavour. Try us!               
                </p>
            </div>
            
        </div>
    </div>
    <div class="container">
        
        <label for="Enquiry"><b>Choose Your Enquiry Type</b></label>
        <asp:DropDownList ID="ddlEnquiry" runat="server" Font-Size="Large" Width="100%" Height="40px" BackColor="#F1F1F1">
            <asp:ListItem Value="1">General Enquiries &amp; business opportunities</asp:ListItem>
            <asp:ListItem Value="2">Press and company enquiries</asp:ListItem>
            <asp:ListItem Value="3">Marketing - Marketing partnership enquiries</asp:ListItem>
            <asp:ListItem Value="4">Careers - Job related enquiries</asp:ListItem>
            <asp:ListItem Value="5">Restaurants partnership inquiries</asp:ListItem>
        </asp:DropDownList>
        <br />
        <%--<label for="Country"><b>Choose Your Country</b></label>
        <asp:DropDownList ID="ddlcountry" runat="server" Font-Size="Large" Width="100%" Height="40px" BackColor="#F1F1F1">
            <asp:ListItem Value="1">India</asp:ListItem>
            <asp:ListItem Value="2">Canada</asp:ListItem>
            <asp:ListItem Value="3">France</asp:ListItem>
            <asp:ListItem Value="4">Sweden</asp:ListItem>
            <asp:ListItem Value="5">Australia</asp:ListItem>
        </asp:DropDownList>
        <br />--%>
        <label for="Name"><b>Name</b></label>
        <asp:TextBox ID="txtname" runat="server"></asp:TextBox>
        <asp:RequiredFieldValidator ID="requireName" runat="server" Display="Dynamic" ForeColor="Red" ErrorMessage="Name Cannot Be Blank" ControlToValidate="txtName"></asp:RequiredFieldValidator>
        <br />
        <label for="Name"><b>Email</b></label>
        <asp:TextBox ID="txtEmail" runat="server"></asp:TextBox>
        <asp:RequiredFieldValidator ID="RequireEmail" runat="server" Display="Dynamic" ForeColor="Red" ErrorMessage="Email Is Required" ControlToValidate="txtEmail"></asp:RequiredFieldValidator>
        <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ErrorMessage="*" ForeColor="Red" Display="Dynamic" ControlToValidate="txtEmail" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
        <br />
        <label for="Name"><b>Your Message</b></label>
        <asp:TextBox ID="txtmessage" runat="server" TextMode="MultiLine" Height="200px" Width="100%" BackColor="#F1F1F1"></asp:TextBox>
        <asp:RequiredFieldValidator ID="requiremessage" runat="server" Display="Dynamic" ForeColor="Red" ErrorMessage="Message Cannot Be Blank" ControlToValidate="txtmessage"></asp:RequiredFieldValidator>
        <br />
        <asp:Button ID="btnsubmit" class="registerbtn" runat="server" Text="Submit" OnClick="btnsubmit_Click" />
    </div>
    <br />
</asp:Content>
