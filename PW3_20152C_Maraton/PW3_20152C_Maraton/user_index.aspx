<%@ Page Title="" Language="C#" MasterPageFile="~/user_index.Master" AutoEventWireup="true" CodeBehind="user_index.aspx.cs" Inherits="PW3_20152C_Maraton.usuario1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="userIndex_head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <nav>
        <ul class="nav nav-pills">
            <li role="presentation"><a href="#">Inscribirse a una Maraton</a></li>
            <li role="presentation"><a href="#">Ver historial de Maratones</a></li>
            <li role="presentation"><a href="#">Administrar detos de Usuario</a></li>
            <li role="presentation"><a href="/index.aspx">Cerrar sesion</a></li>
        </ul>
    </nav>
</asp:Content>
