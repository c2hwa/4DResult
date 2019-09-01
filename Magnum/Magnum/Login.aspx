<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="Magnum.Login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js"></script>
    <link href="~/Content/Site.css" rel="stylesheet" />
    <title>Admin Login</title>
</head>
<body>
    <form id="form1" runat="server">
        <div class="container body-content">
            <div class="centerPanel">
                <div class="login_logo">
                    <img src="img/company_logo.png" style="width: 400px" />
                </div>
                <div class="myPanel" style="text-align: center;">
                    <div class="myPanelTitle">
                        <b>Admin Login</b>
                    </div>
                    <div class="myPanelBody">
                        <div style="width: 320px; margin: 0px auto;">
                            <div style="font-size: 24px; font-weight: bold; margin-bottom: 10px;">Welcome</div>
                            <div class="input-group" style="margin-bottom: 10px;">
                                <span class="input-group-addon"><i class="glyphicon glyphicon-user"></i></span>
                                <asp:TextBox ID="txtEmail" runat="server" CssClass="form-control" TextMode="Email" placeholder="Email"></asp:TextBox>
                            </div>
                            <div class="input-group">
                                <span class="input-group-addon"><i class="glyphicon glyphicon-lock"></i></span>
                                <asp:TextBox ID="txtPassword" runat="server" CssClass="form-control" TextMode="Password" placeholder="Password"></asp:TextBox>
                            </div>
                            <div style="margin-top: 10px; text-align: right;">
                                <a href="#">Forgot Password</a>
                            </div>
                            <div style="margin-top: 10px;">
                                <asp:Button ID="btnLogin" runat="server" Text="Login" CssClass="btn btn-primary" Width="100%" OnClick="btnLogin_Click" />
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </form>
</body>
</html>
