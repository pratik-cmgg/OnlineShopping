<%@ Page Title="" Language="C#" MasterPageFile="~/Main.Master" AutoEventWireup="true" CodeBehind="Home.aspx.cs" Inherits="YogeshIndustry.Home" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
	<title>Home</title>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

	<!--slider-->
	<div id="slider" class="flexslider">

		<ul class="slides">
			<li>
				<img src="images/slider/slider1.jpg"/>
			</li>
			<li>
				<img src="images/slider/slider2.jpg"/>
			</li>
			<li>
				<img src="images/slider/slider3.jpg"/>
			</li>
            <li>
			<img src="add/ec69fd8544376be88d6e676a9751172e.jpg" />
			</li>
             <li>
			<img src="add/Textile-and-fashion.jpg" />
			</li>
		</ul>

	</div>

	<!--about-->
	<div id="about">

		<div class="container">
			<div class="row">
				<div class="col-xs-12 col-sm-8 col-md-6 col-sm-offset-2 col-md-offset-3">
					<div class="about-heading">
						<h2>about</h2>
						<p>Kirti Textiles is a newly found startup. We provide high quality textiles , global delivery and 24 X 7 support.</p>
					</div>
				</div>
			</div>
		</div>

		<!--about wrapper left-->
		<div class="container">

			<div class="row">
				<div class="col-xs-12 hidden-sm col-md-5">

					<div class="about-left">
						<img src="images/about/about1.jpg" alt=""/>
					</div>

				</div>

				<!--about wrapper right-->
				<div class="col-xs-12 col-md-7">
					<div class="about-right" id="abt">
						<div class="about-right-heading">
							<h1>about our company</h1>
						</div>

						<div class="about-right-boot">
							<div class="about-right-wrapper">
								<a href="#"><h3>Best Quality Clothes</h3></a>
								<p>Quality is our forte! We bet you won't be disappointed. That too at affordable costs.. You sure you dont wanna own one of our product? </p>
							</div>
						</div>

						<div class="about-right-best">
							<div class="about-right-wrapper">
								<a href="#"><h3>Customer-First Approach</h3></a>
								<p>You guys reading this and ones checking out our product are everything for us! We have based our business purely focusing and catering to our customers!</p>
							</div>
						</div>

						<div class="about-right-support">
							<div class="about-right-wrapper">
								<a href="#"><h3>24/7 Online Support</h3></a>
								<p>Any suggestion? Any know-how tips? Want to exchange?(that'll happen rarely though), We are here for you? Reach out for us anytime!</p>
							</div>
						</div>

					</div>
				</div>
			</div>

		</div>
	</div>

</asp:Content>
