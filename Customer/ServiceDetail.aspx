<%@ Page Title="" Language="C#" MasterPageFile="~/Customer/customer.master" AutoEventWireup="true" CodeFile="ServiceDetail.aspx.cs" Inherits="Customer_ServiceDetail" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style3 {
            width: 80%;
        }
        .auto-style4 {
            width: 100%;
        }
        .auto-style5 {
            width: 230px;
        }
        .auto-style6 {
            width: 140px;
        }
        .auto-style7 {
            text-align: center;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    
    <table class="auto-style3">
        <tr>
            <td>
                <div class="auto-style7">
                <asp:DataList ID="DataList2" runat="server" DataKeyField="seid" DataSourceID="SqlDataSource1" RepeatColumns="2" RepeatDirection="Horizontal">
                    <ItemTemplate>
                        <table align="center" class="auto-style4">
                            <tr>
                                <td colspan="3">
                                    <asp:Label ID="Label7" runat="server" Text='<%# Eval("sename") %>'></asp:Label>
                                </td>
                            </tr>
                            <tr>
                                <td class="auto-style5">&nbsp;Area :</td>
                                <td class="auto-style6">
                                    <asp:Label ID="Label8" runat="server" Text='<%# Eval("searea") %>'></asp:Label>
                                </td>
                                <td rowspan="4">
                                    <asp:Image ID="Image1" runat="server" Height="140px" ImageUrl='<%# Eval("image") %>' Width="140px" />
                                </td>
                            </tr>
                            <tr>
                                <td class="auto-style5">Cost ;</td>
                                <td class="auto-style6">
                                    <asp:Label ID="Label9" runat="server" Text='<%# Eval("secost") %>'></asp:Label>
                                </td>
                            </tr>
                            <tr>
                                <td class="auto-style5">Duration :</td>
                                <td class="auto-style6">
                                    <asp:Label ID="Label10" runat="server" Text='<%# Eval("seduration") %>'></asp:Label>
                                </td>
                            </tr>
                            <tr>
                                <td class="auto-style5">Description:</td>
                                <td class="auto-style6">
                                    <asp:Label ID="Label11" runat="server" Text='<%# Eval("sedescription") %>'></asp:Label>
                                </td>
                            </tr>
                        </table>
                        <asp:Button ID="btnbooknow" runat="server" CommandArgument='<%# Eval("seid") %>' Height="35px" OnClick="btnbooknow_Click" Text="Book Now" Width="100px" />
                        <br />
                    </ItemTemplate>
                </asp:DataList>
                </div>
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [Services] WHERE ([seid] = @seid)">
                    <SelectParameters>
                        <asp:SessionParameter Name="seid" SessionField="seid" Type="Int32" />
                    </SelectParameters>
                </asp:SqlDataSource>
            </td>
        </tr>
    </table>
    
</asp:Content>

