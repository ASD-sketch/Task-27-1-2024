<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="homeAdmin.aspx.cs" Inherits="Task_27_1_2024.homeAdmin" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <h1>Welcome admin</h1>

 <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Add book" />
            
            <asp:Button ID="Button2" runat="server" OnClick="Button2_Click" Text="Add metting room" />
             <asp:Button ID="Button3" runat="server" OnClick="Button3_Click" Text="Edit book" />
            
        </div>
       
    </form>
</body>
</html>
