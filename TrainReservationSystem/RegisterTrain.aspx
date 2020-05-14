<%@ Page Title="" Language="C#" MasterPageFile="~/admin.master" AutoEventWireup="true" CodeFile="RegisterTrain.aspx.cs" Inherits="RegisterTrain" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <center>
<h1><u>Register Train Details</u></h1>
<table>
<tr>
<td align="right">
    <asp:Label ID="Label1" runat="server" Text="Train No:"></asp:Label></td>

    <td>
        <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox></td>
</tr>

<tr>
<td align="right">
    <asp:Label ID="Label2" runat="server" Text="Train Name:"></asp:Label></td>

    <td>
        <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox></td>
</tr>
<tr>
<td align="right">
    <asp:Label ID="Label3" runat="server" Text="Train Source:"></asp:Label></td>

    <td>
        <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox></td>
</tr>
<tr>
<td align="right">
    <asp:Label ID="Label4" runat="server" Text="Train Destination:"></asp:Label></td>

    <td>
        <asp:TextBox ID="TextBox4" runat="server"></asp:TextBox></td>
</tr>
<tr>
<td align="right">
    <asp:Label ID="Label5" runat="server" Text="Train Fare:"></asp:Label></td>

    <td>
        <asp:TextBox ID="TextBox5" runat="server"></asp:TextBox></td>
</tr>
<tr>
<td align="right">
    <asp:Label ID="Label6" runat="server" Text="Available Seats:"></asp:Label></td>

    <td>
        <asp:TextBox ID="TextBox6" runat="server"></asp:TextBox></td>
</tr>
<tr>
<td colspan="2" align="center">
    <asp:Button ID="Button1" runat="server" Text="Register Train" 
        onclick="Button1_Click" />

</td>

</tr>
</table>



</center>



</asp:Content>

