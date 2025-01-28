<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="login.aspx.cs" Inherits="Task_27_1_2024.login" %>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>Login</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            margin: 0;
            padding: 0;
            display: flex;
            flex-direction: column;
            justify-content: space-between;
            align-items: center;
            height: 100vh;
            background-color: #f9f9f9;
        }

        .container {
            display: flex;
            justify-content: center;
            align-items: center;
            height: 80%;
            width: 100%;
        }

        .login-box {
            display: flex;
            background: white;
            border-radius: 10px;
            box-shadow: 0 4px 10px rgba(0, 0, 0, 0.1);
            width: 800px;
            overflow: hidden;
        }

        .login-image {
            flex: 1;
            background: #f0f0f0;
            display: flex;
            justify-content: center;
            align-items: center;
            padding: 20px;
        }

        .login-image img {
            max-width: 100%;
            height: auto;
        }

        .login-form {
            flex: 1;
            padding: 30px;
        }

        .login-form h2 {
            margin-bottom: 20px;
            font-size: 24px;
            text-align: center;
            color: #333;
        }

        .social-icons {
            display: flex;
            justify-content: center;
            margin-bottom: 20px;
        }

        .social-icons a {
            margin: 0 10px;
            font-size: 20px;
            color: white;
            text-decoration: none;
            width: 40px;
            height: 40px;
            display: flex;
            justify-content: center;
            align-items: center;
            border-radius: 50%;
        }

        .social-icons a.facebook {
            background: #3b5998;
        }

        .social-icons a.twitter {
            background: #00acee;
        }

        .social-icons a.linkedin {
            background: #0077b5;
        }

        .form-group {
            margin-bottom: 15px;
            text-align: left;
        }

        .form-group label {
            display: block;
            margin-bottom: 5px;
            font-size: 14px;
            color: #555;
        }

        .form-group input {
            width: 100%;
            padding: 10px;
            border: 1px solid #ddd;
            border-radius: 5px;
            font-size: 14px;
        }

        .form-group input:focus {
            border-color: #007bff;
            outline: none;
        }

        .form-check {
            display: flex;
            justify-content: space-between;
            align-items: center;
            font-size: 14px;
        }

        .btn {
            width: 100%;
            padding: 10px;
            background-color: #007bff;
            color: white;
            border: none;
            border-radius: 5px;
            font-size: 16px;
            cursor: pointer;
        }

        .btn:hover {
            background-color: #0056b3;
        }

        .footer {
            background: #007bff;
            color: white;
            width: 100%;
            text-align: center;
            padding: 10px 0;
        }

        .footer a {
            color: white;
            margin: 0 10px;
            text-decoration: none;
        }

        .footer a:hover {
            text-decoration: underline;
        }
    </style>
</head>
<body>
    <div class="container">
        <div class="login-box">
            <div class="login-image">
                <img src="https://via.placeholder.com/300" alt="Illustration" />
            </div>
            <div class="login-form">
                <h2>Sign in with</h2>
                <div class="social-icons">
                    <a href="#" class="facebook">F</a>
                    <a href="#" class="twitter">T</a>
                    <a href="#" class="linkedin">L</a>
                </div>
                <hr />
                <form id="loginForm" runat="server">
                    <div class="form-group">
                        <label for="txtEmail">Email address</label>
                        <asp:TextBox ID="txtEmail" runat="server" CssClass="form-control" placeholder="Email address"></asp:TextBox>
                    </div>
                    <div class="form-group">
                        <label for="txtPassword">Password</label>
                        <asp:TextBox ID="txtPassword" runat="server" CssClass="form-control" TextMode="Password" placeholder="Password"></asp:TextBox>
                    </div>
                    <div class="form-check">
                        <asp:CheckBox ID="chkRemember" runat="server" /> Remember me
                        <a href="#">Forgot password?</a>
                    </div>
                    <asp:Button ID="btnLogin" runat="server" CssClass="btn" Text="LOGIN" OnClick="btnLogin_Click" />
                </form>
                <p>
                    Don't have an account? <a href="Register.aspx" style="color: red;">Register</a>
                </p>
            </div>
        </div>
    </div>
    <div class="footer">
        Copyright © 2020. All rights reserved.
        <a href="#">F</a>
        <a href="#">T</a>
        <a href="#">G</a>
        <a href="#">L</a>
    </div>
</body>
</html>
