<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="BooksSerach.aspx.cs" Inherits="Task_27_1_2024.BooksSerach" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
     <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet" />
</head>
<body>
    <form id="form1" runat="server">
        <div>


    <div class="container mt-5">
        <div class="card shadow-lg p-4">
          
            <div class="input-group mb-3">
                <asp:TextBox ID="txtSearch" runat="server" placeholder="Id book" CssClass="form-control" />
                <button class="btn btn-primary" type="submit" id="btnSearch" runat="server" onserverclick="btnSearch_Click">
                    <i class="fas fa-search"></i> Serach
                </button>
            </div>

            <asp:Label ID="lblResult" runat="server" CssClass="text-danger"></asp:Label>

            <div class="table-responsive">
                <asp:GridView ID="gvBooks" runat="server" AutoGenerateColumns="true" CssClass="table table-striped table-hover mt-3">
                </asp:GridView>
            </div>
        </div>
    </div>

    <script src="https://kit.fontawesome.com/a076d05399.js"></script>


        </div>
    </form>
</body>
</html>
