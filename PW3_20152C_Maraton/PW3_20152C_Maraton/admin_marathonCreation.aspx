<%@ Page Language="C#" AutoEventWireup="true" MasterPageFile="~/admin_index.Master"
    CodeBehind="admin_marathonCreation.aspx.cs" Inherits="PW3_20152C_Maraton.admin_marathonCreation" %>

<asp:Content ID="Content1" ContentPlaceHolderID="adminIndex_head" runat="server">
    <link rel="stylesheet" href="css/login.css" />
    <script type="text/javascript" src="scripts/funciones.js"></script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="adminIndex_ContentPlaceHolder" runat="server">
    <div class="form-horizontal login-form">
        <div class="form-group">
            <label class="col-sm-5 control-label">
                Nombre de la Maraton</label>
            <div class="col-sm-7">
                <asp:TextBox CssClass="form-control" ID="marathon_name" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator CssClass="error" ID="RequiredFieldValidator7" ControlToValidate="marathon_name"
                    runat="server" Display="Dynamic" ErrorMessage="Este campo es obligatorio"></asp:RequiredFieldValidator>
            </div>
        </div>
        <div class="form-group">
            <label class="col-sm-5 control-label">
               Cantidad Maxima de Participantes</label>
            <div class="col-sm-7">
                <asp:TextBox CssClass="form-control" ID="max_participantes" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator CssClass="error" ID="RequiredFieldValidator1" ControlToValidate="max_participantes"
                    runat="server" Display="Dynamic" ErrorMessage="Este campo es obligatorio"></asp:RequiredFieldValidator>
                <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" CssClass="error"
                            ControlToValidate="max_participantes" ErrorMessage="Ingrese Valores Numericos"
                            ValidationExpression="^[0-9]*">
                </asp:RegularExpressionValidator>
            </div>
        </div>
        <div class="form-group">
            <label class="col-sm-5 control-label">Fecha de inicio de la maraton</label>
            <div class="col-sm-7">
                <asp:TextBox CssClass="form-control" ID="fecha" runat="server"></asp:TextBox>
                <asp:CustomValidator ID="CustomValidator1" ControlToValidate="fecha" 
                    EnableClientScript="true" CssClass="error" ClientValidationFunction="validateDate" runat="server" 
                    ErrorMessage="Formato de fecha dd-mm-aaaa"></asp:CustomValidator>
            </div>
        </div>
        <div class="form-group">
            <label class="col-sm-5 control-label">
               Lugar de Salida</label>
            <div class="col-sm-7">
                <asp:TextBox CssClass="form-control" ID="start_point" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator CssClass="error" ID="RequiredFieldValidator2" ControlToValidate="start_point"
                    runat="server" Display="Dynamic" ErrorMessage="Este campo es obligatorio"></asp:RequiredFieldValidator>
            </div>
        </div>
        <div class="form-group">
            <label class="col-sm-5 control-label">
               Cantidad máxima de Participantes en Lista de Espera</label>
            <div class="col-sm-7">
                <asp:TextBox CssClass="form-control" ID="max_participants_waitingList" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator CssClass="error" ID="RequiredFieldValidator3" ControlToValidate="max_participants_waitingList"
                    runat="server" Display="Dynamic" ErrorMessage="Este campo es obligatorio"></asp:RequiredFieldValidator>
                <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" CssClass="error"
                            ControlToValidate="max_participants_waitingList" ErrorMessage="Ingrese Valores Numericos"
                            ValidationExpression="^[0-9]*">
                </asp:RegularExpressionValidator>
            </div>
        </div>
        <div class="form-group">
            <label class="col-sm-5 control-label">
               Primer Premio</label>
            <div class="col-sm-7">
                <asp:TextBox CssClass="form-control" ID="first_place_prize" runat="server"></asp:TextBox>
                <asp:RangeValidator ID="RangeValidator1" runat="server" CssClass="error" ErrorMessage="Introducir un valor entre 500 y 5000" ControlToValidate="first_place_prize" MaximumValue="5000" MinimumValue="500" Type="Double"></asp:RangeValidator>
            </div>
        </div>
        <div class="form-group">
            <label class="col-sm-5 control-label">
               Segundo Premio</label>
            <div class="col-sm-7">
                <asp:TextBox CssClass="form-control" ID="second_place_prize" runat="server"></asp:TextBox>
                <asp:RangeValidator ID="RangeValidator2" runat="server" CssClass="error" ErrorMessage="Introducir un valor entre 500 y 5000" ControlToValidate="second_place_prize" MaximumValue="5000" MinimumValue="500" Type="Double"></asp:RangeValidator>
            </div>
        </div>
        <div class="form-group">
            <label class="col-sm-5 control-label">
               Tercer Premio</label>
            <div class="col-sm-7">
                <asp:TextBox CssClass="form-control" ID="third_place_prize" runat="server"></asp:TextBox>
                <asp:RangeValidator ID="RangeValidator3" runat="server" CssClass="error" ErrorMessage="Introducir un valor entre 500 y 5000" ControlToValidate="third_place_prize" MaximumValue="5000" MinimumValue="500" Visible="False" Type="Double"></asp:RangeValidator>
            </div>
        </div>
        <div class="form-group">
            <div class="col-sm-offset-5 col-sm-12">
                <asp:Button CssClass="btn btn-default" ID="Button1" runat="server" Text="Crear Nueva Maraton" OnClick="new_marathon" />
                <a class="btn btn-default" href="admin_index.aspx">Cancelar</a>
            </div>
        </div>
    </div>
</asp:Content>
