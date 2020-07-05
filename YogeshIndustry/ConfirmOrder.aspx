<%@ Page Title="" Language="C#" MasterPageFile="~/CartMaster.Master" AutoEventWireup="true" CodeBehind="ConfirmOrder.aspx.cs" Inherits="YogeshIndustry.ConfirmOrder" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style1 {
            width: 1097px;
            margin-left: 40px;
        }
        .auto-style2 {
            width: 1097px;
            margin-left: 40px;
            height: 20px;
        }
        .auto-style3 {
            width: 1097px;
            margin-left: 40px;
            height: 40px;
        }
    
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
   
    <br />
   
    <br />
    <br />
    <br />
    <br />
     
    <!--about wrapper left-->
		<div class="container">

			<div class="row">
				<div class="col-xs-12 hidden-sm col-md-5">

					<div class="about-left">
                       <ul>
							<li><a href="http://www.shein.in/women-dresses-c-1727.html?icn=dresses&ici=in_navbar05"><img src="add/11524666746129-Outdoor-desk.jpg"alt=""/></a></li>
                           </ul>
                      
                        
                        <p>
                            &nbsp;</p>
                        <p>
                            &nbsp;</p>
                      
                        
                        <br />
                        <br />
                        <ul>
							<li><a href="https://www.stalkbuylove.com/women-dresses/"><img src="add/img.jpg" /></a></li>
                           </ul>
                      
                    
                        
                           
					</div>

				</div>

				<!--about wrapper right-->
				<div class="col-xs-12 col-md-7">
					<div class="about-right" id="abt">
		
    <table>
        
        <tr>
            <td class="auto-style2">
                <asp:Label ID="Label1" runat="server" Text="Enter Your Email_id" ForeColor="#9966FF"></asp:Label>
                 &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                 <asp:TextBox ID="emailTxt" runat="server" BackColor="#FFFF66" TextMode="Email"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="emailTxt" ErrorMessage="Please Enter Correct Detail" ValidationGroup="s" TabIndex="1"></asp:RequiredFieldValidator>
                <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="emailTxt" CssClass="text-danger" ErrorMessage="Enter the Correct Email" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" ValidationGroup="s"></asp:RegularExpressionValidator>
                <br />
                <br />
                <asp:Label ID="Label7" runat="server" ForeColor="#9966FF" Text="Please select the payment option."></asp:Label>
                <br />
                <br />
            </td>
        </tr>
         
        <tr>
            <td class="auto-style1">
                <asp:RadioButtonList ID="RadioButtonList1" runat="server" AutoPostBack="True">
                    <asp:ListItem>Debit Card</asp:ListItem>
                    <asp:ListItem>Credit card</asp:ListItem>
                </asp:RadioButtonList>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="RadioButtonList1" ErrorMessage="Please Select" ValidationGroup="s" ></asp:RequiredFieldValidator>
            </td>
        </tr>
        
        <tr>
            <td class="auto-style1">
                &nbsp;</td>
        </tr>
       
        <tr>
            <td class="auto-style1">
                <asp:Label ID="Label4" runat="server" Text="Name On The Card" ForeColor="#9966FF"></asp:Label>
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:TextBox ID="TextBox2" runat="server" BackColor="#FFFF66"></asp:TextBox>
            &nbsp;<asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextBox2" ErrorMessage="Please Enter Correct Name" ValidationGroup="s" TabIndex="2"></asp:RequiredFieldValidator> 
               
                <br />
                <br />
            </td>
        </tr>
        
        <tr>
            <td class="auto-style3">
                <asp:Label ID="Label5" runat="server" Text="Number On The Card" ForeColor="#9966FF"></asp:Label>
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:TextBox ID="TextBox3" runat="server" BackColor="#FFFF66" MaxLength="16" Width="160px"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="Please Enter Correct Number" ControlToValidate="TextBox3" ValidationGroup="s" TabIndex="3"></asp:RequiredFieldValidator>
                 <asp:RangeValidator ID="rvno" runat="server" ErrorMessage="Enter a Valid Number" MinimumValue="0000000000000000" MaximumValue="9999999999999999" ControlToValidate="TextBox3"></asp:RangeValidator>
               
                     

                <br />
                <br />
            </td>
        </tr>

        <tr>
            <td class="auto-style2">
                <asp:Label ID="Label6" runat="server" Text="CVV" ForeColor="#9966FF"></asp:Label>
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:TextBox ID="TextBox4" runat="server" BackColor="#FFFF66" MaxLength="3" Width="140px" TextMode="Password"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="TextBox4" ErrorMessage="Please Enter Correct CVV Number" ValidationGroup="s" TabIndex="4"></asp:RequiredFieldValidator>
                <asp:RangeValidator ID="RangeValidator1" runat="server" ErrorMessage="Enter a Valid Number" MinimumValue="100" MaximumValue="999" ControlToValidate="TextBox4"></asp:RangeValidator>
                <br />
                <br />
                <br />
            </td>
        </tr>

        <tr>
            <td class="auto-style1">
                <asp:Button ID="Button1" runat="server" Text="Pay" OnClick="Button1_Click" BackColor="#FF3399" ValidationGroup="s" Width="122px" TabIndex="5" />
            </td>
        </tr>

        
    </table>
                        </div>
                    </div>
                </div>
            </div>
    
   
    

</asp:Content>
