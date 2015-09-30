<%@ Page Title="" Language="C#" MasterPageFile="~/user_index.Master" AutoEventWireup="true" CodeBehind="user_edit_confirm.aspx.cs" Inherits="PW3_20152C_Maraton.user_edit_confirm" %>
<asp:Content ID="Content1" ContentPlaceHolderID="userIndex_head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div id="userEditConfirmContent" class="alert alert-warning confirm-content" role="alert" runat="server">
          <span class="glyphicon glyphicon-exclamation-sign" aria-hidden="true"></span>
          <span class="sr-only">warning</span>
            Estas seguo que deseas modificar estos datos.
            <form runat="server" id="userEditConfirm" class="buttons-confirm">
                <asp:Button ID="confirm" runat="server" Text="Confirm" OnClick="confirm_Click" />
                <asp:Button ID="cancel" runat="server" Text="Cancel" OnClick="cancel_Click" />
            </form>
        </div>
        <div runat="server" id="editUserConfirmMessage" class="alert alert-success confirm-content" role="alert">
          <span class="glyphicon glyphicon-ok" aria-hidden="true"></span>
          <span class="sr-only">Success:</span>
            Se ha modificado exitosamente los datos del usuario 
            <a href="user_index.aspx">Volver</a>
        </div>
</asp:Content>
