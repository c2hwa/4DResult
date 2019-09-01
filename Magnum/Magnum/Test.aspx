<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Test.aspx.cs" Inherits="Magnum.Test" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
    <asp:Button ID="btnAdd" runat="server" Text="Add" OnClick="btnAdd_Click" />
    <asp:Button ID="btnUpdate" runat="server" Text="Update" OnClick="btnUpdate_Click" />
    <asp:Button ID="btnGet" runat="server" Text="Get" OnClick="btnGet_Click" />
    <asp:Button ID="btnDelete" runat="server" Text="Delete" OnClick="btnDelete_Click" />

    <asp:GridView ID="GridView1" runat="server"></asp:GridView>
</asp:Content>
