<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Register.aspx.cs" Inherits="LibraryBook.Register" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
<script src="//netdna.bootstrapcdn.com/bootstrap/3.2.0/js/bootstrap.min.js"></script>
<script src="//code.jquery.com/jquery-1.11.1.min.js"></script>
    <style>
        @import url(https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css);
                @import url(https://maxcdn.bootstrapcdn.com/bootstrap/4.1.1/css/bootstrap.min.css);

@import url(https://cdnjs.cloudflare.com/ajax/libs/mdbootstrap/4.4.3/css/mdb.min.css);
@import url(http://fonts.googleapis.com/css?family=Roboto:400);
body {
  background-color:#fff;
  -webkit-font-smoothing: antialiased;
  font: normal 14px Roboto,arial,sans-serif;
   background-image: url("https://i0.wp.com/walmerconvenience.com/wp-content/uploads/2016/03/wonderful-old-book-library-wide-high-definition-wallpaper-for-desktop.jpg");
     background-attachment: fixed;
   


  background-position: center;
  background-repeat: no-repeat;
  background-size: cover; 
}

.container {
    padding: 25px;
    position: fixed;
}

.form-login {
    background-color: #EDEDED;
   position: absolute ;
    border-color:#d2d2d2;
    border-width: 5px;
    top: 20%;
    left:10%;
    
        padding: 20px;

    text-align: center;
position: absolute ;
}

h4 { 
 border:0 solid #fff; 
 border-bottom-width:1px;
 padding-bottom:10px;
 text-align: center;
}

.form-control {
    border-radius: 10px;
}

.wrapper {
    text-align: center;
}

        </style>
    </head> 
<body>
    <form id="form1" runat="server">
        <div>
            <div class="container">
    <div class="row">
        <div class="col-md-offset-5 col-md-3">
            <div class="form-login">
            <h4>
                <asp:Label ID="Label1" runat="server" Font-Names="Ink Free" Font-Size="Larger" Text="Book Library"></asp:Label>
                </h4>
                <h4>
                    <asp:Label ID="Label2" runat="server" Font-Names="Ink Free" Font-Size="Large" Text="Username"></asp:Label>
                    <asp:TextBox ID="LoginRegister" runat="server"></asp:TextBox>
                    <asp:Label ID="Label3" runat="server" Font-Names="Ink Free" Font-Size="Large" Text="Password"></asp:Label>
                    <asp:TextBox ID="PassRegister" runat="server"></asp:TextBox>
                    <asp:Label ID="Label4" runat="server" Font-Names="Ink Free" Font-Size="Large" Text="Name"></asp:Label>
                    <asp:TextBox ID="NameRegister" runat="server"></asp:TextBox>
                    <asp:Label ID="Label5" runat="server" Font-Names="Ink Free" Font-Size="Large" Text="Age"></asp:Label>
                    <asp:TextBox ID="Ageregister" runat="server"></asp:TextBox>
                </h4>
            &nbsp;</br>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Button ID="RegisterLogin" runat="server" BackColor="Blue" Font-Names="Ink Free" Font-Size="Large" ForeColor="White" Text="Login Here" OnClick="RegisterLogin_Click"  />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Button ID="Registerbutton" runat="server" BackColor="Blue" Font-Names="Ink Free" Font-Size="Large" ForeColor="White" Height="35px" Text="Register Here" Width="160px" OnClick="Registerbutton_Click"  />
            </br>
            <div class="wrapper">
            </div>
            </div>
        
        </div>
    </div>
</div>
        </div>
    </form>
</body>
</html>
