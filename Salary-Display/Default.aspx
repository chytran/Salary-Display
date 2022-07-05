<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="Salary_Display._Default" %>



<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">

    <link href="CSS/main.css" rel="stylesheet" type="text/css" />
    
    <section class="section">
        <div runat="server" class="container">
            <asp:Label ID="Label2" runat="server" Text="Overall Amount"></asp:Label>
            <asp:GridView ID="GridView1" runat="server">

            </asp:GridView>
        </div>
    </section>



</asp:Content>
