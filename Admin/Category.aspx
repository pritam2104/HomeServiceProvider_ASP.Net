<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/admin.master" AutoEventWireup="true" CodeFile="Category.aspx.cs" Inherits="Admin_Category" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
       
        .auto-style2 {
            text-align: center;
            font-size: x-large;
        }
       
        .auto-style3 {
            text-align: center;
        }
       
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table align="center" cellspacing="10" cellpadding="10" style="background-color: #FFFFFF;" width="80%">
        <tr>
            <td class="auto-style2" colspan="3"><strong>Manage Category<hr />
                </strong></td>
        </tr>
        <tr>
            <td>Category Id</td>
            <td class="auto-style10">
                <asp:TextBox ID="txtid" runat="server" Height="25px" Width="200px" Enabled="False"></asp:TextBox>
            </td>
            <td class="auto-style11" rowspan="2">
                <asp:Image ID="image1" runat="server" Height="170px" Width="170px" />
                <br />
                <asp:FileUpload ID="FileUpload1" runat="server" BackColor="White" Height="30px" Width="250px" />
                <br />
                <asp:Button ID="btnupload" class="btn btn-outline-primary" runat="server" Height="35px" Text="Upload" Width="100px" OnClick="btnupload_Click" />
            </td>
        </tr>
        <tr>
            <td class="auto-style13">Category Name</td>
            <td class="auto-style8">
                <asp:TextBox ID="txtname" runat="server" Height="25px" Width="200px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style3" colspan="3">
                <asp:Button ID="btnaddnew" class="btn btn-outline-primary" runat="server" Height="35px" Text="Add New" Width="100px" OnClick="btnaddnew_Click" />
                &nbsp;&nbsp;&nbsp;
                <asp:Button ID="btnsave" class="btn btn-outline-primary" runat="server" Height="35px" Text="Save" Width="100px" OnClick="btnsave_Click" />
&nbsp;&nbsp;
                <asp:Button ID="btnupdate" class="btn btn-outline-primary" runat="server" Height="35px" Text="Update" Width="100px" OnClick="btnupdate_Click" />
&nbsp;&nbsp;
                <asp:Button ID="btndelete" class="btn btn-outline-primary" runat="server" Height="35px" Text="Delete" Width="100px" OnClick="btndelete_Click" />
&nbsp;&nbsp;
                <asp:Button ID="btncancel" class="btn btn-outline-primary" runat="server" Height="35px" Text="Cancel" Width="100px" OnClick="btncancel_Click" />
            </td>
        </tr>
        <tr>
            <td colspan="3" class="auto-style3" align="top">
                <div class="auto-style12">
                <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" CellPadding="4" DataKeyNames="catid" DataSourceID="SqlDataSource1" ForeColor="#333333" GridLines="None" OnSelectedIndexChanged="GridView1_SelectedIndexChanged1" Width="742px">
                    <AlternatingRowStyle BackColor="White" />
                    <Columns>
                        <asp:CommandField ShowSelectButton="True" />
                        <asp:BoundField DataField="catid" HeaderText="catid" ReadOnly="True" SortExpression="catid" />
                        <asp:BoundField DataField="catname" HeaderText="catname" SortExpression="catname" />
                        <asp:BoundField DataField="image" HeaderText="image" SortExpression="image" />
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
                </div>
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [Category]"></asp:SqlDataSource>
            </td>
        </tr>
    </table>
</asp:Content>

