<%@ Page Title="" Language="C#" MasterPageFile="~/user_login.Master" AutoEventWireup="true" CodeBehind="user_login.aspx.cs" Inherits="PW3_20152C_Maraton.login" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link rel="stylesheet" href="css/login.css"/>
</asp:Content>
    <asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
        <div class="form-horizontal login-form">
            <div class="form-group">
                <label for="inputEmail3" class="col-sm-2 control-label">Usuario</label>
                <div class="col-sm-10">
                      <asp:TextBox CssClass="form-control" ID="user_name" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator CssClass="error" ID="RequiredFieldValidator1" ControlToValidate="user_name" runat="server" Display="Dynamic" ErrorMessage="Este campo es obligatorio"></asp:RequiredFieldValidator>
                </div>
              </div>
              <div class="form-group">
                <label for="inputPassword3" class="col-sm-2 control-label">Clave</label>
                <div class="col-sm-10">
                     <asp:TextBox CssClass="form-control" ID="user_clave" runat="server"></asp:TextBox>
                    <asp:RequiredFieldValidator CssClass="error" ID="RequiredFieldValidator2" runat="server" ControlToValidate="user_clave" Display="Dynamic" ErrorMessage="Este campo es obligatorio"></asp:RequiredFieldValidator>
                </div>
              </div>
              <div class="form-group">
                <div class="col-sm-offset-2 col-sm-10">
                  <asp:Button CssClass="btn btn-default" ID="Login_user" runat="server" Text="Login" OnClick="login_user" />
                </div>
              </div>
        </div>
    </asp:Content>