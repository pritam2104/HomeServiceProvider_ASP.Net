<%@ Page Title="" Language="C#" MasterPageFile="~/Customer/customer.master" AutoEventWireup="true" CodeFile="Getnotification.aspx.cs" Inherits="Customer_Get_notification" %>

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
            height: 25px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table align="center" cellspacing="1" class="auto-style2">
    <tr>
        <td class="auto-style3"><strong>View Notification</strong></td>
    </tr>
    <tr>
        <td class="auto-style4">
            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="notificationid" DataSourceID="SqlDataSource1">
                <Columns>
                    <asp:BoundField DataField="notificationid" HeaderText="notificationid" ReadOnly="True" SortExpression="notificationid" />
                    <asp:BoundField DataField="date" HeaderText="date" SortExpression="date" />
                    <asp:BoundField DataField="username" HeaderText="username" SortExpression="username" />
                    <asp:BoundField DataField="message" HeaderText="message" SortExpression="message" />
                    <asp:BoundField DataField="semanid" HeaderText="semanid" SortExpression="semanid" />
                    <asp:BoundField DataField="semanno" HeaderText="semanno" SortExpression="semanno" />
                    <asp:BoundField DataField="service_deliverd_date" HeaderText="service_deliverd_date" SortExpression="service_deliverd_date" />
                    <asp:BoundField DataField="service_deliverd_time" HeaderText="service_deliverd_time" SortExpression="service_deliverd_time" />
                    <asp:BoundField DataField="catid" HeaderText="catid" SortExpression="catid" />
                    <asp:BoundField DataField="subcatid" HeaderText="subcatid" SortExpression="subcatid" />
                    <asp:BoundField DataField="seid" HeaderText="seid" SortExpression="seid" />
                    <asp:BoundField DataField="sename" HeaderText="sename" SortExpression="sename" />
                    <asp:BoundField DataField="searea" HeaderText="searea" SortExpression="searea" />
                </Columns>
            </asp:GridView>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [Notification] WHERE ([username] = @username)">
                <SelectParameters>
                    <asp:SessionParameter Name="username" SessionField="User" Type="String" />
                </SelectParameters>
            </asp:SqlDataSource>
        </td>
    </tr>
    <tr>
        <td>&nbsp;</td>
    </tr>
</table>
</asp:Content>

