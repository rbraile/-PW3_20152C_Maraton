<%@ Page Title="" Language="C#" MasterPageFile="~/admin_index.Master" AutoEventWireup="true"
    CodeBehind="admin_login.aspx.cs" Inherits="PW3_20152C_Maraton.login" %>

<asp:Content ID="Content1" ContentPlaceHolderID="adminIndex_head" runat="server">
    <link rel="stylesheet" href="css/login.css" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="adminIndex_ContentPlaceHolder" runat="server">
    <div class="form-horizontal login-form">
        <div class="form-group">
            <label for="inputEmail3" class="col-sm-2 control-label">
                Usuario</label>
            <div class="col-sm-10">
                <asp:TextBox CssClass="form-control" ID="admin_name" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator CssClass="error" ID="admin_name_required" ControlToValidate="admin_name"
                    runat="server" Display="Dynamic" ErrorMessage="Este campo es obligatorio"></asp:RequiredFieldValidator>
            </div>
        </div>
        <div class="form-group">
            <label for="inputPassword3" class="col-sm-2 control-label">
                Clave</label>
            <div class="col-sm-10">
                <asp:TextBox CssClass="form-control" ID="admin_password" runat="server" TextMode="Password"></asp:TextBox>
                <asp:RequiredFieldValidator CssClass="error" ID="admin_password_required" runat="server"
                    ControlToValidate="admin_password" Display="Dynamic" ErrorMessage="Este campo es obligatorio"></asp:RequiredFieldValidator>
            </div>
        </div>
        <div class="form-group">
            <div class="col-sm-offset-2 col-sm-10">
                <asp:Button CssClass="btn btn-default" ID="Login_admin" runat="server" Text="Login"
                    OnClick="login_admin" />
            </div>
        </div>
    </div>
</asp:Content>
