<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="homeUser.aspx.cs" Inherits="Task_27_1_2024.homeUser" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz" crossorigin="anonymous"></script>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>

        </div>
        <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="View Book" />
         <asp:Button ID="Button2" runat="server" OnClick="Button2_Click" Text="View metting" />
         <asp:Button ID="Button3" runat="server" OnClick="Button3_Click" Text="profile" />
    </form>
</body>
</html>
