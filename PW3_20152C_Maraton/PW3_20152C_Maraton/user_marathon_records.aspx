<%@ Page Title="" Language="C#" MasterPageFile="~/user_index.Master" AutoEventWireup="true" CodeBehind="user_marathon_records.aspx.cs" Inherits="PW3_20152C_Maraton.user_marathon_records" %>
<asp:Content ID="Content1" ContentPlaceHolderID="userIndex_head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
       <nav>
        <ul class="nav nav-pills">
            <li role="presentation"><a href="/user_register_marathon.aspx">Inscribirse a una Maraton</a></li>
            <li role="presentation"><a href="/user_edit.aspx">Administrar datos de Usuario</a></li>
            <li role="presentation"><a href="/user_index.aspx">Volver al Inicio de Usuario</a></li>
        </ul>
    </nav>
     <div class="panel panel-default">
      <div class="panel-heading">Historial de maratones</div>
      <table class="table">
        <thead>
            <tr>
                <th>Nombre de la maraton</th>
                <th>Posición</th>
                <th>Tiempo</th>
                <th>Finalizo</th>
                <th>Premio</th>
            </tr>
        </thead>
        <tbody>
            <tr>
                <td>Maraton 1</td>
                <td>10</td>
                <td>1:10:30</td>
                <td>Si</td>
                <td>$500</td>
            </tr>
            <tr>
                <td>Maraton 1</td>
                <td>10</td>
                <td>1:10:30</td>
                <td>Si</td>
                <td>$500</td>
            </tr>
            <tr>
                <td>Maraton 1</td>
                <td>10</td>
                <td>1:10:30</td>
                <td>Si</td>
                <td>$500</td>
            </tr>
            <tr>
                <td>Maraton 1</td>
                <td>10</td>
                <td>1:10:30</td>
                <td>Si</td>
                <td>$500</td>
            </tr>
        </tbody>
      </table>

      </div>
    
</asp:Content>
