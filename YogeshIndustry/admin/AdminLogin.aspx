<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AdminLogin.aspx.cs" Inherits="YogeshIndustry.admin.AdminLogin" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <meta charset="UTF-8"/>
	<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no"/>
	<link rel="stylesheet" href="../css/bootstrap.min.css"/>
</head>
<body>
    <form id="form1" runat="server">
    <div class="container" style="background-color: peachpuff; height: 600px; margin: 50px">

        <div class="col-lg-4">
            <img src="../images/admins/LogoAdmi.png" style="height:350px; margin-top: 50px; margin-left: 50px;"; />
        </div>

        <div class="col-lg-8" style="float: left">
            <h3 style="margin-top: 100px; margin-left: 200px; font-weight: bold; text-decoration: underline; font-size: xx-large;">ADMIN LOGIN</h3>
            <div class="form-horizontal" style="margin-left: 200px; margin-top: 40px">
                <div class="form-group">
                    <div class="col-lg-2">
					<asp:Label ID="lblName" runat="server" CssClass="col-md-2 control-label" Text="Name" Font-Bold="True"></asp:Label>
					</div>
                    <div class="col-md-6">
						<asp:TextBox ID="tbName" CssClass="form-control" runat="server"></asp:TextBox>
						<asp:RequiredFieldValidator ID="RequiredFieldValidatorName" CssClass="text-danger" runat="server" ErrorMessage="This field is required!" ControlToValidate="tbName"></asp:RequiredFieldValidator>
					</div>
			 </div>

			<div class="form-group">
                    <div class="col-lg-2">
					<asp:Label ID="lblPass" runat="server" CssClass="col-md-2 control-label" Text="Password" Font-Bold="True"></asp:Label>
					</div>
                    <div class="col-md-6">
						<asp:TextBox ID="tbPass" CssClass="form-control" runat="server" TextMode="Password"></asp:TextBox>
						<asp:RequiredFieldValidator ID="RequiredFieldValidatorPass" CssClass="text-danger" runat="server" ErrorMessage="This field is required!" ControlToValidate="tbPass"></asp:RequiredFieldValidator>
					</div>
			 </div>

                <div class="form-group">
					<div class="col-md-2"></div>
					<div class="col-md-6">
						<asp:LinkButton ID="btnLogin" runat="server" CssClass="btn btn-primary" OnClick="btnLogin_Click">Login</asp:LinkButton>
						<asp:Label ID="lblMsg" runat="server"></asp:Label>
					</div>
			</div>


            </div>

            
        </div>
    
    </div>
    </form>
    <script src="../js/jquery.min.js"></script>
	<script src="../js/bootstrap.min.js"></script>
</body>
</html>
