<%@ Page Title="" Language="C#" MasterPageFile="~/Customer/customer.master" AutoEventWireup="true" CodeFile="CategoryServices.aspx.cs" Inherits="Customer_CategoryServices" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
    .auto-style2 {
        width: 80%;
        
    }
    .auto-style6 {
        text-align: center;
    }
    .auto-style7 {
        width: 100%;
    }
        .auto-style8 {
            height: 136px;
        }
        .auto-style37 {
            font-size: large;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table align="center" cellspacing="10" class="" width="90%">
    <tr>
        <td class="auto-style36">
            <br />
            We Provide Following Services....<hr />
        </td>
    </tr>
    <tr>
        <td class="auto-style6">
            <asp:DataList ID="DataList1" runat="server" DataSourceID="SqlDataSource1" RepeatDirection="Horizontal" RepeatColumns="5" CellPadding="10">
                <ItemTemplate>
                    <table align="center" class="auto-style7">
                        <tr>
                            <td>
                                <asp:Label ID="Label3" runat="server" CssClass="auto-style37" Text='<%# Eval("catname") %>' Width="240px"></asp:Label>
                            </td>
                        </tr>
                        <tr>
                            <td class="auto-style8">
                                <asp:ImageButton ID="ImageButton2" runat="server" CommandArgument='<%# Eval("catname") %>' Height="150px" ImageUrl='<%# Eval("image") %>' OnClick="ImageButton2_Click" Width="225px" />
                            </td>
                        </tr>
                    </table>
                </ItemTemplate>
            </asp:DataList>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT [catname], [image] FROM [Category]"></asp:SqlDataSource>
        </td>
    </tr>
</table>
</asp:Content>

