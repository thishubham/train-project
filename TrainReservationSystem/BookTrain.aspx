<%@ Page Title="" Language="C#" MasterPageFile="~/User.master" AutoEventWireup="true" CodeFile="BookTrain.aspx.cs" Inherits="BookTrain" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<center>
<h1><u>Book Train</u></h1>
<table>
<tr>
<td align="right">
    <asp:Label ID="Label1" runat="server" Text="Source :"></asp:Label></td>

    <td>
        <asp:TextBox ID="txtSource" runat="server"></asp:TextBox></td>
</tr>
<tr>
<td align="right">
    <asp:Label ID="Label2" runat="server" Text="Destination :"></asp:Label></td>

    <td>
        <asp:TextBox ID="txtDestination" runat="server"></asp:TextBox></td>
</tr>
<tr>
<td colspan="2" align="center">
    <asp:Button ID="Button1" runat="server" Text="View Train" 
        onclick="Button1_Click" />

</td>
</tr>


</table>
<table>
<tr>
<td>
     <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
        CellPadding="4" GridLines="None" DataKeyNames="trainid" 
             ForeColor="#333333">
        <AlternatingRowStyle BackColor="White" />
        <Columns>
            <asp:TemplateField HeaderText="Train No">
                <ItemTemplate>
                    <asp:Label ID="Label1" runat="server" Text='<%# Eval("trainid") %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
           
            <asp:TemplateField HeaderText="Train Name">
                <ItemTemplate>
                    <asp:Label ID="Label3" runat="server" Text='<%# Eval("tname") %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="Train Source">
                <ItemTemplate>
                    <asp:Label ID="Label4" runat="server" Text='<%# Eval("tsource") %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="Train Destination">
                <ItemTemplate>
                    <asp:Label ID="Label51" runat="server"  Text='<%# Eval("tdestination") %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="Fare">
                <ItemTemplate>
                    <asp:Label ID="Label5" runat="server" Text='<%# Eval("tfare") %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
            
            <asp:TemplateField HeaderText="Available Seats">
                <ItemTemplate>
                    <asp:Label ID="Label15" runat="server" Text='<%# Eval("tavail") %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
             
            <asp:HyperLinkField HeaderText="Book Train" DataNavigateUrlFields="trainid" DataNavigateUrlFormatString="~/Bookorder.aspx?Id={0}"
                Text="Book Train" />
           
        </Columns>
        <EditRowStyle BackColor="#7C6F57" />
        <FooterStyle BackColor="#1C5E55" ForeColor="White" Font-Bold="True" />
        <HeaderStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
        <PagerStyle BackColor="#666666" ForeColor="White" HorizontalAlign="Center" />
        <RowStyle BackColor="#E3EAEB" />
        <SelectedRowStyle BackColor="#C5BBAF" Font-Bold="True" ForeColor="#333333" />
        <SortedAscendingCellStyle BackColor="#F8FAFA" />
        <SortedAscendingHeaderStyle BackColor="#246B61" />
        <SortedDescendingCellStyle BackColor="#D4DFE1" />
        <SortedDescendingHeaderStyle BackColor="#15524A" />
    </asp:GridView>


</td>


</tr>


</table>


</center>



</asp:Content>

