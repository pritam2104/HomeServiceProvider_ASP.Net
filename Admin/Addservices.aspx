<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/admin.master" AutoEventWireup="true" CodeFile="Addservices.aspx.cs" Inherits="Admin_Addservices" %>

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
        .auto-style5 {
            width: 165px;
        }
        .auto-style13 {
            text-align: center;
        }
    .auto-style22 {
        font-size: small;
    }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table align="center" cellspacing="1" class="auto-style2" cellpadding="10" style="background-color: #FFFFFF;">
        <tr>
            <td colspan="3" class="auto-style3"><strong>Add Services<hr />
                </strong></td>
        </tr>
        <tr>
            <td>Service Id&nbsp;</td>
            <td class="auto-style5">
                <asp:TextBox ID="txtseid" runat="server" Enabled="False" Height="30px" Width="300px"></asp:TextBox>
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td>Category Name</td>
            <td class="auto-style5">
                <asp:DropDownList ID="drpcatname" runat="server" DataSourceID="SqlDataSource2" DataTextField="catname" DataValueField="catname" Height="40px" Width="300px" CssClass="auto-style22">
                </asp:DropDownList>
                <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT [catname] FROM [Category]"></asp:SqlDataSource>
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td>Subcategory Name</td>
            <td class="auto-style5">
                <asp:DropDownList ID="drpsubcatname" runat="server" DataSourceID="SqlDataSource3" DataTextField="subcatname" DataValueField="subcatname" Height="40px" Width="300px" CssClass="auto-style22">
                </asp:DropDownList>
                <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT [subcatname] FROM [Subcategory]"></asp:SqlDataSource>
            </td>
            <td rowspan="6">
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Image ID="Image1" runat="server" Height="196px" Width="168px" />
                <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:FileUpload ID="FileUpload1" runat="server" />
                <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Button ID="btnupload"  class="btn btn-outline-primary" runat="server" Height="35px" Text="Upload" Width="100px" OnClick="btnupload_Click" ForeColor="Black" />
            </td>
        </tr>
        <tr>
            <td>Service Name</td>
            <td class="auto-style5">
                <asp:TextBox ID="txtsename" runat="server" Height="30px" Width="300px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td>Service Area</td>
            <td class="auto-style5">
                <asp:TextBox ID="txtsearea" runat="server" Height="30px" Width="300px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td>Service Description</td>
            <td class="auto-style5">
                <asp:TextBox ID="txtsedescription" runat="server" Height="110px" Width="300px" TextMode="MultiLine"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td>Service Cost</td>
            <td class="auto-style5">
                <asp:TextBox ID="txtsecost" runat="server" Height="30px" Width="300px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td>Service Duration</td>
            <td class="auto-style5">
                <asp:TextBox ID="txtseduration" runat="server" Height="30px" Width="300px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td colspan="3" class="auto-style13"><asp:Button ID="btnaddnew" class="btn btn-outline-primary" runat="server" Height="35px" Text="Add New" Width="100px" OnClick="btnaddnew_Click" />
                &nbsp;&nbsp;
                <asp:Button ID="btnsave" class="btn btn-outline-primary" runat="server" Height="35px" OnClick="btnsave_Click1" Text="Save" Width="100px" />
&nbsp;&nbsp;
                <asp:Button ID="btnupdate" class="btn btn-outline-primary" runat="server" Height="35px" OnClick="btnupdate_Click1" Text="Update" Width="100px" />
&nbsp;&nbsp;
                <asp:Button ID="btndelete" class="btn btn-outline-primary" runat="server" Height="35px" OnClick="btndelete_Click1" Text="Delete" Width="100px" />
&nbsp;&nbsp;
                <asp:Button ID="btncancel" class="btn btn-outline-primary" runat="server" Height="35px" OnClick="btncancel_Click1" Text="Cancel" Width="100px" />
            </td>
        </tr>
        <tr>
            <td colspan="3">
                <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" CellPadding="4" DataKeyNames="seid" DataSourceID="SqlDataSource1" ForeColor="#333333" GridLines="None" OnSelectedIndexChanged="GridView1_SelectedIndexChanged">
                    <AlternatingRowStyle BackColor="White" />
                    <Columns>
                        <asp:CommandField ShowSelectButton="True" />
                        <asp:BoundField DataField="seid" HeaderText="seid" ReadOnly="True" SortExpression="seid" />
                        <asp:BoundField DataField="catname" HeaderText="catname" SortExpression="catname" />
                        <asp:BoundField DataField="subcatname" HeaderText="subcatname" SortExpression="subcatname" />
                        <asp:BoundField DataField="sename" HeaderText="sename" SortExpression="sename" />
                        <asp:BoundField DataField="searea" HeaderText="searea" SortExpression="searea" />
                        <asp:BoundField DataField="sedescription" HeaderText="sedescription" SortExpression="sedescription" />
                        <asp:BoundField DataField="secost" HeaderText="secost" SortExpression="secost" />
                        <asp:BoundField DataField="seduration" HeaderText="seduration" SortExpression="seduration" />
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
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [Services]"></asp:SqlDataSource>
            </td>
        </tr>
    </table>
</asp:Content>

