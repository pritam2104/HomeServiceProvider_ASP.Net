<%@ Page Title="" Language="C#" MasterPageFile="~/User/User.master" AutoEventWireup="true" CodeFile="CategoryServices.aspx.cs" Inherits="User_CategoryServices" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style2 {
            width: 80%;
            border: 1px solid #000000;
        }
        .auto-style3 {
            width: 100%;
        }
        .auto-style4 {
            text-align: center;
        }
    .auto-style9 {
        font-size: medium;
    }
        .auto-style15 {
            margin-top: 0px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table align="center" cellspacing="1" class="auto-style2">
        <tr>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>
                <asp:DataList ID="DataList1" runat="server" DataSourceID="SqlDataSource1" RepeatDirection="Horizontal" CssClass="auto-style15">
                    <ItemTemplate>
                        <table align="center" class="auto-style3">
                            <tr>
                                <td class="auto-style4">
                                    &nbsp;</td>
                            </tr>
                            <tr>
                                <td class="auto-style4">
                                    <asp:ImageButton ID="ImageButton1" runat="server" CommandArgument='<%# Eval("catname") %>' Height="140px" ImageUrl='<%# Eval("image") %>' OnClick="ImageButton1_Click" Width="140px" />
                                </td>
                            </tr>
                            <tr>
                                <td class="auto-style14">
                                    <asp:Label ID="Label1" runat="server" CssClass="auto-style9" Text='<%# Eval("catname") %>'></asp:Label>
                                </td>
                            </tr>
                        </table>
                        <br />
                        <br />
                    </ItemTemplate>
                </asp:DataList>
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT [catname], [image] FROM [Category]"></asp:SqlDataSource>
            </td>
        </tr>
    </table>
</asp:Content>

