<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ViewBooks.aspx.cs" Inherits="Task_27_1_2024.ViewBooks" %>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>View Books</title>
    <style>
        table {
            width: 100%;
            border-collapse: collapse;
        }
        th, td {
            border: 1px solid #ddd;
            padding: 8px;
            text-align: left;
        }
        th {
            background-color: #f2f2f2;
            font-weight: bold;
        }
        tr:hover {
            background-color: #f1f1f1;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div style="max-width: 800px; margin: 50px auto; font-family: Arial, sans-serif;">
            <h2>Books List</h2>
            <asp:GridView ID="gvBooks" runat="server" AutoGenerateColumns="False" HeaderStyle-BackColor="#f2f2f2">
                <Columns>
                    <asp:BoundField DataField="BookId" HeaderText="Book ID" />
                    <asp:BoundField DataField="BookName" HeaderText="Book Name" />
                    <asp:BoundField DataField="BookType" HeaderText="Book Type" />
                    <asp:BoundField DataField="BookLevel" HeaderText="Book Level" />
                </Columns>
            </asp:GridView>
        </div>
    </form>
</body>
</html>