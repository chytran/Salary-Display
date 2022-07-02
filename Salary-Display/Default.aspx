<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="Salary_Display._Default" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">

    

    <asp:Label ID="Label1" runat="server" Text="Overall Amount"></asp:Label>
    <!--<asp:Button ID="Button1" runat="server" Text="Button" onClick="onView"/>-->
    <asp:GridView ID="GridView1" runat="server">

    </asp:GridView>

</asp:Content>
