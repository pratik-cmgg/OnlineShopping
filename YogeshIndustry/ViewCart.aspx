<%@ Page Title="" Language="C#" MasterPageFile="~/CartMaster.Master" AutoEventWireup="true" CodeBehind="ViewCart.aspx.cs" Inherits="YogeshIndustry.ViewCart" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <div style="margin-left:200px;margin-top:100px">
        <asp:GridView ID="grdCart" runat="server"  AutoGenerateColumns="False" DataKeyNames="ProductID" OnRowCancelingEdit="grdCart_RowCancelingEdit" OnRowDeleting="grdCart_RowDeleting" OnRowEditing="grdCart_RowEditing" OnRowUpdating="grdCart_RowUpdating" Width="513px">
                <HeaderStyle HorizontalAlign="Left" BackColor="#3D7169" ForeColor="#FFFFFF" />
                <FooterStyle HorizontalAlign="Right" BackColor="#6C6B66" ForeColor="#FFFFFF" />
                <AlternatingRowStyle BackColor="#F8F8F8" />
            <Columns>
                <asp:BoundField DataField="ProductName" HeaderText="Product" ReadOnly="True" />
                <asp:BoundField DataField="Quantity" HeaderText="Quantity" />
                <asp:BoundField DataField="Price" DataFormatString="{0:c}" HeaderText="Price" ReadOnly="True" />
                <asp:BoundField DataField="SubTotal" DataFormatString="{0:c}" HeaderText="Total" ReadOnly="True" />
                <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />

            </Columns>

            <EmptyDataTemplate>
                Your Shopping Cart is empty, add items  <br/><br />
                <a href="FormalShirts.aspx">Continue Shopping </a>
            </EmptyDataTemplate>

        </asp:GridView>
        <br />
        <br />
    </div>

    <div style="margin-left:200px;font-family:'Sitka Small'">
        <asp:Label ID="TotalLabel" runat="server" > </asp:Label>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Button ID="btnOrder" runat="server" Text="Place Order" class="btn btn-success" OnClick="btnOrder_Click" />
    </div>

</asp:Content>
