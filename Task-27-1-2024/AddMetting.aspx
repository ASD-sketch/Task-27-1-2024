<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AddMetting.aspx.cs" Inherits="Task_27_1_2024.AddMetting" %>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Add Book</title>
    <style>
        .form-group {
            margin-bottom: 15px;
        }
        label {
            display: block;
            margin-bottom: 5px;
            font-weight: bold;
        }
        input[type="text"] {
            width: 100%;
            padding: 8px;
            margin-bottom: 10px;
            border: 1px solid #ccc;
            border-radius: 4px;
        }
        button {
            padding: 10px 15px;
            background-color: #007bff;
            color: white;
            border: none;
            border-radius: 4px;
            cursor: pointer;
        }
        button:hover {
            background-color: #0056b3;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div style="max-width: 400px; margin: 50px auto; font-family: Arial, sans-serif;">
            <div class="form-group">
                <label for="txtID">ID</label>
                <asp:TextBox ID="txtID" runat="server"></asp:TextBox>
            </div>
            <div class="form-group">
                <label for="txtName">Name</label>
                <asp:TextBox ID="txtName" runat="server"></asp:TextBox>
            </div>
            <div class="form-group">
                <label for="txtKind">Location</label>
                <asp:TextBox ID="txtLocation" runat="server"></asp:TextBox>
            </div>
            <div class="form-group">
                <label for="txtLevel">Capacity</label>
                <asp:TextBox ID="txtCapacity" runat="server"></asp:TextBox>
            </div>
            <div class="form-group">
                <asp:Button ID="btnAddBook" runat="server" Text="Add Book" OnClick="btnAddBook_Click" />
            </div>
        </div>
    </form>
</body>
</html>