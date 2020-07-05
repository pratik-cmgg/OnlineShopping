<%@ Page Title="" Language="C#" MasterPageFile="~/Main.Master" AutoEventWireup="true" CodeBehind="SignUp.aspx.cs" Inherits="YogeshIndustry.SignUp" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <div class="container">
        <div class="row centered-form">
        <div class="col-xs-12 col-sm-8 col-md-4 col-sm-offset-2 col-md-offset-4">
        	<div class="panel panel-default">
        		<div class="panel-heading">
			    		<h3 class="panel-title">Sign up for Website <small>It's free!</small></h3>
			 			</div>
			 			<div class="panel-body">
			    		
			    			<div class="row">
			    				<div class="col-xs-6 col-sm-6 col-md-6">
			    					<div class="form-group">
                                        <asp:TextBox ID="tbname" CssClass="form-control input-sm" placeholder="First Name" runat="server" TabIndex="1"></asp:TextBox>
                                        <asp:RequiredFieldValidator ID="rfname" runat="server" ErrorMessage="Please Enter your Name" ControlToValidate="tbname"></asp:RequiredFieldValidator>
			    					</div>
			    				</div>
			    				<div class="col-xs-6 col-sm-6 col-md-6">
			    					<div class="form-group">
                                         <asp:TextBox ID="tbmob" CssClass="form-control input-sm" placeholder="Mobile Number" runat="server" TextMode="Phone" TabIndex="2" MaxLength="10"></asp:TextBox>
                                         <asp:RangeValidator ID="rvmob" runat="server" ErrorMessage="Enter a Valid Contact Number" MinimumValue="7000000000" MaximumValue="9999999999" ControlToValidate="tbmob"></asp:RangeValidator>
                                        <asp:RequiredFieldValidator ID="rfmob" runat="server" ErrorMessage="Please Enter your Number" ControlToValidate="tbmob"></asp:RequiredFieldValidator>
			    					</div>
			    				</div>
			    			</div>

			    			<div class="form-group">
			    				 <asp:TextBox ID="tbemail" CssClass="form-control input-sm" placeholder="Email" runat="server" TextMode="Email" TabIndex="3"></asp:TextBox>
                                 <asp:RequiredFieldValidator ID="rfemail" runat="server" ErrorMessage="Please Enter your Email" ControlToValidate="tbemail"></asp:RequiredFieldValidator>
                                <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="tbemail" CssClass="text-danger" ErrorMessage="Enter the correct Email" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" ValidationGroup="v1"></asp:RegularExpressionValidator>
			    			</div>

			    			<div class="row">
			    				<div class="col-xs-6 col-sm-6 col-md-6">
			    					<div class="form-group">
			    						 <asp:TextBox ID="tbpass" CssClass="form-control input-sm" placeholder="Password" runat="server" TextMode="Password" TabIndex="4"></asp:TextBox>
			    					</div>
			    				</div>
			    				<div class="col-xs-6 col-sm-6 col-md-6">
			    					<div class="form-group">
			    						 <asp:TextBox ID="tbcpass" CssClass="form-control input-sm" placeholder="Confirm Password" TextMode="Password" runat="server" TabIndex="6"></asp:TextBox>
                                         <asp:CompareValidator ID="cvpw" runat="server" ErrorMessage="Incorrect Password!" ControlToCompare="tbpass" ControlToValidate="tbcpass"></asp:CompareValidator>
			    					</div>
			    				</div>
			    			</div>

                             <div class="form-group">
			    				 <asp:TextBox ID="tbadd" CssClass="form-control input-sm" placeholder="Address" runat="server" TextMode="MultiLine"></asp:TextBox>
                                 <asp:RequiredFieldValidator ID="rfadd" runat="server" ErrorMessage="Please enter your address" ControlToValidate="tbadd"></asp:RequiredFieldValidator>
			    			</div>

			    			<asp:Button ID="btnreg" runat="server" CssClass="btn btn-info btn-block" Text="Register" OnClick="btnreg_Click" />
			    		     <h4>Already have an account? </h4><a href="SignIn.aspx" >Login Now!</a>
                             <asp:Label ID="lblMsg" runat="server"></asp:Label>
			    	</div>

	    		</div>
            </div>
            </div>
        </div>

</asp:Content>
