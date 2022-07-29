<%@ Page Title="" Language="C#" MasterPageFile="~/visitor.master" AutoEventWireup="true" CodeFile="home.aspx.cs" Inherits="eshopping.home" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
<br /><br /><br /><br />

	
	<!-- Start Menu -->
	<div class="menu-box">
		<div class="container">
			<div class="row">
				<div class="col-lg-12">
					<div class="heading-title text-center">
						<h2>All Products</h2>
						<p>E-Shopping Products</p>
					</div>
				</div>
			</div>
			
			<div class="row inner-menu-box">
		<%--		<div class="col-3">
					<div class="nav flex-column nav-pills" id="v-pills-tab" role="tablist" aria-orientation="vertical">
						<a class="nav-link active" id="v-pills-home-tab" data-toggle="pill" href="#v-pills-home" role="tab" aria-controls="v-pills-home" aria-selected="true">All</a>
						<a class="nav-link" id="v-pills-profile-tab" data-toggle="pill" href="#v-pills-profile" role="tab" aria-controls="v-pills-profile" aria-selected="false">Drinks</a>
						<a class="nav-link" id="v-pills-messages-tab" data-toggle="pill" href="#v-pills-messages" role="tab" aria-controls="v-pills-messages" aria-selected="false">Lunch</</a>
						<a class="nav-link" id="v-pills-settings-tab" data-toggle="pill" href="#v-pills-settings" role="tab" aria-controls="v-pills-settings" aria-selected="false">Dinner</a>
					</div>
				</div>--%>
				
				<div class="col-12">
					<div class="tab-content" id="v-pills-tabContent">
						<div class="tab-pane fade show active" id="v-pills-home" role="tabpanel" aria-labelledby="v-pills-home-tab">


							<div class="row">  
								<form id="Form1" class="contact_bg" runat="server">
								
					<%--			<asp:DataList ID="DataList1" runat="server" RepeatColumns="4"
            RepeatDirection="Horizontal" Height="282px" Width="474px" 
      onupdatecommand="DataList1_UpdateCommasnd">--%>
									<asp:DataList ID="DataList1" runat="server" RepeatColumns="5">
									<ItemTemplate>
									
								<div class="col-lg-4 col-md-6 special-grid drinks">
									<div class="gallery-single fix">
								<%--	<asp:ImageButton ID="ImageButton2" runat="server" ImageUrl='<%# Eval("pphoto", "../photos\\{0}") %>' PostBackUrl='<%# Eval("productid", "ProductDetails.aspx?productid={0}") %>' OnClick="ImageButton1_Click" Height="200" Width="200"/>&nbsp;<br />
									--%>	
										
										<asp:ImageButton ID="ImageButton1" runat="server" ImageUrl='<%# Eval("pphoto", "../photos\\{0}") %>' PostBackUrl='<%# Eval("productid", "Login.aspx?productid={0}") %>' OnClick="ImageButton1_Click" Height="200" Width="200"/>&nbsp;<br />
									
										<div class="why-text" style="width:200px">
											<br />
										<asp:Label ID="Label1" runat="server" Text='<%# Eval("productname") %>'></asp:Label>
											<asp:Label ID="Label3" runat="server" Text='<%# Eval("pdetails") %>'></asp:Label>
											<asp:Label ID="Label4" runat="server" Text='<%# Eval("pprice") %>'></asp:Label>
											<asp:Label ID="Label2" runat="server" Text="Size"></asp:Label>
											<asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
										<asp:TextBox ID="TextBox1" runat="server" Text="" Placeholder="Enter Quantity"></asp:TextBox>

                  <br /><asp:HyperLink ID="CartLink" runat="server" NavigateUrl="~/Login.aspx">Add to Cart</asp:HyperLink><br />
      
									
										</div>
									</div>
								</div>
								
			<%--	<div class="col-lg-4 col-md-6 special-grid drinks">
									<div class="gallery-single fix">
										<asp:ImageButton ID="ImageButton2" runat="server" ImageUrl='<%# Eval("pphoto", "../photos\\{0}") %>' PostBackUrl='<%# Eval("productid", "ProductDetails.aspx?productid={0}") %>' OnClick="ImageButton1_Click" Height="200" Width="200"/>&nbsp;<br />
										<div class="why-text">
											<h4><asp:Label ID="Label1" runat="server" Text='<%# Eval("productname") %>'></asp:Label></h4>
											<p><asp:Label ID="Label3" runat="server" Text='<%# Eval("pdetails") %>'></asp:Label></p>
											<h5><asp:Label ID="Label4" runat="server" Text='<%# Eval("pprice") %>'></asp:Label></h5>
										<asp:TextBox ID="TextBox1" runat="server" Text="" Placeholder="Enter Quantity"></asp:TextBox><br />
                  <br />
											<asp:Button ID="Button1" runat="server" Font-Names="Aharoni" Font-Size="Smaller"
                    Text="Add To Cart" CommandName="update" />
										</div>
									</div>
								</div>--%>
                 </ItemTemplate>
        </asp:DataList></form><br />
								
								
							</div>
							
						</div>
					
							
					</div>
				</div>
			</div>
			
		</div>
	</div>
	<!-- End Menu -->
	
	
	
	<!-- Start Contact info -->
	<div class="contact-imfo-box">
		<div class="container">
			<div class="row">
				<div class="col-md-4 arrow-right">
					<i class="fa fa-volume-control-phone"></i>
					<div class="overflow-hidden">
						<h4>Phone</h4>
						<p class="lead">
								+91 84693 32704
						</p>
					</div>
				</div>
				<div class="col-md-4 arrow-right">
					<i class="fa fa-envelope"></i>
					<div class="overflow-hidden">
						<h4>Email</h4>
						<p class="lead">
							freyaeshopping@gmail.com
						</p>
					</div>
				</div>
				<div class="col-md-4">
					<i class="fa fa-map-marker"></i>
					<div class="overflow-hidden">
						<h4>Location</h4>
						<p class="lead">
							Ahmebabad,Gujrat,India
						</p>
					</div>
				</div>
			</div>
		</div>
	</div>
	<!-- End Contact info -->
</asp:Content>
