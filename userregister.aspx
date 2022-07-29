<%@ Page Title="" Language="C#" MasterPageFile="~/visitor.master" AutoEventWireup="true" CodeFile="userregister.aspx.cs" Inherits="eshopping.userregister" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <!-- Start All Pages -->
	<div class="all-page-title page-breadcrumb">
		<div class="container text-center">
			<div class="row">
				<div class="col-lg-12">
					<h1>Register</h1>
				</div>
			</div>
		</div>
	</div>
	<!-- End All Pages -->
<!-- Start Contact -->
	
	<div class="contact-box">
		<div class="container">
	
			<div class="row">
				<div class="col-lg-12">
					<form id="contactForm" runat="server">
						<div class="row">
						<%--	<div class="col-md-12">
								<div class="form-group">
									<input type="text" class="form-control" id="name" name="name" placeholder="Your Name" required data-error="Please enter your name">
									<div class="help-block with-errors"></div>
								</div>                                 
							</div>--%>


							
                <div class="col-md-12">
                  <asp:TextBox ID="firstname" class="form-control"  runat="server" placeholder="First Name"></asp:TextBox>
					<asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="*" ControlToValidate="firstname"></asp:RequiredFieldValidator>
                </div>
                 <div class="col-md-12">
                  <asp:TextBox ID="lastname" class="form-control" runat="server" placeholder="Last Name"></asp:TextBox>
					 <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="*" ControlToValidate="lastname" ForeColor="Red"></asp:RequiredFieldValidator>
                </div>
                 <div class="col-md-12">
                  <asp:TextBox ID="email" class="form-control" runat="server" placeholder="Email"></asp:TextBox>
					 <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ErrorMessage="Invalid email" ControlToValidate="email" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
                  
                </div>
                   <div class="col-md-12">
                  <asp:TextBox ID="cpassword" class="form-control" runat="server" placeholder="Password" TextMode="Password"></asp:TextBox>
					   <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ErrorMessage="Please enter password" ControlToValidate="cpassword"></asp:RequiredFieldValidator>
                </div>
                   <div class="col-md-12">
                  <asp:TextBox ID="contactnumber" class="form-control" runat="server" placeholder="Contact Number"></asp:TextBox>
					   <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ErrorMessage="please contact number" ControlToValidate="contactnumber"></asp:RequiredFieldValidator>
                </div>
                  <div class="col-md-12">
                      <asp:RadioButtonList ID="RadioButtonList1" runat="server" 
                          RepeatDirection="Horizontal">
                          <asp:ListItem Selected>Male</asp:ListItem>
                          <asp:ListItem>Female</asp:ListItem>
                      </asp:RadioButtonList>
                  
                </div>
                
                 <div class="col-md-12">
                 
                      <asp:Label ID="Label1" runat="server" Text=""></asp:Label>
                </div>
               
                <div class="col-xl-12 col-lg-12 col-md-12 col-sm-12">
                    <asp:Button ID="btnadd" runat="server" class="send" Text="Register" 
                        onclick="btnadd_Click" />
                  
                </div>






						</div>            
					</form>
				</div>
			</div>
		</div>
	</div>
	<!-- End Contact -->
	
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
							Ahmedabad,Gujarat,India.
						</p>
					</div>
				</div>
			</div>
		</div>
	</div>
	<!-- End Contact info -->
	

</asp:Content>
