<%@ Page Title="" Language="C#" MasterPageFile="~/CartMaster.Master" AutoEventWireup="true" CodeBehind="Ponchos.aspx.cs" Inherits="YogeshIndustry.Ponchos" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
	<title>Ponchos</title>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
	<!-- ponchos -->
		<div class="container">
		<div class="well well-sm">
		<strong>Ponchos</strong> &nbsp; &nbsp;
		<div class="btn-group">
			<a href="#" id="list" class="btn btn-default btn-sm"><span class="glyphicon glyphicon-th-list">
			</span>List</a> <a href="#" id="grid" class="btn btn-default btn-sm"><span
				class="glyphicon glyphicon-th"></span>Grid</a>
		</div> <br />
	</div>
	<div id="products" class="row list-group">
		<div class="item  col-xs-4 col-lg-4">
			<div class="thumbnail">
				<img class="group list-group-image" src="images/Ponchos/p1.jpg" alt="" />
				<div class="caption">
					<h4 class="group inner list-group-item-heading">
						Ponchos 1</h4>
					<p class="group inner list-group-item-text">
						Product description... Lorem ipsum dolor sit amet, consectetuer adipiscing elit,
						sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat.</p>
					<div class="row">
						<div class="col-xs-12 col-md-6">
							<p class="lead">
								Rs 500</p>
						</div>
						<div class="col-xs-12 col-md-6">
							<asp:Button ID="btnp1" runat="server" CssClass="btn btn-success" CommandArgument="poncho 1" Text="Add to Cart" OnClick="P_Click"/>
						</div>
					</div>
				</div>
			</div>
		</div>
		<div class="item  col-xs-4 col-lg-4">
			<div class="thumbnail">
				<img class="group list-group-image" src="images/Ponchos/p2.jpg" alt="" />
				<div class="caption">
					<h4 class="group inner list-group-item-heading">
						Ponchos 2</h4>
					<p class="group inner list-group-item-text">
						Product description... Lorem ipsum dolor sit amet, consectetuer adipiscing elit,
						sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat.</p>
					<div class="row">
						<div class="col-xs-12 col-md-6">
							<p class="lead">
								Rs 600</p>
						</div>
						<div class="col-xs-12 col-md-6">
							<asp:Button ID="btnp2" runat="server" CssClass="btn btn-success" CommandArgument="poncho 2" Text="Add to Cart" OnClick="P_Click"/>
						</div>
					</div>
				</div>
			</div>
		</div>
		<div class="item  col-xs-4 col-lg-4">
			<div class="thumbnail">
				<img class="group list-group-image" src="images/Ponchos/p3.jpg" alt="" />
				<div class="caption">
					<h4 class="group inner list-group-item-heading">
						Ponchos 3</h4>
					<p class="group inner list-group-item-text">
						Product description... Lorem ipsum dolor sit amet, consectetuer adipiscing elit,
						sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat.</p>
					<div class="row">
						<div class="col-xs-12 col-md-6">
							<p class="lead">
								Rs 700</p>
						</div>
						<div class="col-xs-12 col-md-6">
							<asp:Button ID="btnp3" runat="server" CssClass="btn btn-success" CommandArgument="poncho 3" Text="Add to Cart" OnClick="P_Click"/>
						</div>
					</div>
				</div>
			</div>
		</div>
		<div class="item  col-xs-4 col-lg-4">
			<div class="thumbnail">
				<img class="group list-group-image" src="images/Ponchos/p4.jpg" alt="" />
				<div class="caption">
					<h4 class="group inner list-group-item-heading">
						Ponchos 4</h4>
					<p class="group inner list-group-item-text">
						Product description... Lorem ipsum dolor sit amet, consectetuer adipiscing elit,
						sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat.</p>
					<div class="row">
						<div class="col-xs-12 col-md-6">
							<p class="lead">
								Rs 800</p>
						</div>
						<div class="col-xs-12 col-md-6">
							<asp:Button ID="btnp4" runat="server" CssClass="btn btn-success" CommandArgument="poncho 4" Text="Add to Cart" OnClick="P_Click"/>

						</div>
					</div>
				</div>
			</div>
		</div>
		<div class="item  col-xs-4 col-lg-4">
			<div class="thumbnail">
				<img class="group list-group-image" src="images/Ponchos/p5.jpg" alt="" />
				<div class="caption">
					<h4 class="group inner list-group-item-heading">
						Ponchos 5</h4>
					<p class="group inner list-group-item-text">
						Product description... Lorem ipsum dolor sit amet, consectetuer adipiscing elit,
						sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat.</p>
					<div class="row">
						<div class="col-xs-12 col-md-6">
							<p class="lead">
								Rs 900</p>
						</div>
						<div class="col-xs-12 col-md-6">
							<asp:Button ID="btnp5" runat="server" CssClass="btn btn-success" CommandArgument="poncho 5" Text="Add to Cart" OnClick="P_Click"/>

						</div>
					</div>
				</div>
			</div>
		</div>
		<div class="item  col-xs-4 col-lg-4">
			<div class="thumbnail">
				<img class="group list-group-image" src="images/Ponchos/p6.jpg" alt="" />
				<div class="caption">
					<h4 class="group inner list-group-item-heading">
						Ponchos 6</h4>
					<p class="group inner list-group-item-text">
						Product description... Lorem ipsum dolor sit amet, consectetuer adipiscing elit,
						sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat.</p>
					<div class="row">
						<div class="col-xs-12 col-md-6">
							<p class="lead">
								Rs 400</p>
						</div>
						<div class="col-xs-12 col-md-6">
							<asp:Button ID="btnp6" runat="server" CssClass="btn btn-success" CommandArgument="poncho 6" Text="Add to Cart" OnClick="P_Click"/>

						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
</div>
	<!-- ponchos-->
</asp:Content>
