<%@ Page Title="" Language="C#" MasterPageFile="~/admin_index.Master" AutoEventWireup="true" CodeBehind="admin_agregar_resultados.aspx.cs" Inherits="PW3_20152C_Maraton.admin_agregar_resultados" %>
<asp:Content ID="Content1" ContentPlaceHolderID="adminIndex_head" runat="server">
    <link rel="stylesheet" href="css/login.css" />
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="adminIndex_ContentPlaceHolder" runat="server">
     <asp:GridView AutoGenerateEditButton="false" CssClass="table"
                  AutoGenerateSelectButton="false" 
                  AutoGenerateColumns="False"
                  ID="participantes" runat="server" CellPadding="4" ForeColor="#333333" GridLines="None">
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

                    <asp:BoundField DataField="NroInscripcion" 
                        HeaderText="N° de inscripcion" />

                      <asp:TemplateField HeaderText="Finalizo" SortExpression="Finalizo">
                        <ItemTemplate><%# ( Eval("Finalizo").ToString() == Convert.ToString('1')) ? "Si" : "No" %></ItemTemplate>
                    </asp:TemplateField>

                    <asp:BoundField DataField="Finalizo" 
                        HeaderText="Finalizo" />

                    <asp:BoundField DataField="tiempoLlegada" 
                        HeaderText="Tiempo Llegada" />

                      <asp:BoundField DataField="PosicionFinal" 
                        HeaderText="Posicion Final" />

                        <asp:TemplateField HeaderText="Edicion">
                            <ItemTemplate>
                                <asp:HyperLink Text="editar" runat="server" NavigateUrl='<%# "/admin_edit_resultado.aspx?idUsuario=" + Eval("IdUsuario") + "&idMaraton=" + Eval("IdMaraton") %>' />
                            </ItemTemplate>
                        </asp:TemplateField>
                   
                  </Columns>          
            </asp:GridView>

    <asp:Label ID="label1" runat="server"></asp:Label>

</asp:Content>
