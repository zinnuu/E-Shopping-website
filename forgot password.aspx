<%@ Page Title="" Language="C#" MasterPageFile="~/visitor.master" AutoEventWireup="true" CodeFile="Login.aspx.cs" Inherits="eshopping.Login" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="all-page-title page-breadcrumb">
		<div class="container text-center">
			<div class="row">
				<div class="col-lg-12">
					<h1>Forgot password</h1>
				</div>
			</div>
		</div>
	</div>
	<!-- End All Pages -->
<!-- Start Contact -->
	
	<div class="contact-box">
		<div class="container">
    <div class="white_color">
      <div class="row">

        <div class="col-md-12 col-sm-12">

          <form id="Form1" class="contact_bg" style="width:800px;margin:0px auto;" runat="server">
            <div class="row">
              <div class="col-md-12">
          
               
                <div class="col-md-12">
                  <asp:TextBox ID="email" class="contactus" runat="server" placeholder="Email" OnTextChanged="email_TextChanged"></asp:TextBox>
                  
                </div>
                 <div class="col-md-12">
                  <asp:TextBox ID="password" class="contactus" runat="server" TextMode="Password" placeholder="Password"></asp:TextBox>
                  
                </div>
            
                  <div class="col-md-12">
                      <asp:RadioButtonList ID="RadioButtonList1" runat="server" 
                          RepeatDirection="Horizontal">
                          <asp:ListItem Selected>Admin</asp:ListItem>
                          <asp:ListItem>Customer</asp:ListItem>
                       
                      </asp:RadioButtonList>
                  
                </div>
                
                 <div class="col-md-12">
                 
                      <asp:Label ID="Label1" runat="server" Text="user name"></asp:Label>
                </div>
               
                <div class="col-xl-12 col-lg-12 col-md-12 col-sm-12">
                    <asp:Button ID="btnadd" runat="server" class="send" Text="Login" 
                        onclick="btnadd_Click" />
                  
                </div>
                  <asp:Label ID="Label2" runat="server" Text="Label"></asp:Label>
              </div>
            </form>
          </div>
        </div>

      </div>
    </div>

        </div>
</asp:Content>
