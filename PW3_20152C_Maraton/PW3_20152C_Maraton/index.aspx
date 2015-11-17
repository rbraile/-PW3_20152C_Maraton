<%@ Page Title="" Language="C#" MasterPageFile="~/index.Master" AutoEventWireup="true" CodeBehind="index.aspx.cs" Inherits="PW3_20152C_Maraton.home1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <nav>
        <ul class="nav nav-pills">
            <li role="presentation"><a href="/user_login.aspx">Ingresar como Usuario</a></li>
            <li role="presentation"><a href="/newUser_registration.aspx">Registrarse</a></li>
            <li role="presentation"><a href="/admin_login.aspx">Ingresar como Administrador</a></li>
        </ul>
    </nav>
    <div class="panel panel-default">
        <form runat="server">
            <div class="panel-heading">
                Resultado ultima maraton <strong><asp:Label runat="server" ID="nombre"></asp:Label></strong>
            </div>
             <asp:GridView CssClass="table" runat="server" ID="Resultados">
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
            </asp:GridView>
           
        </form>
    </div>
</asp:Content>
