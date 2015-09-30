<%@ Page Title="" Language="C#" MasterPageFile="~/user_index.Master" AutoEventWireup="true" CodeBehind="user_register_marathon.aspx.cs" Inherits="PW3_20152C_Maraton.user_register_marathon" %>
<asp:Content ID="Content1" ContentPlaceHolderID="userIndex_head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">        
      <div id="confirm2" runat="server" class="alert alert-success confirm-content" role="alert">
          <span class="glyphicon glyphicon-ok" aria-hidden="true"></span>
          <span class="sr-only">Success:</span>
            Se ha registrado exitosamente a la maraton <a href="user_index.aspx">Volver</a>
      </div>
      <form id="registerMaraton" runat="server">
          <div class="panel panel-default">
              <div class="panel-heading">Maratones disponibles</div>  
              <table id="marathones" class="table" runat="server">
                <thead>
                    <tr>
                        <th>Lugar</th>
                        <th>Distancia</th>
                        <th>Fecha</th>
                        <th></th>
                    </tr>
                </thead>
                <tbody>
                    <tr>
                        <td>La Matanza</td>
                        <td>10k</td>
                        <td>11-10-2015</td>
                        <td><asp:LinkButton Text="Inscribirse" runat="server" OnClick="registerMarathon" /></td>
                    </tr>
                    <tr>
                        <td>La Matanza</td>
                        <td>10k</td>
                        <td>11-10-2015</td>
                        <td><asp:LinkButton ID="LinkButton1" Text="Inscribirse" runat="server" OnClick="registerMarathon" /></td>
                    </tr>
                    <tr>
                        <td>La Matanza</td>
                        <td>10k</td>
                        <td>11-10-2015</td>
                        <td><asp:LinkButton ID="LinkButton2" Text="Inscribirse" runat="server" OnClick="registerMarathon" /></td>
                    </tr>
                    <tr>
                        <td>La Matanza</td>
                        <td>10k</td>
                        <td>11-10-2015</td>
                        <td><asp:LinkButton ID="LinkButton3" Text="Inscribirse" runat="server" OnClick="registerMarathon" /></td>
                    </tr>          
                </tbody>
              </table>
            </div>
     </form>
        
</asp:Content>
