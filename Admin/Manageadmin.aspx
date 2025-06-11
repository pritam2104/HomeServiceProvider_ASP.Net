<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/admin.master" AutoEventWireup="true" CodeFile="Manageadmin.aspx.cs" Inherits="Admin_Manage_admin" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style24 {
            width: 80%;
            border: 1px solid #000000;
        }
        .auto-style25 {
            font-size: x-large;
            text-align: center;
        }
        .auto-style26 {
            height: 43px;
            text-align: center;
        }
        .auto-style27 {
            width: 501px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table align="center" cellspacing="1" class="" cellpadding="10" style="background-color: #FFFFFF;">
        <tr>
            <td class="auto-style25" colspan="2"><strong>MANAGE ADMIN<hr />
                </strong></td>
        </tr>
        <tr>
            <td class="auto-style27">Username</td>
            <td>
                <asp:TextBox ID="txtname" runat="server" Height="35px" Width="200px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style27">Password</td>
            <td>
                <asp:TextBox ID="txtpassword" runat="server" Height="35px" Width="200px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style27">Re-Type Password</td>
            <td>
                <asp:TextBox ID="txtrepassword" runat="server" Height="35px" Width="200px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style26" colspan="2">
                <asp:Button ID="btnsave" runat="server" Height="35px" Text="Save" Width="150px" OnClick="btnsave_Click" />
&nbsp;
                <asp:Button ID="btnupdate" runat="server" Height="35px" Text="Update" Width="150px" OnClick="btnupdate_Click" />
&nbsp;
                <asp:Button ID="btndelete" runat="server" Height="35px" Text="Delete" Width="150px" OnClick="btndelete_Click" />
&nbsp;&nbsp;&nbsp; </td>
        </tr>
        <tr>
            <td colspan="2">
                <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" CellPadding="4" DataSourceID="SqlDataSource1" ForeColor="#333333" GridLines="None" OnSelectedIndexChanged="GridView1_SelectedIndexChanged">
                    <AlternatingRowStyle BackColor="White" />
                    <Columns>
                        <asp:CommandField ShowSelectButton="True" />
                        <asp:BoundField DataField="adusername" HeaderText="adusername" SortExpression="adusername" />
                        <asp:BoundField DataField="adpassword" HeaderText="adpassword" SortExpression="adpassword" />
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
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [Admin]"></asp:SqlDataSource>
            </td>
        </tr>
    </table>
</asp:Content>

