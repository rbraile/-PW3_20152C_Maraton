<%@ Page Title="" Language="C#" MasterPageFile="~/admin_index.Master" AutoEventWireup="true" CodeBehind="admin_edit_resultado.aspx.cs" Inherits="PW3_20152C_Maraton.admin_edit_resultado" %>
<asp:Content ID="Content1" ContentPlaceHolderID="adminIndex_head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="adminIndex_ContentPlaceHolder" runat="server">

        <div class="form-horizontal login-form">
            <div id="message_ok" runat="server" class="alert alert-error" role="alert">
                <span class="glyphicon glyphicon-error" aria-hidden="true"></span>
                <span class="sr-only">Success:</span> Esta posicion ya esta cargada
            </div>
            <div class="form-group">
                <label class="col-sm-5 control-label">Finalizo</label>
                <div class="col-sm-7">
                    <asp:DropDownList CssClass="form-control" ID="checkFinalizo" runat="server">
                        <asp:ListItem Value="true" Selected="True">Finaliza</asp:ListItem>
                        <asp:ListItem Value="false">No finalizo</asp:ListItem>
                    </asp:DropDownList>
                </div>
            </div>
            <div class="form-group">
                <label class="col-sm-5 control-label">
                   Tiempo de llegada</label>
                <div class="col-sm-7">
                    <asp:TextBox CssClass="form-control" ID="Llegada" runat="server"></asp:TextBox>
                    <asp:RequiredFieldValidator CssClass="error" ID="RequiredFieldValidator2" ControlToValidate="Llegada"
                        runat="server" Display="Dynamic" ErrorMessage="Este campo es obligatorio"></asp:RequiredFieldValidator>
                </div>
            </div>
            <div class="form-group">
                <label class="col-sm-5 control-label">
                   Posicion Final</label>
                <div class="col-sm-7">
                    <asp:TextBox CssClass="form-control" ID="PosFinal" runat="server"></asp:TextBox>
                    <asp:RequiredFieldValidator CssClass="error" ID="RequiredFieldValidator3" ControlToValidate="PosFinal"
                        runat="server" Display="Dynamic" ErrorMessage="Este campo es obligatorio"></asp:RequiredFieldValidator>
                </div>
            </div>
            <div class="form-group">
                <div class="col-sm-offset-5 col-sm-12">
                    <asp:Button CssClass="btn btn-default" ID="guadar" runat="server" Text="Guadar" OnClick="GuadarDatos" />
                    <a class="btn btn-default" href="/admin_marathonResultUpload.aspx">Cancelar</a>
                </div>
            </div>
            <asp:hiddenfield id="IdMaraton" 
              value="" 
              runat="server"/>
            <asp:hiddenfield id="IdUsuario"
              value="" 
              runat="server"/>
        </div>

</asp:Content>
