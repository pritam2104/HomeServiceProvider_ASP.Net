<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/admin.master" AutoEventWireup="true" CodeFile="Sendnotification.aspx.cs" Inherits="Admin_Send_notification" %>

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
        .auto-style10 {
            width: 375px;
        }
        .auto-style24 {
            text-align: center;
            margin-right: 0px;
            margin-bottom: 0px;
        }
        .auto-style25 {
            width: 375px;
            height: 33px;
        }
        .auto-style26 {
            height: 33px;
        }
        .auto-style27 {
            width: 375px;
            height: 71px;
        }
        .auto-style28 {
            height: 71px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table align="center" cellspacing="1" class="auto-style2">
        <tr>
            <td class="auto-style3" colspan="2"><strong>Send Notification</strong></td>
        </tr>
        <tr>
            <td class="auto-style3" colspan="2">&nbsp;</td>
        </tr>
        <tr>
            <td colspan="2">
                <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" CellPadding="4" DataKeyNames="bookingid" DataSourceID="SqlDataSource1" ForeColor="#333333" GridLines="None" OnSelectedIndexChanged="GridView1_SelectedIndexChanged">
                    <AlternatingRowStyle BackColor="White" />
                    <Columns>
                        <asp:CommandField ShowSelectButton="True" />
                        <asp:BoundField DataField="catname" HeaderText="catname" SortExpression="catname" />
                        <asp:BoundField DataField="subcatname" HeaderText="subcatname" SortExpression="subcatname" />
                        <asp:BoundField DataField="sename" HeaderText="sename" SortExpression="sename" />
                        <asp:BoundField DataField="searea" HeaderText="searea" SortExpression="searea" />
                        <asp:BoundField DataField="secost" HeaderText="secost" SortExpression="secost" />
                        <asp:BoundField DataField="bookingid" HeaderText="bookingid" SortExpression="bookingid" ReadOnly="True" />
                        <asp:BoundField DataField="serviceid" HeaderText="serviceid" SortExpression="serviceid" />
                        <asp:BoundField DataField="username" HeaderText="username" SortExpression="username" />
                        <asp:BoundField DataField="bookingdate" HeaderText="bookingdate" SortExpression="bookingdate" />
                        <asp:BoundField DataField="preferdate" HeaderText="preferdate" SortExpression="preferdate" />
                        <asp:BoundField DataField="paymode" HeaderText="paymode" SortExpression="paymode" />
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
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT [catname], [subcatname], [sename], [searea], [secost], [bookingid], [serviceid], [username], [bookingdate], [preferdate], [paymode] FROM [Bookingview]"></asp:SqlDataSource>
            </td>
        </tr>
        <tr>
            <td class="auto-style10">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style10">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style10">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style10">Booking Id-<asp:Label ID="lblbid" runat="server" Text="Label"></asp:Label>
                <br />
                Service Id-<asp:Label ID="lblsid" runat="server" Text="Label"></asp:Label>
                <br />
                Booking Date-<asp:Label ID="lblbdate" runat="server" Text="Label"></asp:Label>
                <br />
                Preffered Date-<asp:Label ID="lblpdate" runat="server" Text="Label"></asp:Label>
                <br />
            </td>
            <td>ServiceMan&nbsp; Name:<asp:DropDownList ID="drpsman" runat="server" Height="35px" Width="150px" DataSourceID="SqlDataSource2" DataTextField="fullname" DataValueField="fullname">
                </asp:DropDownList>
                <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT [fullname] FROM [Serviceman]"></asp:SqlDataSource>
            </td>
        </tr>
        <tr>
            <td class="auto-style27">Customer Name-<asp:Label ID="lblcname" runat="server" Text="Label"></asp:Label>
            </td>
            <td class="auto-style28">ServiceMan Number :<asp:DropDownList ID="drpsmanno" runat="server" Height="35px" Width="150px" DataSourceID="SqlDataSource3" DataTextField="mobilno" DataValueField="mobilno">
                </asp:DropDownList>
                <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT [mobilno] FROM [Serviceman]"></asp:SqlDataSource>
            </td>
        </tr>
        <tr>
            <td class="auto-style10">Customer Email Id-<asp:Label ID="lblemailid" runat="server" Text="Label"></asp:Label>
            </td>
            <td>Service Delivered Date :<asp:TextBox ID="txtsdeliverydate" runat="server" Height="35px" Width="200px" TextMode="Date"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style10">Service Category-<asp:Label ID="lblscategory" runat="server" Text="Label"></asp:Label>
            </td>
            <td>Service Delivered Time :<asp:TextBox ID="txtsdeliverytime" runat="server" Height="35px" Width="200px" TextMode="Time"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style25">Service Subcategory-<asp:Label ID="lblssubcategory" runat="server" Text="Label"></asp:Label>
            </td>
            <td class="auto-style26">Type Message :<asp:TextBox ID="drptypemsg" runat="server" Height="29px" Width="188px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style10">Service Area-<asp:Label ID="lblsarea" runat="server" Text="Label"></asp:Label>
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style10">Service Name-<asp:Label ID="lblsname" runat="server" Text="Label"></asp:Label>
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style10">Service Cost-<asp:Label ID="lblscost" runat="server" Text="Label"></asp:Label>
            </td>
            <td>Detail :<asp:TextBox ID="txtdetail" runat="server" Height="35px" Width="200px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style10">&nbsp;</td>
            <td>
                <asp:Label ID="lblusername" runat="server" Text="Label" Visible="False"></asp:Label>
            </td>
        </tr>
        <tr>
            <td class="auto-style10">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style24" colspan="2">
                <asp:Button ID="btnsubmit" class="btn btn-outline-primary" runat="server" Height="35px" Text="Submit" Width="200px" OnClick="btnsubmit_Click" />
            </td>
        </tr>
    </table>
</asp:Content>

