<%@ Page Title="" Language="C#" MasterPageFile="~/admin_index.Master" AutoEventWireup="true" CodeBehind="admin_index.aspx.cs" Inherits="PW3_20152C_Maraton.usuario1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="adminIndex_head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="adminIndex_ContentPlaceHolder" runat="server">
    <nav>
        <ul class="nav nav-pills">
            <li role="presentation"><a href="/admin_marathonCreation.aspx">Crear Nueva Maraton</a></li>
            <li role="presentation"><a href="/admin_marathonResultUpload.aspx">Cargar Resultados de una Maraton</a></li>
            <li role="presentation"><a href="/index.aspx">Cerrar sesion</a></li>
        </ul>
    </nav>
</asp:Content>
