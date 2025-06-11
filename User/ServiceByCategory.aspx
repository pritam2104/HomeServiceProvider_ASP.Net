<%@ Page Title="" Language="C#" MasterPageFile="~/User/User.master" AutoEventWireup="true" CodeFile="ServiceByCategory.aspx.cs" Inherits="User_ServiceByCategory" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style2 {
            width: 80%;
            border: 1px solid #000000;
        }
        .auto-style4 {
            width: 100%;
        }
        .auto-style7 {
            height: 1px;
        }
        .auto-style8 {
            margin-left: 0px;
        }
        .auto-style12 {
            width: 38%;
        }
        .auto-style14 {
            width: 54%;
        }
        .auto-style18 {
            width: 172px;
        }
        .auto-style19 {
            height: 33px;
            text-align: center;
        }
    </style>
    </asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table class="auto-style2">
        <tr>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td>
                <asp:DataList ID="DataList3" runat="server" DataKeyField="seid" DataSourceID="SqlDataSource3" RepeatColumns="2" RepeatDirection="Horizontal" >
                    <ItemTemplate>
                        <table align="center" class="auto-style4">
                            <tr>
                                <td class="auto-style7" colspan="3">
                                    <asp:Label ID="Label1" runat="server" Text='<%# Eval("sename") %>'></asp:Label>
                                </td>
                            </tr>
                            <tr>
                                <td class="auto-style18">Cost&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </td>
                                <td class="auto-style14">
                                    <asp:Label ID="Label2" runat="server" Text='<%# Eval("secost") %>'></asp:Label>
                                    &nbsp; Rs</td>
                                <td class="auto-style12" rowspan="4">
                                    <asp:Image ID="Image1" runat="server" CssClass="auto-style8" Height="140px" Width="140px" ImageUrl='<%# Eval("image") %>' />
                                    <br />
                                </td>
                            </tr>
                            <tr>
                                <td class="auto-style18">Service Area</td>
                                <td class="auto-style14">
                                    <asp:Label ID="Label3" runat="server" Text='<%# Eval("searea") %>'></asp:Label>
                                </td>
                            </tr>
                            <tr>
                                <td class="auto-style18">Duration :</td>
                                <td class="auto-style14">
                                    <asp:Label ID="Label4" runat="server" Text='<%# Eval("seduration") %>'></asp:Label>
                                </td>
                            </tr>
                            <tr>
                                <td class="auto-style18">&nbsp;</td>
                                <td class="auto-style14">&nbsp;</td>
                            </tr>
                            <tr>
                                <td colspan="3" class="auto-style19">
                                    <asp:Button ID="Button3" runat="server" CommandArgument='<%# Eval("seid") %>' OnClick="Button3_Click" Text="View More" />
                                </td>
                            </tr>
                        </table>
                        <br />
                        <br />
                    </ItemTemplate>
                </asp:DataList>
                s<asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [Services] WHERE ([subcatname] = @subcatname)">
                    <SelectParameters>
                        <asp:SessionParameter Name="subcatname" SessionField="subcat" Type="String" />
                    </SelectParameters>
                </asp:SqlDataSource>
            </td>
        </tr>
    </table>
    </asp:Content>

