<%@ Page Title="" Language="C#" MasterPageFile="~/user_index.Master" AutoEventWireup="true" CodeBehind="user_register_marathon.aspx.cs" Inherits="PW3_20152C_Maraton.user_register_marathon" EnableEventValidation="false" %>
<asp:Content ID="Content1" ContentPlaceHolderID="userIndex_head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">           
    
      <form id="registerMaraton" runat="server">

          <div id="confirm2" runat="server" class="alert alert-success confirm-content" role="alert">
          <span class="glyphicon glyphicon-ok" aria-hidden="true"></span>
          <span class="sr-only">Success:</span>
            Se ha registrado exitosamente a la maraton <a href="user_index.aspx">Volver</a>
      </div>


          <div class="panel panel-default">
              <div class="panel-heading">Maratones disponibles</div>
              <asp:GridView AutoGenerateEditButton="false" CssClass="table"
                  AutoGenerateSelectButton="false" 
                  AutoGenerateColumns="False"
                  OnRowCommand="seleccion_maraton_command"
                  ID="maratones" runat="server" CellPadding="4" ForeColor="#333333" GridLines="None" 
                  OnSelectedIndexChanged="maratones_SelectedIndexChanged">
                  <AlternatingRowStyle BackColor="White" />
                  <EditRowStyle BackColor="#2461BF" />
                  <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                  <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                  <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
                  <RowStyle BackColor="#EFF3FB" />
                  <SelectedRowStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
                  <SortedAscendingCellStyle BackColor="#F5F7FB" />
                  <SortedAscendingHeaderStyle BackColor="#6D95E1" />
                  <SortedDescendingCellStyle BackColor="#E9EBEF" />
                  <SortedDescendingHeaderStyle BackColor="#4870BE" />
                  
                  <Columns>
                    <asp:BoundField DataField="Nombre" 
                        HeaderText="Nombre" SortExpression="Nombre" />
                    <asp:BoundField DataField="LugarSalida" 
                        HeaderText="Lugar de Salida" SortExpression="Lugar Salida" />
                    <asp:BoundField DataField="FechaHorarioComienzo" 
                        HeaderText="Fecha de comienzo" SortExpression="Comienzo" />
                    <asp:TemplateField>
                         <ItemTemplate>
                             <asp:LinkButton CssClass="btn btn-default" runat="server" 
                                 ID="SuscribirMe" CommandArgument='<%#Eval("IdMaraton") %>'
                                 CommandName="suscribir">Suscribir me</asp:LinkButton>
                         </ItemTemplate>
                    </asp:TemplateField>
                  </Columns>          
            </asp:GridView>
            </div>

     </form>
    <div id="message_ok" runat="server" class="alert alert-success" role="alert">
        <span class="glyphicon glyphicon-ok" aria-hidden="true"></span>
        <span class="sr-only">Success:</span>Se ha registrado exitosamente a la maraton
        <label id="datos_maraton" runat="server"></label>
        <a href="user_index.aspx">Volver</a>
    </div>
    <div id="message_error" runat="server" class="alert alert-error confirm-content" role="alert">
        <span class="glyphicon glyphicon-remove" aria-hidden="true"></span>
        <span class="sr-only">Success:</span>
        <label id="txtMessage" runat="server"></label>
    </div>
    <div id="message_warning" runat="server" class="alert alert-warning" role="alert">
        <span class="glyphicon glyphicon-warning" aria-hidden="true"></span>
        <span class="sr-only">Warning:</span>
        Se ha registrado pero esta en lista de espera de la maraton <a href="user_index.aspx">Volver</a>
        
    </div>
</asp:Content>
