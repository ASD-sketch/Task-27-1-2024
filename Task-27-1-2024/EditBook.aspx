<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="EditBook.aspx.cs" Inherits="Task_27_1_2024.EditBook" %>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Edit Book</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            max-width: 600px;
            margin: 50px auto;
        }
        label {
            font-weight: bold;
            display: block;
            margin-top: 10px;
        }
        input, select, button {
            width: 100%;
            padding: 8px;
            margin-top: 5px;
        }
        button {
            background-color: #28a745;
            color: white;
            border: none;
            cursor: pointer;
            margin-top: 15px;
        }
        button:hover {
            background-color: #218838;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <h2>Edit Book Information</h2>

        <label>Select Book:</label>
        <asp:DropDownList ID="ddlBooks" runat="server" AutoPostBack="True" OnSelectedIndexChanged="ddlBooks_SelectedIndexChanged"></asp:DropDownList>

        <label>Book Name:</label>
        <asp:TextBox ID="txtBookName" runat="server"></asp:TextBox>

        <label>Book Type:</label>
        <asp:TextBox ID="txtBookType" runat="server"></asp:TextBox>

        <label>Book Level:</label>
        <asp:TextBox ID="txtBookLevel" runat="server"></asp:TextBox>

        <asp:Button ID="btnUpdate" runat="server" Text="Update Book" OnClick="btnUpdate_Click" />
    </form>
</body>
</html>