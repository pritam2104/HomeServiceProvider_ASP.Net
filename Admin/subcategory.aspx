<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/admin.master" AutoEventWireup="true" CodeFile="subcategory.aspx.cs" Inherits="Admin_subcategory" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        
    .auto-style1 {
        text-align: center;
        font-size: x-large;
    }
        
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table align="center" cellspacing="1" class="" width="80%" cellpadding="10" style="background-color: #FFFFFF;">
        <tr>
            <td colspan="3" class="auto-style3">
                <div class="auto-style1">
                    <strong>MANAGE SUBCATEGORY</div>
                <hr />
                </strong></td>
        </tr>
        <tr>
            <td class="auto-style15">Subcategory id</td>
            <td class="auto-style12">
                <asp:TextBox ID="txtsubcatid" runat="server" Enabled="False" Height="25px" Width="200px"></asp:TextBox>
            </td>
            <td class="auto-style10" rowspan="3">
                <asp:Image ID="Image1" runat="server" Height="170px" Width="170px" />
                <br />
                <asp:FileUpload ID="FileUpload1" runat="server" Height="35px" Width="300px" />
                <br />
                <asp:Button ID="btnupload" class="btn btn-outline-primary" runat="server" Height="35px" OnClick="btnupload_Click" Text="Upload" Width="150px" />
            </td>
        </tr>
        <tr>
            <td class="auto-style8">Category name</td>
            <td class="auto-style13">
                <asp:DropDownList ID="drpcatname" runat="server" DataSourceID="SqlDataSource2" DataTextField="catname" DataValueField="catname" Height="30px" Width="100px">
                </asp:DropDownList>
                <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT [catname] FROM [Category]"></asp:SqlDataSource>
            </td>
        </tr>
        <tr>
            <td class="auto-style8">Subcategory name</td>
            <td class="auto-style13">
                <asp:TextBox ID="txtsubcatname" runat="server" Height="25px" Width="200px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td colspan="3" class="auto-style4">&nbsp;<asp:Button ID="btnaddnew" class="btn btn-outline-primary" runat="server" Text="Add New" Height="30px" Width="90px" OnClick="btnaddnew_Click" />
                &nbsp;&nbsp;&nbsp;
                <asp:Button ID="btnsave" class="btn btn-outline-primary" runat="server" Text="Save" Height="30px" Width="90px" OnClick="btnsave_Click" />
            &nbsp;&nbsp;&nbsp;
                <asp:Button ID="btnupdate" class="btn btn-outline-primary" runat="server" Height="35px" Text="Update" Width="90px" OnClick="btnupdate_Click" />
&nbsp;&nbsp;&nbsp;
                <asp:Button ID="btndelete" class="btn btn-outline-primary" runat="server" Height="35px" Text="Delete" Width="90px" OnClick="btndelete_Click" />
&nbsp;&nbsp;&nbsp;
                <asp:Button ID="btncancel" class="btn btn-outline-primary" runat="server" Height="35px" Text="Cancel" Width="90px" OnClick="btncancel_Click" />
            </td>
        </tr>
        <tr>
            <td colspan="3">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" CellPadding="4" DataKeyNames="subcatid" DataSourceID="SqlDataSource1" ForeColor="#333333" GridLines="None" OnSelectedIndexChanged="GridView1_SelectedIndexChanged">
                    <AlternatingRowStyle BackColor="White" />
                    <Columns>
                        <asp:CommandField ShowSelectButton="True" />
                        <asp:BoundField DataField="subcatid" HeaderText="subcatid" ReadOnly="True" SortExpression="subcatid" />
                        <asp:BoundField DataField="catname" HeaderText="catname" SortExpression="catname" />
                        <asp:BoundField DataField="subcatname" HeaderText="subcatname" SortExpression="subcatname" />
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
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [Subcategory]"></asp:SqlDataSource>
            </td>
        </tr>
    </table>
</asp:Content>

