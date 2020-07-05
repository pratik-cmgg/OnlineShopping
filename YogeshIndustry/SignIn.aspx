<%@ Page Title="" Language="C#" MasterPageFile="~/CartMaster.Master" AutoEventWireup="true" CodeBehind="SignIn.aspx.cs" Inherits="YogeshIndustry.SignIn" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container">
        <div class="row centered-form">
        <div class="col-xs-12 col-sm-8 col-md-4 col-sm-offset-2 col-md-offset-4">
        	<div class="panel panel-default">
        		<div class="panel-heading">
			    		<h3 class="panel-title">Welcome Back, Please sign In</h3>
			 			</div>
			 			<div class="panel-body">
			    					    			
			    			<div class="form-group">
			    				 <asp:TextBox ID="tbEmail" CssClass="form-control input-sm" placeholder="Email" runat="server" TextMode="Email"></asp:TextBox>
                                 <asp:RequiredFieldValidator ID="rfemail" runat="server" ErrorMessage="Please enter your email" ControlToValidate="tbEmail"></asp:RequiredFieldValidator>
			    			</div>

                             <div class="form-group">
			    				<asp:TextBox ID="tbPass" CssClass="form-control input-sm" placeholder="Password" runat="server" TextMode="Password"></asp:TextBox>
                                <asp:RequiredFieldValidator ID="rfpass" runat="server" ErrorMessage="Please enter your password" ControlToValidate="tbPass"></asp:RequiredFieldValidator>
			    			</div>

			    			<asp:Button ID="btnreg" runat="server" CssClass="btn btn-info btn-block" Text="Login" OnClick="btnreg_Click"/>
                             <br />
                             <h4>Don't have an account? </h4><a href="SignUp.aspx" >Sign Up Now!</a>
			    		    <asp:Label ID="lblMsg" runat="server"></asp:Label>
			    	</div>

	    		</div>
            </div>
            </div>
        </div>
</asp:Content>
