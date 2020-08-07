﻿<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Login.aspx.cs" Inherits="Login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Trang đăng nhập vào khu vực quản trị website</title>
    <%--<link href="cms/admin/css/cssDangNhap.css" rel="stylesheet" />--%>




      <meta charset="utf-8"/>
  <meta name="viewport" content="width=device-width, initial-scale=1"/>
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css"/>
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"></script>

    <style>
    :root {
  --input-padding-x: 1.5rem;
  --input-padding-y: .75rem;
}

body {
  background: #007bff;
  background: linear-gradient(to right, red, #33AEFF);
}

.card-signin {
  border: 0;
  border-radius: 1rem;
  box-shadow: 0 0.5rem 1rem 0 rgba(0, 0, 0, 0.1);
}

.card-signin .card-title {
  margin-bottom: 2rem;
  font-weight: 300;
  font-size: 1.5rem;
}

.card-signin .card-body {
  padding: 2rem;
}

.form-signin {
  width: 100%;
}

.form-signin .btn {
  font-size: 80%;
  border-radius: 5rem;
  letter-spacing: .1rem;
  font-weight: bold;
  padding: 1rem;
  transition: all 0.2s;
}

.form-label-group {
  position: relative;
  margin-bottom: 1rem;
}

.form-label-group input {
  height: auto;
  border-radius: 2rem;
}

.form-label-group>input,
.form-label-group>label {
  padding: var(--input-padding-y) var(--input-padding-x);
}

.form-label-group>label {
  position: absolute;
  top: 0;
  left: 0;
  display: block;
  width: 100%;
  margin-bottom: 0;
  /* Override default `<label>` margin */
  line-height: 1.5;
  color: #495057;
  border: 1px solid transparent;
  border-radius: .25rem;
  transition: all .1s ease-in-out;
}

.form-label-group input::-webkit-input-placeholder {
  color: transparent;
}

.form-label-group input:-ms-input-placeholder {
  color: transparent;
}

.form-label-group input::-ms-input-placeholder {
  color: transparent;
}

.form-label-group input::-moz-placeholder {
  color: transparent;
}

.form-label-group input::placeholder {
  color: transparent;
}

.form-label-group input:not(:placeholder-shown) {
  padding-top: calc(var(--input-padding-y) + var(--input-padding-y) * (2 / 3));
  padding-bottom: calc(var(--input-padding-y) / 3);
}

.form-label-group input:not(:placeholder-shown)~label {
  padding-top: calc(var(--input-padding-y) / 3);
  padding-bottom: calc(var(--input-padding-y) / 3);
  font-size: 12px;
  color: #777;
}

.btn-google {
  color: white;
  background-color: #ea4335;
}

.btn-facebook {
  color: white;
  background-color: #3b5998;
}

/* Fallback for Edge
-------------------------------------------------- */

@supports (-ms-ime-align: auto) {
  .form-label-group>label {
    display: none;
  }
  .form-label-group input::-ms-input-placeholder {
    color: #777;
  }
}

/* Fallback for IE
-------------------------------------------------- */

@media all and (-ms-high-contrast: none),
(-ms-high-contrast: active) {
  .form-label-group>label {
    display: none;
  }
  .form-label-group input:-ms-input-placeholder {
    color: #777;
  }
}
    </style>






</head>
<body>
   <form id="form1" runat="server">
    <%-- <div class="FormDangNhap">
        <div class="head">Đăng nhập hệ thống</div>
        <div class="controls">
            <div class="row">
            <div class="left">Tên đăng nhập</div>
            <div class="right">
                <asp:TextBox ID="tbTenDangNhap" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                    ErrorMessage="*" SetFocusOnError="True" Display="Dynamic" 
                    ControlToValidate="tbTenDangNhap" ForeColor="Red"></asp:RequiredFieldValidator>
            </div>            
        </div>
        <div class="row">
            <div class="left">Mật khẩu</div>
            <div class="right">
                <asp:TextBox ID="tbMatKhau" runat="server" TextMode="Password"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                    ErrorMessage="*" SetFocusOnError="True" Display="Dynamic" 
                    ControlToValidate="tbMatKhau" ForeColor="Red"></asp:RequiredFieldValidator>
            </div>            
        </div>
        <div class="row">
            <div class="left">&nbsp;</div>
            <div class="right">
                <asp:LinkButton ID="lbtDangNhap" runat="server" CssClass="btDangNhap" OnClick="lbtDangNhap_Click">Đăng nhập</asp:LinkButton>
            </div>            
        </div>--%>







            <div class="container">
    <div class="row">
      <div class="col-sm-9 col-md-7 col-lg-5 mx-auto">
        <div class="card card-signin my-5">
          <div class="card-body">
            <h5 class="card-title text-center">Đăng nhập</h5>
            <form class="form-signin">

              <div class="form-label-group">
               
                  <asp:TextBox ID="tbTenDangNhap" runat="server" class="form-control"> </asp:TextBox>
                   <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                    ErrorMessage="*" SetFocusOnError="True" Display="Dynamic" 
                    ControlToValidate="tbTenDangNhap" ForeColor="Red"></asp:RequiredFieldValidator>
                <label for="inputEmail">Tên đăng nhập</label>
              </div>

              <div class="form-label-group">
                
                  <asp:TextBox type="password" ID="tbMatKhau" runat="server" class="form-control"> </asp:TextBox>
                  <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                    ErrorMessage="*" SetFocusOnError="True" Display="Dynamic" 
                    ControlToValidate="tbMatKhau" ForeColor="Red"></asp:RequiredFieldValidator>
                <label for="inputPassword">Mật khẩu</label>
              </div>

              <div class="custom-control custom-checkbox mb-3">
                <%--<input type="checkbox" class="custom-control-input" id="customCheck1"/>
                <label class="custom-control-label" for="customCheck1">Remember password</label>--%>

                   <asp:Literal ID="ltrThongBao" runat="server"></asp:Literal>
                  
              </div>
              
                <asp:Button ID="Button2" runat="server" Text="Đăng nhập" class="btn btn-lg btn-primary btn-block text-uppercase" OnClick="Button2_Click"/>
                
              <hr class="my-4"/>
              <button class="btn btn-lg btn-google btn-block text-uppercase" type="submit"><i class="fab fa-google mr-2"></i> Đăng nhập với Google+</button>
              <button class="btn btn-lg btn-facebook btn-block text-uppercase" type="submit"><i class="fab fa-facebook-f mr-2"></i> Đăng nhập với Facebook</button>
                
            </form>
          </div>
        </div>
      </div>
    </div>
  </div>

        <div>
           
        </div>
       <%-- </div>
    </div>--%>
    </form>
</body>
</html>
