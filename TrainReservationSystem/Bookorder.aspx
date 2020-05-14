<%@ Page Title="" Language="C#" MasterPageFile="~/User.master" AutoEventWireup="true" CodeFile="Bookorder.aspx.cs" Inherits="order" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<script type="text/javascript" src="js/scw.js">
</script>
<center>
<h1><u>Train Booking</u></h1>
    <table>
  
                   <tr>
                   <td align="right"><asp:Label ID="lblpid" runat="server" Text="Train ID :" /></td>
                   <td><asp:TextBox ID="txtpid" runat="server" ReadOnly="True" /></td>
                   </tr>
                   <tr>
                   <td align="right"><asp:Label ID="lblpname" runat="server" Text="Train Name: " /></td>
                   <td><asp:TextBox ID="txtName" runat="server" ReadOnly="True" /></td>
                   </tr>
                   <tr>
                   <td align="right"><asp:Label ID="lblcat" runat="server" Text="Train Source :" /></td>
                   <td>
                       <asp:TextBox ID="txtSource" runat="server"></asp:TextBox>
                   </td>
              
                   </tr>
                   <tr>
                   <td align="right"><asp:Label ID="Label1" runat="server" Text="Train Destination :" /></td>
                   <td>
                       <asp:TextBox ID="txtdest" runat="server"></asp:TextBox>
                   </td>
              
                   </tr>
                   <tr>
                   <td align="right"><asp:Label ID="lblprice" runat="server" Text="Fare :" /></td>
                   <td><asp:TextBox ID="txtfare" runat="server"/>
                       </td>
                   </tr>
                   <tr>
                   <td align="right"><asp:Label ID="lblquanty" runat="server" Text=" Available Seats :" /></td>
                   <td><asp:TextBox ID="txtquantity" runat="server"  />
                       </td>
                   </tr>
                   <tr>
                   
                   <td align="right" ><asp:Label ID="lblquan" runat="server" Text="Seat to Book:  " /></td>
                   <td><asp:TextBox ID="TextBox1" runat="server" AutoPostBack="True" 
                           ontextchanged="TextBox1_TextChanged"  />
                       <asp:Label ID="msg" runat="server" ForeColor="Red" Visible="False"></asp:Label>
                       </td>
                   </tr>
                  
                    <tr>
                   
                   <td  align="right"><asp:Label ID="lbltotal" runat="server" Text="Total Price :" /></td>
                   <td><asp:TextBox ID="txttotal" runat="server"  />
                       </td>
                   </tr>
                    
                   <tr>
                   
                   <td align="right" ><asp:Label ID="lblpay" runat="server" Text="Payment Mode :" /></td>
                   <td>
                       <asp:DropDownList ID="DropDownList2" runat="server">
                           <asp:ListItem>Debit Card</asp:ListItem>
                           <asp:ListItem>Credit Card</asp:ListItem>
                           <asp:ListItem>Online Banking</asp:ListItem>
                           <asp:ListItem>Cash Payment</asp:ListItem>
                       </asp:DropDownList> </td>
                      
                   </tr>


                   <tr>
                   <td align="right"><asp:Label ID="lbldate" runat="server" Text="Order Date :" /></td>
                   <td><asp:TextBox ID="txtdate" runat="server" ReadOnly="True"  />
                       </td>
                   </tr>
                   <tr>
                   <td align="right"><asp:Label ID="Label2" runat="server" Text="Journey Date :" /></td>
                   <td><asp:TextBox ID="txtjdate" runat="server" onclick="showCal(this, event)"  />
                       </td>
                   </tr>
                   <tr>
                   <td><asp:Button ID="btnupdate" Text="Confirm Order" runat="server" onclick="btnupdate_Click"  
                            /></td>
                   <td><asp:Button ID="btnCancel" Text="Cancel Order" runat="server"  /></td>
                            
                   </tr>
                   </table>
  
    </center>


</asp:Content>

