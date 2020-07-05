<%@ Page Title="" Language="C#" MasterPageFile="~/CartMaster.Master" AutoEventWireup="true" CodeBehind="FormalShirts.aspx.cs" Inherits="YogeshIndustry.FormalShirts" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
	<title>Formal Shirts</title>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

	<!-- products -->
		<div class="container">
		<div class="well well-sm" style="position:relative">
		<strong>Formal Shirts</strong> &nbsp; &nbsp;
		<div class="btn-group">
			<a href="#" id="list" class="btn btn-default btn-sm"><span class="glyphicon glyphicon-th-list">
			</span>List</a> <a href="#" id="grid" class="btn btn-default btn-sm"><span
				class="glyphicon glyphicon-th"></span>Grid</a>
		</div> <br />
	</div>
	<div id="products" class="row list-group">
		<div class="item  col-xs-4 col-lg-4">
			<div class="thumbnail">
				<img class="group list-group-image" src="images/Formal/f1.jpeg" alt="" />
				<div class="caption">
					<h4 class="group inner list-group-item-heading">
						Shirt1</h4>
					<p class="group inner list-group-item-text">
						Product description... Lorem ipsum dolor sit amet, consectetuer adipiscing elit,
						sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat.</p>
					<div class="row">
						<div class="col-xs-12 col-md-6">
							<p class="lead">
								Rs 500</p>
						</div>
						<div class="col-xs-12 col-md-6">
                            <asp:Button ID="btnfs1" runat="server" CssClass="btn btn-success" CommandArgument="cambridge" Text="Add to Cart" OnClick="Fs_Click" />
						</div>
					</div>
				</div>
			</div>
		</div>
		<div class="item  col-xs-4 col-lg-4">
			<div class="thumbnail">
				<img class="group list-group-image" src="images/Formal/fs2.jpg" alt="" />
				<div class="caption">
					<h4 class="group inner list-group-item-heading">
						Shirt2</h4>
					<p class="group inner list-group-item-text">
						Product description... Lorem ipsum dolor sit amet, consectetuer adipiscing elit,
						sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat.</p>
					<div class="row">
						<div class="col-xs-12 col-md-6">
							<p class="lead">
								Rs 600</p>
						</div>
						<div class="col-xs-12 col-md-6">
							 <asp:Button ID="btnfs2" runat="server" CssClass="btn btn-success" CommandArgument="peter england" Text="Add to Cart"  OnClick="Fs_Click" />

						</div>
					</div>
				</div>
			</div>
		</div>
		<div class="item  col-xs-4 col-lg-4">
			<div class="thumbnail">
				<img class="group list-group-image" src="images/Formal/f3.jpg" alt="" />
				<div class="caption">
					<h4 class="group inner list-group-item-heading">
						Shirt3</h4>
					<p class="group inner list-group-item-text">
						Product description... Lorem ipsum dolor sit amet, consectetuer adipiscing elit,
						sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat.</p>
					<div class="row">
						<div class="col-xs-12 col-md-6">
							<p class="lead">
								Rs 700</p>
						</div>
						<div class="col-xs-12 col-md-6">
							 <asp:Button ID="btnfs3" runat="server" CssClass="btn btn-success" CommandArgument="harrison" Text="Add to Cart"  OnClick="Fs_Click" />

						</div>
					</div>
				</div>
			</div>
		</div>
		<div class="item  col-xs-4 col-lg-4">
			<div class="thumbnail">
				<img class="group list-group-image" src="images/Formal/f4.jpg" alt="" />
				<div class="caption">
					<h4 class="group inner list-group-item-heading">
						Shirt4</h4>
					<p class="group inner list-group-item-text">
						Product description... Lorem ipsum dolor sit amet, consectetuer adipiscing elit,
						sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat.</p>
					<div class="row">
						<div class="col-xs-12 col-md-6">
							<p class="lead">
								Rs 800</p>
						</div>
						<div class="col-xs-12 col-md-6">
							 <asp:Button ID="btnfs4" runat="server" CssClass="btn btn-success" CommandArgument="allen solly" Text="Add to Cart"  OnClick="Fs_Click" />

						</div>
					</div>
				</div>
			</div>
		</div>
		<div class="item  col-xs-4 col-lg-4">
			<div class="thumbnail">
				<img class="group list-group-image" src="images/Formal/f5.jpg" alt="" />
				<div class="caption">
					<h4 class="group inner list-group-item-heading">
						Shirt5</h4>
					<p class="group inner list-group-item-text">
						Product description... Lorem ipsum dolor sit amet, consectetuer adipiscing elit,
						sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat.</p>
					<div class="row">
						<div class="col-xs-12 col-md-6">
							<p class="lead">
								Rs 900</p>
						</div>
						<div class="col-xs-12 col-md-6">
							 <asp:Button ID="btnfs5" runat="server" CssClass="btn btn-success" CommandArgument="max" Text="Add to Cart"  OnClick="Fs_Click" />

						</div>
					</div>
				</div>
			</div>
		</div>
		<div class="item  col-xs-4 col-lg-4">
			<div class="thumbnail">
				<img class="group list-group-image" src="images/Formal/f6.jpg" alt="" />
				<div class="caption">
					<h4 class="group inner list-group-item-heading">
						Shirt6</h4>
					<p class="group inner list-group-item-text">
						Product description... Lorem ipsum dolor sit amet, consectetuer adipiscing elit,
						sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat.</p>
					<div class="row">
						<div class="col-xs-12 col-md-6">
							<p class="lead">
								Rs 400</p>
						</div>
						<div class="col-xs-12 col-md-6">
							 <asp:Button ID="btnfs6" runat="server" CssClass="btn btn-success" CommandArgument="Ucb" Text="Add to Cart"  OnClick="Fs_Click" />
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
</div>
		<!-- products -->
</asp:Content>
