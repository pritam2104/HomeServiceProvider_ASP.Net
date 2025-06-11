<%@ Page Title="" Language="C#" MasterPageFile="~/Customer/customer.master" AutoEventWireup="true" CodeFile="MyBooking.aspx.cs" Inherits="Customer_MyBooking" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
    .auto-style2 {
        width: 80%;
        border: 1px solid #000000;
    }
    .auto-style3 {
        font-size: x-large;
        text-align: center;
    }
        .auto-style4 {
            text-align: center;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table align="center" cellspacing="1" class="auto-style2">
    <tr>
        <td class="auto-style3"><strong>My Booking<br />
            <hr width="30%" size="2" /></strong></td>
    </tr>
    <tr>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td>
            <div class="auto-style4">
                <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" CellPadding="4" DataKeyNames="bookingid" DataSourceID="SqlDataSource1" ForeColor="#333333" GridLines="None">
                    <AlternatingRowStyle BackColor="White" />
                    <Columns>
                        <asp:BoundField DataField="bookingid" HeaderText="bookingid" SortExpression="bookingid" ReadOnly="True" />
                        <asp:BoundField DataField="serviceid" HeaderText="serviceid" SortExpression="serviceid" />
                        <asp:BoundField DataField="bookingdate" HeaderText="bookingdate" SortExpression="bookingdate" />
                        <asp:BoundField DataField="preferdate" HeaderText="preferdate" SortExpression="preferdate" />
                        <asp:BoundField DataField="paymode" HeaderText="paymode" SortExpression="paymode" />
                        <asp:BoundField DataField="name" HeaderText="name" SortExpression="name" />
                        <asp:BoundField DataField="username" HeaderText="username" SortExpression="username" />
                        <asp:BoundField DataField="catname" HeaderText="catname" SortExpression="catname" />
                        <asp:BoundField DataField="subcatname" HeaderText="subcatname" SortExpression="subcatname" />
                        <asp:BoundField DataField="sename" HeaderText="sename" SortExpression="sename" />
                        <asp:BoundField DataField="searea" HeaderText="searea" SortExpression="searea" />
                        <asp:BoundField DataField="secost" HeaderText="secost" SortExpression="secost" />
                    </Columns>
                    <EditRowStyle BackColor="#2461BF" />
                    <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                    <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                    <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
                    <RowStyle BackColor="#EFF3FB" />
                    <SelectedRowStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
                    <SortedAscendingCellStyle BackColor="#F5F7FB" />
                    <SortedAscendingHeaderStyle BackColor="#6D95E1" />
                    <SortedDescendingCellStyle BackColor="#E9EBEF" />
                    <SortedDescendingHeaderStyle BackColor="#4870BE" />
                </asp:GridView>
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [BookingBill]"></asp:SqlDataSource>
            </div>
        </td>
    </tr>
</table>
</asp:Content>

