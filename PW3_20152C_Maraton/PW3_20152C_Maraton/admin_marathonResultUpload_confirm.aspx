<%@ Page Title="" Language="C#" MasterPageFile="~/admin_marathonResultUpload_confirm.Master" AutoEventWireup="true" CodeBehind="admin_marathonResultUpload_confirm.aspx.cs" Inherits="PW3_20152C_Maraton.admin_marathonResultUpload_confirm1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="uploadConfirm_head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="uploadConfirm_ContentPlaceHolder" runat="server">
    <h2>Resultados cargados exitosamente!</h2>
    <nav>
        <ul class="nav nav-pills">        
            <li role="presentation"><a href="/admin_marathonResultUpload.aspx">Cargar nuevos resultados de una Maraton</a></li>    
            <li role="presentation"><a href="/admin_marathonCreation.aspx">Crear una Maraton</a></li>
            <li role="presentation"><a href="/admin_index.aspx">Volver al Inicio de Administrador</a></li>
        </ul>
    </nav>
</asp:Content>