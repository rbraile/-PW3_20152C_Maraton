<%@ Page Language="C#" AutoEventWireup="true" MasterPageFile="~/admin_index.Master"CodeBehind="newUser_registration_confirm.aspx.cs" Inherits="PW3_20152C_Maraton.newUser_registration_confirm" %>

<asp:Content ID="Content1" ContentPlaceHolderID="adminIndex_head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="adminIndex_ContentPlaceHolder" runat="server">
    <h2>Nuevo Usuario creado exitosamente!</h2>
    <nav>
        <ul class="nav nav-pills">            
            <li role="presentation"><a href="/user_login.aspx">Iniciar sesión de Usuario</a></li>
            <li role="presentation"><a href="/index.aspx">Volver al Inicio</a></li>
        </ul>
    </nav>
</asp:Content>
