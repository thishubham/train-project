<%@ Page Title="" Language="C#" MasterPageFile="~/ContentHome.master" AutoEventWireup="true" CodeFile="Login.aspx.cs" Inherits="Login" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
 <center>
<h1><u>Login Here</u></h1>
<table>
<tr>
<td align="right">
    <asp:Label ID="Label1" runat="server" Text="User ID :"></asp:Label></td>
    <td>
        <asp:TextBox ID="txtUser" runat="server"></asp:TextBox></td>
</tr>
<tr>
<td  align="right">
    <asp:Label ID="Label2" runat="server" Text="Password :"></asp:Label></td>
    <td>
        <asp:TextBox ID="txtPass" runat="server" TextMode="Password"></asp:TextBox></td>
</tr>
<tr>
<td colspan="2">
    <center><asp:Button ID="Button1" runat="server" Text="Login Here" Height="30px" 
            Width="120px" onclick="Button1_Click" /></center>
    <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/register.aspx">Register User</asp:HyperLink>

</td>

</tr>


</table>


</center>

</asp:Content>

