<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="AddingSalary.aspx.cs" Inherits="Salary_Display.AddingSalary" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">

    <style>
               /*=============== VARIABLES CSS ===============*/
:root {
   

--header-height: 3rem;
    /*========== Colors ==========*/
    /* Change favorite color to match images */
    /*Green dark 190 - Green 171 - Grren Blue 200*/
    --hue-color: 190;
    /* HSL color mode */
    --first-color: hsl(var(--hue-color), 64%, 22%);
    --first-color-second: hsl(var(--hue-color), 64%, 22%);
    --first-color-alt: hsl(var(--hue-color), 64%, 15%);
    --title-color: hsl(var(--hue-color), 64%, 18%);
    --text-color: hsl(var(--hue-color), 24%, 35%);
    --text-color-light: hsl(var(--hue-color), 8%, 60%);
    --input-color: hsl(var(--hue-color), 24%, 97%);
    --body-color: hsl(var(--hue-color), 100%, 99%);
    --white-color: #FFF;
    --scroll-bar-color: hsl(var(--hue-color), 12%, 90%);
    --scroll-thumb-color: hsl(var(--hue-color), 12%, 75%);
    /*========== Font and typography ==========*/
    --body-font: 'Open Sans', sans-serif;
    --title-font: 'Raleway', sans-serif;
    --biggest-font-size: 2.5rem;
    --h1-font-size: 1.5rem;
    --h2-font-size: 1.25rem;
    --h3-font-size: 1rem;
    --normal-font-size: .938rem;
    --small-font-size: .813rem;
    --smaller-font-size: .75rem;
    /*========== Font weight ==========*/
    --font-medium: 500;
    --font-semi-bold: 600;
    /*========== Margin Bottom ==========*/
    --mb-0-25: .25rem;
    --mb-0-5: .5rem;
    --mb-0-75: .75rem;
    --mb-1: 1rem;
    --mb-1-25: 1.25rem;
    --mb-1-5: 1.5rem;
    --mb-2: 2rem;
    --mb-2-5: 2.5rem;
    /*========== z index ==========*/
    --z-tooltip: 10;
    --z-fixed: 100;
    /*========== Hover overlay ==========*/
    --img-transition: .3s;
    --img-hidden: hidden;
    --img-scale: scale(1.1);
}

@media screen and (min-width: 968px) {
    :root {
        --biggest-font-size: 4rem;
        --h1-font-size: 2.25rem;
        --h2-font-size: 1.75rem;
        --h3-font-size: 1.25rem;
        --normal-font-size: 1rem;
        --small-font-size: .875rem;
        --smaller-font-size: .813rem;
    }
}

/*======================== Base ========================*/
* {
    -webkit-box-sizing: border-box;
    box-sizing: border-box;
    margin: 0;
    padding: 0;
}

html {
    scroll-behavior: smooth;
}

body {
    font-family: var(--body-font);
    font-size: var(--h1-font-size);
    margin: var(--header-height) 0 0 0;
    background-color: var(--body-color);
    color: var(--text-color);
}

h1, h2, h3 {
    color: var(--title-color);
    font-weight: var(--font-semi-bold);
    font-family: var(--title-font);
}

ul {
    list-style: none;
}

a {
    text-decoration: none;
}

img, video {
    max-width: 100%;
    height: auto;
}

button, input {
    border: none;
    font-family: var(--body-font);
    font-size: var(--normal-font-size);
}

button {
    cursor: pointer;
}

input {
    outline: none;
}

.overall {
    margin-top: 3rem;
}

.hours {
    border: 1px solid black;
}

.salary {
    border: 1px solid black;
}
    </style>


    <asp:Label class="overall" ID="Label1" runat="server" Text="Overall Amount"></asp:Label>
    <div>
        <h2>Hours: </h2>
        <asp:TextBox class="hours" ID="hours" runat="server"></asp:TextBox>
    </div>
    
    <div>
        <h2>Salary: </h2>
        <asp:TextBox class="salary" ID="salaryHourly" runat="server"></asp:TextBox>
    </div>
    
    

    <asp:Button ID="Button1" runat="server" Text="Button" onClick="loadData"/>

    <asp:Label ID="display" runat="server" Text="$0.00"></asp:Label>
</asp:Content>
