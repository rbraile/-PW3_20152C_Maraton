<%@ Page Title="" Language="C#" MasterPageFile="~/user_index.Master" AutoEventWireup="true" CodeBehind="user_maraton_historial.aspx.cs" Inherits="PW3_20152C_Maraton.user_maraton_historial" %>
<asp:Content ID="Content1" ContentPlaceHolderID="userIndex_head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <form runat="server">
        <asp:ScriptManager ID="ScriptManager1" runat="server"> 
    <Services> 
        <asp:ServiceReference Path="http://localhost:22639/maratones_realizadas.asmx" /> 
    </Services> 
</asp:ScriptManager>
    </form>
</asp:Content>
