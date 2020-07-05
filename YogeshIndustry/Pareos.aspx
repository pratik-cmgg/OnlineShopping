<%@ Page Title="" Language="C#" MasterPageFile="~/CartMaster.Master" AutoEventWireup="true" CodeBehind="Pareos.aspx.cs" Inherits="YogeshIndustry.Pareos" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
	<title>Pareos</title>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
	<!-- pareos -->
		<div class="container">
		<div class="well well-sm">
		<strong>Pareos</strong> &nbsp; &nbsp;
		<div class="btn-group">
			<a href="#" id="list" class="btn btn-default btn-sm"><span class="glyphicon glyphicon-th-list">
			</span>List</a> <a href="#" id="grid" class="btn btn-default btn-sm"><span
				class="glyphicon glyphicon-th"></span>Grid</a>
		</div> <br />
	</div>
	<div id="products" class="row list-group">
		<div class="item  col-xs-4 col-lg-4">
			<div class="thumbnail">
				<img class="group list-group-image" src="images/Pareos/pr1.jpg" alt="" />
				<div class="caption">
					<h4 class="group inner list-group-item-heading">
						Pareos 1</h4>
					<p class="group inner list-group-item-text">
						Product description... Lorem ipsum dolor sit amet, consectetuer adipiscing elit,
						sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat.</p>
					<div class="row">
						<div class="col-xs-12 col-md-6">
							<p class="lead">
								Rs 500</p>
						</div>
						<div class="col-xs-12 col-md-6">
							<asp:Button ID="btnpr1" runat="server" CssClass="btn btn-success" CommandArgument="pareos 1" Text="Add to Cart" OnClick="Pr_Click" />
						</div>
					</div>
				</div>
			</div>
		</div>
		<div class="item  col-xs-4 col-lg-4">
			<div class="thumbnail">
				<img class="group list-group-image" src="images/Pareos/pr2.jpg" alt="" />
				<div class="caption">
					<h4 class="group inner list-group-item-heading">
						Pareos 2</h4>
					<p class="group inner list-group-item-text">
						Product description... Lorem ipsum dolor sit amet, consectetuer adipiscing elit,
						sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat.</p>
					<div class="row">
						<div class="col-xs-12 col-md-6">
							<p class="lead">
								Rs 600</p>
						</div>
						<div class="col-xs-12 col-md-6">
							<asp:Button ID="btnpr2" runat="server" CssClass="btn btn-success" CommandArgument="pareos 2" Text="Add to Cart" OnClick="Pr_Click" />
						</div>
					</div>
				</div>
			</div>
		</div>
		<div class="item  col-xs-4 col-lg-4">
			<div class="thumbnail">
				<img class="group list-group-image" src="images/Pareos/pr3.jpg" alt="" />
				<div class="caption">
					<h4 class="group inner list-group-item-heading">
						Pareos 3</h4>
					<p class="group inner list-group-item-text">
						Product description... Lorem ipsum dolor sit amet, consectetuer adipiscing elit,
						sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat.</p>
					<div class="row">
						<div class="col-xs-12 col-md-6">
							<p class="lead">
								Rs 700</p>
						</div>
						<div class="col-xs-12 col-md-6">
							<asp:Button ID="btnpr3" runat="server" CssClass="btn btn-success" CommandArgument="pareos 3" Text="Add to Cart" OnClick="Pr_Click" />
						</div>
					</div>
				</div>
			</div>
		</div>
		<div class="item  col-xs-4 col-lg-4">
			<div class="thumbnail">
				<img class="group list-group-image" src="images/Pareos/pr4.jpg" alt="" />
				<div class="caption">
					<h4 class="group inner list-group-item-heading">
						Pareos 4</h4>
					<p class="group inner list-group-item-text">
						Product description... Lorem ipsum dolor sit amet, consectetuer adipiscing elit,
						sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat.</p>
					<div class="row">
						<div class="col-xs-12 col-md-6">
							<p class="lead">
								Rs 800</p>
						</div>
						<div class="col-xs-12 col-md-6">
							<asp:Button ID="btnpr4" runat="server" CssClass="btn btn-success" CommandArgument="pareos 4" Text="Add to Cart" OnClick="Pr_Click" />
						</div>
					</div>
				</div>
			</div>
		</div>
		<div class="item  col-xs-4 col-lg-4">
			<div class="thumbnail">
				<img class="group list-group-image" src="images/Pareos/pr5.jpg" alt="" />
				<div class="caption">
					<h4 class="group inner list-group-item-heading">
						Pareos 5</h4>
					<p class="group inner list-group-item-text">
						Product description... Lorem ipsum dolor sit amet, consectetuer adipiscing elit,
						sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat.</p>
					<div class="row">
						<div class="col-xs-12 col-md-6">
							<p class="lead">
								Rs 900</p>
						</div>
						<div class="col-xs-12 col-md-6">
							<asp:Button ID="btnpr5" runat="server" CssClass="btn btn-success" CommandArgument="pareos 5" Text="Add to Cart" OnClick="Pr_Click" />
						</div>
					</div>
				</div>
			</div>
		</div>
		<div class="item  col-xs-4 col-lg-4">
			<div class="thumbnail">
				<img class="group list-group-image" src="images/Pareos/pr6.jpg" alt="" />
				<div class="caption">
					<h4 class="group inner list-group-item-heading">
						Pareos 6</h4>
					<p class="group inner list-group-item-text">
						Product description... Lorem ipsum dolor sit amet, consectetuer adipiscing elit,
						sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat.</p>
					<div class="row">
						<div class="col-xs-12 col-md-6">
							<p class="lead">
								Rs 400</p>
						</div>
						<div class="col-xs-12 col-md-6">
							<asp:Button ID="btnpr6" runat="server" CssClass="btn btn-success" CommandArgument="pareos 6" Text="Add to Cart" OnClick="Pr_Click" />
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
</div>
		<!-- pareos -->
</asp:Content>
