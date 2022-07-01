<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="AddingSalary.aspx.cs" Inherits="Salary_Display.AddingSalary" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">

    <div class="jumbotron">
        <h1>ASP.NET</h1>
        <p class="lead">ASP.NET is a free web framework for building great Web sites and Web applications using HTML, CSS, and JavaScript.</p>
        <p><a href="http://www.asp.net" class="btn btn-primary btn-lg">Learn more &raquo;</a></p>
    </div>

    <asp:Label ID="Label1" runat="server" Text="Overall Amount"></asp:Label>
    <asp:TextBox ID="hours" runat="server"></asp:TextBox>
    <asp:TextBox ID="salaryHourly" runat="server"></asp:TextBox>

    <asp:Button ID="addSalary" runat="server" Text="Button" onClick="loadData"/>

    <asp:Label ID="display" runat="server" Text="$0.00"></asp:Label>
</asp:Content>
