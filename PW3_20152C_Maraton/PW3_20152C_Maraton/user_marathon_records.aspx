<%@ Page Title="" Language="C#" MasterPageFile="~/user_index.Master" AutoEventWireup="true" CodeBehind="user_marathon_records.aspx.cs" Inherits="PW3_20152C_Maraton.user_marathon_records" %>
<asp:Content ID="Content1" ContentPlaceHolderID="userIndex_head" runat="server">
    <script type="text/javascript" src="/scripts/jquery.js"></script>
    <script type="text/javascript" src="/scripts/ajax.js"></script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <form id="maratones_historial" runat="server">

    
    <div class="panel panel-default">
      <div class="panel-heading">Historial de maratones</div>
        <table class="table" id="resultado">
            <thead>
                <tr>
                    <th>Maraton</th>
                    <th>Posicion Final</th>
                    <th>Tiempo</th>
                    <th>Premio</th>
                </tr>
            </thead>
            <tbody>
                <tr></tr>
            </tbody>
        </table>

      </div>
    </form> 
</asp:Content>
