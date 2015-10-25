<%@ Page Language="C#" AutoEventWireup="true" MasterPageFile="~/admin_index.Master"
    CodeBehind="newUser_registration.aspx.cs" Inherits="PW3_20152C_Maraton.newUser_registration" %>

<asp:Content ID="Content1" ContentPlaceHolderID="adminIndex_head" runat="server">
    <link rel="stylesheet" href="css/login.css" />
    <script src="scripts/funciones.js"></script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="adminIndex_ContentPlaceHolder" runat="server">
    <div class="form-horizontal login-form">
        <div class="form-group">
            <label for="inputEmail3" class="col-sm-5 control-label">
                Nombre de Usuario</label>
            <div class="col-sm-7">
                <asp:TextBox CssClass="form-control" ID="username" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator CssClass="error" ID="RequiredFieldValidator1" ControlToValidate="username"
                    runat="server" Display="Dynamic" ErrorMessage="Este campo es obligatorio"></asp:RequiredFieldValidator>
            </div>
        </div>
        <div class="form-group">
            <label for="inputEmail3" class="col-sm-5 control-label">
                Contraseña</label>
            <div class="col-sm-7">
                <asp:TextBox CssClass="form-control" ID="TextBox2" runat="server" TextMode="Password"></asp:TextBox>
                <asp:RequiredFieldValidator CssClass="error" ID="RequiredFieldValidator2" ControlToValidate="TextBox2"
                    runat="server" Display="Dynamic" ErrorMessage="Este campo es obligatorio"></asp:RequiredFieldValidator>
            </div>
        </div>
        <div class="form-group">
            <label for="inputEmail3" class="col-sm-5 control-label">
                Nombre</label>
            <div class="col-sm-7">
                <asp:TextBox CssClass="form-control" ID="TextBox3" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator CssClass="error" ID="RequiredFieldValidator3" ControlToValidate="TextBox3"
                    runat="server" Display="Dynamic" ErrorMessage="Este campo es obligatorio"></asp:RequiredFieldValidator>
            </div>
        </div>
        <div class="form-group">
            <label for="inputEmail3" class="col-sm-5 control-label">
                Apellido</label>
            <div class="col-sm-7">
                <asp:TextBox CssClass="form-control" ID="TextBox4" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator CssClass="error" ID="RequiredFieldValidator4" ControlToValidate="TextBox4"
                    runat="server" Display="Dynamic" ErrorMessage="Este campo es obligatorio"></asp:RequiredFieldValidator>
            </div>
        </div>
        <div class="form-group">
            <label for="inputEmail3" class="col-sm-5 control-label">
                Email:</label>
            <div class="col-sm-7">
                <asp:TextBox CssClass="form-control" ID="Email" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator CssClass="error" ID="RequiredFieldValidator7" ControlToValidate="Email"
                    runat="server" Display="Dynamic" ErrorMessage="Este campo es obligatorio"></asp:RequiredFieldValidator>
                <asp:RegularExpressionValidator ID="RegularExpressionEmail" CssClass="error" runat="server" ErrorMessage="Email invalido." ControlToValidate="Email" ValidationExpression="^([\w\.\-]+)@([\w\-]+)((\.(\w){2,3})+)$" />
            </div>
        </div>
        
        <div class="form-group">
            <label for="inputEmail3" class="col-sm-5 control-label">
                Fecha de Nacimiento</label>
            <div class="col-sm-7">
                <asp:TextBox CssClass="form-control" ID="TextBox5" runat="server"></asp:TextBox>
                <asp:CustomValidator CssClass="error" ControlToValidate="TextBox5" ClientValidationFunction="validateDate" Display="Dynamic" ValidationGroup="AllValidators" ID="validarFecha" runat="server" ErrorMessage="La fecha debe tener el siguiente formato dd-mm-aaaa">
                </asp:CustomValidator>
                <asp:RequiredFieldValidator CssClass="error" ControlToValidate="TextBox5" ID="RequiredFieldValidator5" runat="server" ErrorMessage="Este campo es obligatorio"></asp:RequiredFieldValidator>
            </div>
        </div>
        <div class="form-group">
            <label for="inputEmail3" class="col-sm-5 control-label">
                Lugar de Residencia</label>
            <div class="col-sm-7">
                <asp:TextBox CssClass="form-control" ID="TextBox6" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator CssClass="error" ID="RequiredFieldValidator6" ControlToValidate="TextBox6"
                    runat="server" Display="Dynamic" ErrorMessage="Este campo es obligatorio"></asp:RequiredFieldValidator>
            </div>
        </div>
        <div class="form-group">
            <div class="col-sm-offset-5 col-sm-12">
                <asp:Button CssClass="btn btn-default" ID="Button1" runat="server" Text="Crear Nuevo Usuario"
                    OnClick="new_user" />
                <a class="btn btn-default" href="index.aspx">Cancelar</a>
            </div>
        </div>
    </div></asp:Content>



