<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="BookPage.aspx.cs" Inherits="LibraryBook.BookPage" %>

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
   
     top: 4px;
    left:780px;
    
        padding: 10px;

    text-align: center;
position: absolute ;
}
.form-login2 {
    background-color: #EDEDED;
   position: absolute ;
   
    top: 4px;
    left:1050px;
    
        padding: 10px;

    text-align: center;
}
h4 { 
 
}

.form-control {
    border-radius: 10px;
}

.wrapper {
    text-align: center;
}
        #form1 {
            height: 1013px;
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
                <asp:Label ID="Label1" runat="server" Font-Names="Ink Free" Font-Size="Larger" Text="Add Books Here"></asp:Label>
                </h4>
                <h4>
                    <asp:Label ID="Label9" runat="server" Font-Names="Ink Free" Font-Size="Large" Text="BookNo"></asp:Label>
                    <asp:TextBox ID="Booknotext" runat="server"></asp:TextBox>
                    <asp:Label ID="Label2" runat="server" Font-Names="Ink Free" Font-Size="Large" Text="BookName"></asp:Label>
                    <asp:TextBox ID="BNametext" runat="server"></asp:TextBox>
                    <asp:Label ID="Label3" runat="server" Font-Names="Ink Free" Font-Size="Large" Text="BookAuthor"></asp:Label>
                    <asp:TextBox ID="BauthorText" runat="server"></asp:TextBox>
                    <asp:Label ID="Label4" runat="server" Font-Names="Ink Free" Font-Size="Large" Text="Copies"></asp:Label>
                    <asp:TextBox ID="CopiesText" runat="server"></asp:TextBox>
                    
                </h4>
            &nbsp;</br>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Button ID="AddBook" runat="server" BackColor="Blue" Font-Names="Ink Free" Font-Size="Large" ForeColor="White" Text="Add" OnClick="AddBook_Click"   />
                &nbsp;<asp:Button ID="deletebook" runat="server" BackColor="Blue" Font-Names="Ink Free" Font-Size="Large" ForeColor="White" Height="35px" Text="Delete" Width="76px" OnClick="deletebook_Click"   />
                <asp:Button ID="Updatebook" runat="server" BackColor="Blue" Font-Names="Ink Free" Font-Size="Large" ForeColor="White" Height="35px" Text="Update" Width="76px" OnClick="Updatebook_Click"   />
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            </br>
            <div class="wrapper">
            </div>
            </div>
              <div class="form-login2">
            <h4>
                <asp:Label ID="Label5" runat="server" Font-Names="Ink Free" Font-Size="Larger" Text="Rent Here"></asp:Label>
                </h4>
                <h4>
                    <asp:Label ID="Label10" runat="server" Font-Names="Ink Free" Font-Size="Large" Text="CustomerId"></asp:Label>
                    <asp:TextBox ID="Custidtext" runat="server"></asp:TextBox>
                    <asp:Label ID="Label6" runat="server" Font-Names="Ink Free" Font-Size="Large" Text="CustomerName"></asp:Label>
                    <asp:TextBox ID="TextCust" runat="server"></asp:TextBox>
                    <asp:Label ID="Label7" runat="server" Font-Names="Ink Free" Font-Size="Large" Text="Email"></asp:Label>
                    <asp:TextBox ID="TextEmail" runat="server"></asp:TextBox>
                    
                    
                </h4>
            &nbsp;</br>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Button ID="Button1" runat="server" BackColor="Blue" Font-Names="Ink Free" Font-Size="Large" ForeColor="White" Text="Rent" OnClick="Rent_Click"   />
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                &nbsp;<asp:Button ID="Button2" runat="server" BackColor="Blue" Font-Names="Ink Free" Font-Size="Large" ForeColor="White" Height="35px" Text="Return" Width="76px" OnClick="Return_Click"  />
                &nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            </br>
            <div class="wrapper">
            </div>
            </div>
        
        </div>
    </div>
</div>
        </div>
        <asp:GridView ID="GridView1" runat="server" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="3" Height="209px" Width="378px" OnSelectedIndexChanged="GridView1_SelectedIndexChanged">
            <Columns>
                <asp:CommandField ShowSelectButton="True" />
            </Columns>
            <FooterStyle BackColor="White" ForeColor="#000066" />
            <HeaderStyle BackColor="#006699" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="White" ForeColor="#000066" HorizontalAlign="Left" />
            <RowStyle ForeColor="#000066" />
            <SelectedRowStyle BackColor="#669999" Font-Bold="True" ForeColor="White" />
            <SortedAscendingCellStyle BackColor="#F1F1F1" />
            <SortedAscendingHeaderStyle BackColor="#007DBB" />
            <SortedDescendingCellStyle BackColor="#CAC9C9" />
            <SortedDescendingHeaderStyle BackColor="#00547E" />
        </asp:GridView>
        <asp:GridView ID="GridView2" runat="server" BackColor="White" BorderColor="#336666" BorderStyle="Double" BorderWidth="3px" CellPadding="4" GridLines="Horizontal" Height="203px" Width="382px" OnSelectedIndexChanged="GridView2_SelectedIndexChanged">
            <Columns>
                <asp:CommandField ShowSelectButton="True" />
            </Columns>
            <FooterStyle BackColor="White" ForeColor="#333333" />
            <HeaderStyle BackColor="#336666" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="#336666" ForeColor="White" HorizontalAlign="Center" />
            <RowStyle BackColor="White" ForeColor="#333333" />
            <SelectedRowStyle BackColor="#339966" Font-Bold="True" ForeColor="White" />
            <SortedAscendingCellStyle BackColor="#F7F7F7" />
            <SortedAscendingHeaderStyle BackColor="#487575" />
            <SortedDescendingCellStyle BackColor="#E5E5E5" />
            <SortedDescendingHeaderStyle BackColor="#275353" />
        </asp:GridView>
        <asp:Label ID="Label8" runat="server" Text="Label"></asp:Label>
    </form>
</body>
</html>
