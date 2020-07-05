<%@ Page Title="" Language="C#" MasterPageFile="~/Main.Master" AutoEventWireup="true" CodeBehind="Careers.aspx.cs" Inherits="YogeshIndustry.Careers" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <title>Careers</title>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <!--careers-->
	<div id="portfolio">
		<div class="container">
			<div class="row">

				<div class="col-xs-12 col-sm-8 col-md-6 col-sm-offset-2 col-md-offset-3">
					<div class="portfolio-heading">
						<h2>careers</h2>
						<p>Want to work with the exciting and talented team of ours ? Send us your resumes right in.</p>
                        <p>
						<asp:Label ID="Label7" runat="server" Font-Bold="True" Font-Size="X-Large" ForeColor="#006600"></asp:Label>
					    </p>
					</div>
				</div>

			</div>
		</div>

		<div class="portfolio-thumbnail">
			<div class="container-fluid">
				 <div class="form-horizontal">

			<div class="form-group" style="font-style: inherit; color: #000000">
					<asp:Label ID="Label1" runat="server" CssClass="col-md-2 control-label" Text="Name"></asp:Label>
					<div class="col-md-3">
						<asp:TextBox ID="TextBox1" CssClass="form-control" runat="server" TabIndex="1"></asp:TextBox>
						<asp:RequiredFieldValidator ID="RequiredFieldValidator1" ValidationGroup="v2" CssClass="text-danger" runat="server" ErrorMessage="This field is required!" ControlToValidate="TextBox1"></asp:RequiredFieldValidator>
					</div>
			 </div>

			<div class="form-group">
					<asp:Label ID="Label2" runat="server" CssClass="col-md-2 control-label" Text="Email"></asp:Label>
					<div class="col-md-3">
						<asp:TextBox ID="TextBox2" CssClass="form-control" runat="server" TextMode="Email" TabIndex="2"></asp:TextBox>
						<asp:RequiredFieldValidator ID="RequiredFieldValidator2" ValidationGroup="v2" CssClass="text-danger" runat="server" ErrorMessage="This field is required!" ControlToValidate="TextBox2"></asp:RequiredFieldValidator>
                        &nbsp;&nbsp;&nbsp;
                        <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="TextBox2" CssClass="text-danger" ErrorMessage="Enter the correct email" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" ValidationGroup="v2"></asp:RegularExpressionValidator>
					</div>
			 </div>

			<div class="form-group">
					<asp:Label ID="Label3" runat="server" CssClass="col-md-2 control-label" Text="Contact Number"></asp:Label>
					<div class="col-md-3">
						<asp:TextBox ID="TextBox3" CssClass="form-control" runat="server" MaxLength="10" TabIndex="3"></asp:TextBox>
						<asp:RequiredFieldValidator ID="RequiredFieldValidator3" ValidationGroup="v2" CssClass="text-danger" runat="server" ErrorMessage=" Enter Contact Number!" ControlToValidate="TextBox3"></asp:RequiredFieldValidator>
                        <asp:RangeValidator ID="rvmob" runat="server" ErrorMessage="Enter a Valid Contact Number" MinimumValue="0000000000" MaximumValue="9999999999" ControlToValidate="TextBox3"></asp:RangeValidator>
					</div>
			 </div>

			<div class="form-group">
					<asp:Label ID="Label4" runat="server" CssClass="col-md-2 control-label" Text="Address"></asp:Label>
					<div class="col-md-3">
						<asp:TextBox ID="TextBox4" CssClass="form-control" runat="server" TextMode="MultiLine" TabIndex="4"></asp:TextBox>
						<asp:RequiredFieldValidator ID="RequiredFieldValidator4" ValidationGroup="v2" CssClass="text-danger" runat="server" ErrorMessage="Enter Address!" ControlToValidate="TextBox4"></asp:RequiredFieldValidator>
					</div>
			 </div>

			 <div class="form-group">
					<asp:Label ID="Label5" runat="server" CssClass="col-md-2 control-label" Text="Country"></asp:Label>
					<div class="col-md-3">
						<asp:DropDownList ID="ddlCountry1" CssClass="form-control" runat="server" TabIndex="5"></asp:DropDownList>
						<asp:RequiredFieldValidator ID="RequiredFieldValidator5" ValidationGroup="v2" CssClass="text-danger" runat="server" InitialValue="Select Country"  ErrorMessage="Select Country!" ControlToValidate="ddlCountry1"></asp:RequiredFieldValidator>
					</div>
			 </div>

			<div class="form-group">
					<asp:Label ID="Label6" runat="server" CssClass="col-md-2 control-label" Text="Your Details"></asp:Label>
					<div class="col-md-3">
						<asp:TextBox ID="TextBox5" CssClass="form-control" runat="server" TextMode="MultiLine" TabIndex="6"></asp:TextBox>
						<asp:RequiredFieldValidator ID="RequiredFieldValidatorDetails" ValidationGroup="v2" CssClass="text-danger" runat="server" ErrorMessage="Enter details!" ControlToValidate="TextBox5"></asp:RequiredFieldValidator>
					</div>
			 </div>

			 <div class="form-group">
					<asp:Label ID="lblResume" runat="server" CssClass="col-md-2 control-label" Text="Submit Resume"></asp:Label>
					<div class="col-md-3">
						<asp:FileUpload ID="fuResume" CssClass="form-control" runat="server" TabIndex="7" />
						<asp:RequiredFieldValidator ID="RequiredFieldValidatorfuResume" ValidationGroup="v2" CssClass="text-danger" runat="server" ErrorMessage="This field is required!" ControlToValidate="fuResume"></asp:RequiredFieldValidator>
					</div>
			 </div>

			<div class="form-group">
					<div class="col-md-2"></div>
					<div class="col-md-6">
						<asp:Button ID="btnSubmit" runat="server" CssClass="btn btn-primary" ValidationGroup="v2" Text="Submit" OnClick="btnSubmit_Click" TabIndex="8" />
						
					</div>
			</div>


			</div>
			</div>
		</div>

	</div>
</asp:Content>
