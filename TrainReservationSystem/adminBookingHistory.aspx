<%@ Page Title="" Language="C#" MasterPageFile="~/User.master" AutoEventWireup="true" CodeFile="adminBookingHistory.aspx.cs" Inherits="BookingHistory" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<center>
<h1><u>Booking History</u></h1>
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
        BackColor="White" BorderColor="#999999" BorderStyle="None" BorderWidth="1px" 
        CellPadding="3" DataSourceID="SqlDataSource1" GridLines="Vertical">
        <AlternatingRowStyle BackColor="#DCDCDC" />
        <Columns>
            <asp:BoundField DataField="trainid" HeaderText="Train ID" 
                SortExpression="trainid" />
            <asp:BoundField DataField="tname" HeaderText="Name" SortExpression="tname" />
            <asp:BoundField DataField="tsource" HeaderText="Source" 
                SortExpression="tsource" />
            <asp:BoundField DataField="tdestination" HeaderText="Destination" 
                SortExpression="tdestination" />
            <asp:BoundField DataField="totalprice" HeaderText="Price" 
                SortExpression="totalprice" />
            <asp:BoundField DataField="tq" HeaderText="Booking" SortExpression="tq" />
            <asp:BoundField DataField="username" HeaderText="username" 
                SortExpression="username" />
                 <asp:BoundField DataField="bookingSeat" HeaderText="Booked Seats" 
                SortExpression="bookingSeat" />
            <asp:BoundField DataField="jdate" HeaderText="Journey Date" SortExpression="jdate" />
            <asp:BoundField DataField="pnr" HeaderText="PNR" SortExpression="pnr" />
            <asp:BoundField DataField="bdate" HeaderText="Booking Date" SortExpression="bdate" />
        </Columns>
        <FooterStyle BackColor="#CCCCCC" ForeColor="Black" />
        <HeaderStyle BackColor="#000084" Font-Bold="True" ForeColor="White" />
        <PagerStyle BackColor="#999999" ForeColor="Black" HorizontalAlign="Center" />
        <RowStyle BackColor="#EEEEEE" ForeColor="Black" />
        <SelectedRowStyle BackColor="#008A8C" Font-Bold="True" ForeColor="White" />
        <SortedAscendingCellStyle BackColor="#F1F1F1" />
        <SortedAscendingHeaderStyle BackColor="#0000A9" />
        <SortedDescendingCellStyle BackColor="#CAC9C9" />
        <SortedDescendingHeaderStyle BackColor="#000065" />
    </asp:GridView>


    <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
        ConnectionString="<%$ ConnectionStrings:Feedback %>" 
        SelectCommand="SELECT * FROM [trainBooking]">
        
    </asp:SqlDataSource>


</center>



</asp:Content>

