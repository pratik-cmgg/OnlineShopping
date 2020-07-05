<%@ Page Title="" Language="C#" MasterPageFile="~/Main.Master" AutoEventWireup="true" CodeBehind="Enquiries.aspx.cs" Inherits="YogeshIndustry.Enquiries" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <title>Enquiries</title>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

	<!--enquiries-->
	<div id="service">
		<div class="container">
			<div class="row">
				<div class="col-xs-12 col-md-6 col-md-offset-3">
					<div class="service-heading">
						<h2>enquiries</h2>
						<p>ForFor any enquiries regarding products or our services, Do let us know!</p>
                        <asp:Label ID="lblMsg" runat="server" Font-Bold="True" Font-Size="X-Large" ForeColor="#006600"></asp:Label>
					</div>
				</div>
			</div>
		</div>

		<!--services wrapper-->
		<section class="services-style-one">
		<!--	<div class="outer-box clearfix"> -->

				<div class="form-horizontal">

			<div class="form-group">
					<asp:Label ID="lblName" runat="server" CssClass="col-md-2 control-label" Text="Name"></asp:Label>
					<div class="col-md-3">
						<asp:TextBox ID="tbName" CssClass="form-control" runat="server" OnTextChanged="tbName_TextChanged" TabIndex="1"></asp:TextBox>
						<asp:RequiredFieldValidator ID="RequiredFieldValidatorName" ValidationGroup="v1" CssClass="text-danger" runat="server" ErrorMessage="This field is required!" ControlToValidate="tbName"></asp:RequiredFieldValidator>
					</div>
			 </div>

			<div class="form-group">
					<asp:Label ID="lblEmail" runat="server" CssClass="col-md-2 control-label" Text="Email"></asp:Label>
                    <div class="col-md-3">
                    <asp:TextBox ID="tbEmail" CssClass="form-control" runat="server" TabIndex="2"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidatorEmail" ValidationGroup="v1" CssClass="text-danger" runat="server" ErrorMessage="This field is required!" ControlToValidate="tbEmail"></asp:RequiredFieldValidator>
					&nbsp;&nbsp;&nbsp;
                        <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="tbEmail" CssClass="text-danger" ErrorMessage="Enter the correct email" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" ValidationGroup="v1"></asp:RegularExpressionValidator>
					</div>
			 </div>

			<div class="form-group">
					<asp:Label ID="lblCompName" runat="server" CssClass="col-md-2 control-label" Text="Company Name"></asp:Label>
					<div class="col-md-3">
						<asp:TextBox ID="tbCompName" CssClass="form-control" runat="server" TabIndex="3"></asp:TextBox>
						<asp:RequiredFieldValidator ID="RequiredFieldValidatorCompName" ValidationGroup="v1" CssClass="text-danger" runat="server" ErrorMessage="Enter Company Name!" ControlToValidate="tbCompName"></asp:RequiredFieldValidator>
					</div>
			 </div>

			<div class="form-group">
					<asp:Label ID="lblContNum" runat="server" CssClass="col-md-2 control-label" Text="Contact Number"></asp:Label>
					<div class="col-md-3">
						<asp:TextBox ID="tbContNum" CssClass="form-control" runat="server" MaxLength="10" TabIndex="4"></asp:TextBox>
						<asp:RequiredFieldValidator ID="RequiredFieldValidatorContNum" ValidationGroup="v1" CssClass="text-danger" runat="server" ErrorMessage="Enter Contact Number!" ControlToValidate="tbContNum"></asp:RequiredFieldValidator>
                         <asp:RangeValidator ID="rvno" runat="server" ErrorMessage="Enter a Valid Contact Number" MinimumValue="0000000000" MaximumValue="9999999999" ControlToValidate="tbContNum"></asp:RangeValidator>
					</div>
			 </div>

			<div class="form-group">
					<asp:Label ID="lblAddress" runat="server" CssClass="col-md-2 control-label" Text="Address"></asp:Label>
					<div class="col-md-3">
						<asp:TextBox ID="tbAddress" CssClass="form-control" runat="server" TextMode="MultiLine" TabIndex="5"></asp:TextBox>
						<asp:RequiredFieldValidator ID="RequiredFieldValidatortAddress" ValidationGroup="v1" CssClass="text-danger" runat="server" ErrorMessage="Enter Adress!" ControlToValidate="tbAddress"></asp:RequiredFieldValidator>
					</div>
			 </div>

			 <div class="form-group">
					<asp:Label ID="lblCountry" runat="server" CssClass="col-md-2 control-label" Text="Country"></asp:Label>
					<div class="col-md-3">
						<asp:DropDownList ID="ddlCountry" CssClass="form-control" runat="server" TabIndex="6"></asp:DropDownList>
						<asp:RequiredFieldValidator ID="RequiredFieldValidatorCountry" ValidationGroup="v1" CssClass="text-danger" runat="server" InitialValue="Select Country"  ErrorMessage="Select Country!" ControlToValidate="ddlCountry"></asp:RequiredFieldValidator>
					</div>
			 </div>

			<div class="form-group">
					<asp:Label ID="lblProduct" runat="server" CssClass="col-md-2 control-label" Text="Product Interested"></asp:Label>
					<div class="col-md-3">
						<asp:DropDownList ID="ddlProduct" CssClass="form-control" runat="server" TabIndex="7">
							<asp:ListItem>Shirts</asp:ListItem>
							<asp:ListItem>Panchos</asp:ListItem>
							<asp:ListItem>Paroes</asp:ListItem>
						</asp:DropDownList>
						<asp:RequiredFieldValidator ID="RequiredFieldValidatorProduct" ValidationGroup="v1" CssClass="text-danger" runat="server" InitialValue="Select Product"  ErrorMessage="Select Product!" ControlToValidate="ddlProduct"></asp:RequiredFieldValidator>
					</div>
			 </div>

			<div class="form-group">
					<asp:Label ID="lblEnquiry" runat="server" CssClass="col-md-2 control-label" Text="Your Enquiry"></asp:Label>
					<div class="col-md-3">
						<asp:TextBox ID="tbEnquiry" CssClass="form-control" runat="server" TextMode="MultiLine" TabIndex="8"></asp:TextBox>
						<asp:RequiredFieldValidator ID="RequiredFieldValidatorEnquiry" ValidationGroup="v1" CssClass="text-danger" runat="server" ErrorMessage="This field is required!" ControlToValidate="tbEnquiry"></asp:RequiredFieldValidator>
					</div>
			 </div>

			<div class="form-group">
					<div class="col-md-2"></div>
					<div class="col-md-6">
						<asp:LinkButton ID="LinkButton1" runat="server" CssClass="btn btn-primary" ValidationGroup="v1" OnClick="btnEnq_Click" TabIndex="9">Send Enquiry</asp:LinkButton>
						
					</div>
			</div>


			</div>

		<!--	</div> -->
		</section>

		<!--service gapping-->
		<div class="service-footer hidden-xs">
			<div class="container">
				<div class="row">
					<div class="col-md-7">
						<div class="service-footer-left">
							<h3>Want to an>Business with us</span> ? Book an appointment</h3>
							<p>Contact us on 9892000000. Appointment will be fixed in a day or two!</p>
						</div>
					</div>

					<div class="col-md-5">
						<div class="service-footer-right">
							
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>

</asp:Content>
