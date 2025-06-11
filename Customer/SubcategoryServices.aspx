<%@ Page Title="" Language="C#" MasterPageFile="~/Customer/customer.master" AutoEventWireup="true" CodeFile="SubcategoryServices.aspx.cs" Inherits="Customer_SubcategoryServices" %>

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
        .auto-style37 {
            font-size: large;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <span class="auto-style36">SubServices<hr />
    </span>
    <br />
    <table align="center" cellspacing="1" class="auto-style2">
    <tr>
        <td>
            <div>
            <asp:DataList ID="DataList1" runat="server" DataKeyField="catname" DataSourceID="SqlDataSource1" RepeatDirection="Horizontal" RepeatColumns="5" CellPadding="10">
                <ItemTemplate>
                    <table align="center" cellspacing="5" class="auto-style3" style="border: thin solid #C0C0C0">
                        <tr>
                            <td class="auto-style4">
                                <asp:Label ID="Label2" runat="server" CssClass="auto-style37" Text='<%# Eval("subcatname") %>'></asp:Label>
                            </td>
                        </tr>
                        <tr>
                            <td class="auto-style4">
                                <asp:ImageButton ID="ImageButton1" runat="server" CommandArgument='<%# Eval("subcatname") %>' Height="157px" ImageUrl='<%# Eval("image") %>' Width="238px" OnClick="ImageButton1_Click" />
                            </td>
                        </tr>
                    </table>
                </ItemTemplate>
            </asp:DataList>
            </div>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [Subcategory] WHERE ([catname] = @catname)">
                <SelectParameters>
                    <asp:SessionParameter Name="catname" SessionField="cat" Type="String" />
                </SelectParameters>
            </asp:SqlDataSource>
        </td>
    </tr>
</table>
    <br />
</asp:Content>

