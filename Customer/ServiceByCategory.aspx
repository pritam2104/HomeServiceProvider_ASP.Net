<%@ Page Title="" Language="C#" MasterPageFile="~/Customer/customer.master" AutoEventWireup="true" CodeFile="ServiceByCategory.aspx.cs" Inherits="Customer_ServiceByCategory" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
    .auto-style2 {
        width: 80%;
      
    }
        .auto-style4 {
            width: 100%;
        }
        .auto-style7 {
            height: 1px;
            text-align: left;
        }
        .auto-style14 {
            width: 54%;
        }
        .auto-style12 {
            width: 38%;
        }
        .auto-style8 {
            margin-left: 0px;
        }
        .auto-style19 {
            text-align: center;
        }
        .auto-style37 {
            font-size: large;
        }
        .auto-style38 {
            width: 172px;
            text-align: left;
        }
        .auto-style39 {
            text-align: left;
        }
        </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table class="auto-style2" align="center">
    <tr>
        <td class="auto-style32">
            Select Services:<hr />
        </td>
    </tr>
    <tr>
        <td>
            <div class="auto-style19">
            <asp:DataList ID="DataList3" runat="server" DataKeyField="seid" DataSourceID="SqlDataSource3" RepeatColumns="2" RepeatDirection="Horizontal" CellPadding="10">
                <ItemTemplate>
                    <table align="center" class="auto-style4" style="border: thin solid #C0C0C0" cellpadding="5">
                        <tr>
                            <td class="auto-style7" colspan="3">
                                <strong>
                                <asp:Label ID="Label1" runat="server" CssClass="auto-style37" Text='<%# Eval("sename") %>' Width="300px"></asp:Label>
                                </strong>
                            </td>
                        </tr>
                        <tr>
                            <td class="auto-style38">Cost</td>
                            <td class="auto-style14">
                                Rs.<asp:Label ID="Label2" runat="server" Text='<%# Eval("secost") %>'></asp:Label>
                                    &nbsp; </td>
                            <td class="auto-style12" rowspan="3">
                                <asp:Image ID="Image1" runat="server" CssClass="auto-style8" Height="157px" Width="248px" ImageUrl='<%# Eval("image") %>' />
                            </td>
                        </tr>
                        <tr>
                            <td class="auto-style38">Service Area</td>
                            <td class="auto-style14">
                                <asp:Label ID="Label3" runat="server" Text='<%# Eval("searea") %>'></asp:Label>
                            </td>
                        </tr>
                        <tr>
                            <td class="auto-style38">Duration: </td>
                            <td class="auto-style14">
                                <asp:Label ID="Label4" runat="server" Text='<%# Eval("seduration") %>'></asp:Label>
                            </td>
                        </tr>
                        <tr>
                            <td colspan="3" class="auto-style39">
                                <asp:Button ID="btnviewmore" runat="server" CommandArgument='<%# Eval("seid") %>' OnClick="Button3_Click" Text="View More" BackColor="#0066CC" BorderStyle="None" Font-Bold="False" ForeColor="White" Height="35px" Width="150px" />
                            </td>
                        </tr>
                    </table>
                </ItemTemplate>
            </asp:DataList>
            </div>
            <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [Services] WHERE ([subcatname] = @subcatname)">
                <SelectParameters>
                    <asp:SessionParameter Name="subcatname" SessionField="subcat" Type="String" />
                </SelectParameters>
            </asp:SqlDataSource>
        </td>
    </tr>
</table>
</asp:Content>

