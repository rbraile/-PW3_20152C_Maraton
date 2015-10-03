<%@ Page Language="C#" AutoEventWireup="true" MasterPageFile="~/admin_index.Master" CodeBehind="admin_marathonCreation_confirm.aspx.cs" Inherits="PW3_20152C_Maraton.admin_marathonCreation_confirm1" %>

<asp:Content ID="Content1" ContentPlaceHolderID="adminIndex_head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="adminIndex_ContentPlaceHolder" runat="server">
    <h2>Nueva Maraton creada exitosamente!</h2>
    <nav>
        <ul class="nav nav-pills">            
            <li role="presentation"><a href="/admin_marathonCreation.aspx">Crear una nueva Maraton</a></li>
            <li role="presentation"><a href="/admin_marathonResultUpload.aspx">Cargar resultados de una Maraton</a></li>
            <li role="presentation"><a href="/admin_index.aspx">Volver al Inicio de Administrador</a></li>
        </ul>
    </nav>
</asp:Content>
