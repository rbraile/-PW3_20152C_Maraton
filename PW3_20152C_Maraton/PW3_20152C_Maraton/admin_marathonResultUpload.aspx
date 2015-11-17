<%@ Page Title="" Language="C#" MasterPageFile="~/admin_index.Master" AutoEventWireup="true" CodeBehind="admin_marathonResultUpload.aspx.cs" Inherits="PW3_20152C_Maraton.admin_marathonResultUpload1" %>

<asp:Content ID="Content1" ContentPlaceHolderID="adminIndex_head" runat="server">
    <link rel="stylesheet" href="css/login.css" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="adminIndex_ContentPlaceHolder" runat="server">
    <div class="panel panel-default">
        <div class="panel-heading">Maratones disponibles</div>
        <asp:GridView AutoGenerateEditButton="false" CssClass="table"
            AutoGenerateSelectButton="false" 
            AutoGenerateColumns="False"
            ID="maratones" runat="server" CellPadding="4" ForeColor="#333333" GridLines="None" 
            >
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
                 <asp:BoundField DataField="IdMaraton" 
                    HeaderText="id maraton" SortExpression="IdMaraton" />
                    <asp:TemplateField>
                            <ItemTemplate>
                                 <asp:HyperLink runat="server" Text="Agregar resultados" 
                                     NavigateUrl='<%# "admin_agregar_resultados.aspx?maratonId=" + Eval("IdMaraton") %>'>
                                 </asp:HyperLink>
                            </ItemTemplate>
                    </asp:TemplateField>
            </Columns>          
        </asp:GridView>
    </div>
</asp:Content>
