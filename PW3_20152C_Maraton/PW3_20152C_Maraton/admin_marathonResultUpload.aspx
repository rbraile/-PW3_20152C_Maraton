<%@ Page Title="" Language="C#" MasterPageFile="~/admin_index.Master" AutoEventWireup="true" CodeBehind="admin_marathonResultUpload.aspx.cs" Inherits="PW3_20152C_Maraton.admin_marathonResultUpload1" %>

<asp:Content ID="Content1" ContentPlaceHolderID="adminIndex_head" runat="server">
    <link rel="stylesheet" href="css/login.css" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="adminIndex_ContentPlaceHolder" runat="server">
    <div class="form-horizontal login-form">
        <div class="form-group">
            <label for="inputEmail3" class="col-sm-12 control-label">
                Dorsal Numero: 1</label>
             <label for="inputEmail3" class="col-sm-12 control-label">
                Nombre y Apellido: Juan Perez</label>   
            <label for="inputEmail3" class="col-sm-5 control-label">
                Posicion de llegada</label>
            <div class="col-sm-7">
                <asp:TextBox CssClass="form-control" ID="finish_position" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator CssClass="error" ID="RequiredFieldValidator7" ControlToValidate="finish_position"
                    runat="server" Display="Dynamic" ErrorMessage="Este campo es obligatorio"></asp:RequiredFieldValidator>
            </div>
        </div>
        <div class="form-group">
            <label for="inputEmail3" class="col-sm-5 control-label">
                Tiempo de llegada</label>
            <div class="col-sm-7">
                <asp:TextBox CssClass="form-control" ID="finish_time" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator CssClass="error" ID="RequiredFieldValidator1" ControlToValidate="finish_time"
                    runat="server" Display="Dynamic" ErrorMessage="Este campo es obligatorio"></asp:RequiredFieldValidator>
            </div>
        </div>
        <div class="form-group">
            <label for="inputEmail3" class="col-sm-5 control-label">
                Finalizó la carrera?</label>
            <div class="col-sm-7">
                <asp:DropDownList ID="finish_flag" runat="server">
                    <asp:ListItem Value="Si"></asp:ListItem>
                    <asp:ListItem Value="No"></asp:ListItem>
                </asp:DropDownList>
                <asp:RequiredFieldValidator CssClass="error" ID="RequiredFieldValidator2" ControlToValidate="finish_flag"
                    runat="server" Display="Dynamic" ErrorMessage="Este campo es obligatorio"></asp:RequiredFieldValidator>
            </div>
        </div>        
        <div class="form-group">
            <div class="col-sm-offset-5 col-sm-12">
                <asp:Button CssClass="btn btn-default" ID="Button1" runat="server" Text="Cargar Resultados"
                    OnClick="upload_result" />
                <asp:Button CssClass="btn btn-default" ID="Button2" runat="server" Text="Cancelar"/>
            </div>
        </div>
    </div></asp:Content>
