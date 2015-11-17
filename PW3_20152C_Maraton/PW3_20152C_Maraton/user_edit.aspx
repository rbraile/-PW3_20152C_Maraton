<%@ Page Title="" Language="C#" MasterPageFile="~/user_index.Master" AutoEventWireup="true" CodeBehind="user_edit.aspx.cs" Inherits="PW3_20152C_Maraton.user_edit" %>
<asp:Content ID="Content1" ContentPlaceHolderID="userIndex_head" runat="server">
    <script src="scripts/funciones.js"></script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <form id="editUser" runat="server">
          <div class="form-horizontal login-form">
              <div class="form-group">
                <label for="inputEmail3" class="col-sm-5 control-label">
                    Nombre</label>
                <div class="col-sm-7">
                    <asp:TextBox CssClass="form-control" ID="nombre" runat="server"></asp:TextBox>
                    <asp:RequiredFieldValidator CssClass="error" ID="RequiredFieldValidator3" ControlToValidate="nombre"
                        runat="server" Display="Dynamic" ErrorMessage="Este campo es obligatorio"></asp:RequiredFieldValidator>
                </div>
            </div>
            <div class="form-group">
                <label for="inputEmail3" class="col-sm-5 control-label">
                    Apellido</label>
                <div class="col-sm-7">
                    <asp:TextBox CssClass="form-control" ID="apellido" runat="server"></asp:TextBox>
                    <asp:RequiredFieldValidator CssClass="error" ID="RequiredFieldValidator4" ControlToValidate="apellido"
                        runat="server" Display="Dynamic" ErrorMessage="Este campo es obligatorio"></asp:RequiredFieldValidator>
                </div>
            </div>
            <div class="form-group">
                <label for="inputEmail3" class="col-sm-5 control-label">
                    Fecha de Nacimiento</label>
                <div class="col-sm-7">
                    <asp:TextBox CssClass="form-control" ID="fecha" runat="server"></asp:TextBox>
                    <asp:CustomValidator CssClass="error" ControlToValidate="fecha" 
                        ClientValidationFunction="validateDate" Display="Dynamic" 
                        ValidationGroup="AllValidators" ID="validarFecha" runat="server" ErrorMessage="La fecha debe tener el siguiente formato dd-mm-aaaa">

                    </asp:CustomValidator>
                </div>
            </div>
            <div class="form-group">
                <label for="inputEmail3" class="col-sm-5 control-label">
                    Lugar de Residencia</label>
                <div class="col-sm-7">
                    <asp:TextBox CssClass="form-control" ID="lugar" runat="server"></asp:TextBox>
                    <asp:RequiredFieldValidator CssClass="error" ID="RequiredFieldValidator6" ControlToValidate="lugar"
                        runat="server" Display="Dynamic" ErrorMessage="Este campo es obligatorio"></asp:RequiredFieldValidator>
                </div>
            </div>
        </div>
        <div class="form-group">
            <div class="col-sm-offset-5 col-sm-12">
                <asp:Button CssClass="btn btn-default" ID="edituserButton" runat="server" Text="Editar" OnClick="edituserButton_Click" />
                <a class="btn btn-default" href="user_index.aspx">Cancelar</a>
            </div>
        </div>
        <label id="cosa" runat="server"></label>
    </form>
</asp:Content>
 