<%@ Page Title="" Language="C#" MasterPageFile="~/Customer/customer.master" AutoEventWireup="true" CodeFile="BookingDetails.aspx.cs" Inherits="Customer_BookingDetails" %>

<%@ Register assembly="CrystalDecisions.Web, Version=13.0.4000.0, Culture=neutral, PublicKeyToken=692fbea5521e1304" namespace="CrystalDecisions.Web" tagprefix="CR" %>

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
    .auto-style4 {
        font-size: medium;
        text-align: left;
    }
    .auto-style6 {
        width: 380px;
    }
    .auto-style7 {
        width: 270px;
    }
        .auto-style10 {
            width: 80%;
        }
        .auto-style11 {
            width: 138px;
        }
        .auto-style12 {
            font-size: large;
        }
        .auto-style13 {
            height: 25px;
            width: 119px;
        }
        .auto-style14 {
            width: 352px;
        }
        .auto-style15 {
            height: 25px;
            width: 352px;
        }
        .auto-style16 {
            width: 119px;
        }
        .auto-style37 {
            width: 97%;
            border: 1px solid #000000;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table align="center" cellspacing="1" class="auto-style2">
    <tr>
        <td class="auto-style3" colspan="4"><strong>Complete Booking Details<br />
            </strong></td>
    </tr>
    <tr>
        <td class="auto-style7">&nbsp;</td>
        <td class="auto-style11">&nbsp;</td>
        <td class="auto-style6">&nbsp;</td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td colspan="2">&nbsp;&nbsp;<asp:DataList ID="DataList1" runat="server" DataKeyField="seid" DataSourceID="SqlDataSource1"  >
            <ItemTemplate>
                <table align="center" cellspacing="10" class="auto-style37">
                    <tr>
                        <td>Service id</td>
                        <td>
                            <asp:Label ID="Label2" runat="server" Text='<%# Eval("seid") %>'></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td>Category</td>
                        <td>
                            <asp:Label ID="Label3" runat="server" Text='<%# Eval("catname") %>'></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td>Subcategory</td>
                        <td>
                            <asp:Label ID="Label4" runat="server" Text='<%# Eval("subcatname") %>'></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td>Service Name</td>
                        <td>
                            <asp:Label ID="Label5" runat="server" Text='<%# Eval("sename") %>'></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td>Service Area</td>
                        <td>
                            <asp:Label ID="Label6" runat="server" Text='<%# Eval("searea") %>'></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td>Service Description</td>
                        <td>
                            <asp:Label ID="Label7" runat="server" Text='<%# Eval("sedescription") %>'></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td>Service Cost</td>
                        <td>
                            <asp:Label ID="Label8" runat="server" Text='<%# Eval("secost") %>'></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td>Duration</td>
                        <td>
                            <asp:Label ID="Label9" runat="server" Text='<%# Eval("seduration") %>'></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td colspan="2">
                            <br />
                            <asp:Button ID="btnconfirmbook" runat="server" Text="Confirm Booking" OnClick="btnconfirmbook_Click" CommandArgument='<%# Eval("seid") %>' BackColor="#0066CC" BorderStyle="None" ForeColor="White" Height="35px" Width="200px" />
                        </td>
                    </tr>
                </table>
                <br />
<br />
            </ItemTemplate>
            </asp:DataList>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [Services] WHERE ([seid] = @seid)">
                <SelectParameters>
                    <asp:SessionParameter Name="seid" SessionField="seid" Type="Int32" />
                </SelectParameters>
            </asp:SqlDataSource>
        </td>
        <td class="auto-style4" colspan="2">
            <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <table align="center" cellspacing="1" class="auto-style10">
                <tr>
                    <td class="auto-style12" colspan="3"><strong>Payment Details 15:</strong></td>
                    
                </tr>
                <tr>
                    <td class="auto-style16">Booking id</td>
                    <td class="auto-style14">
                        <asp:Label ID="lblbookingid" runat="server" Text="Label"></asp:Label>
                    </td>
                    <td class="auto-style14">
                        &nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style16">Service id</td>
                    <td class="auto-style14">
                        <asp:Label ID="lblseid" runat="server"></asp:Label>
                    </td>
                    <td class="auto-style14">
                        &nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style16">Username</td>
                    <td class="auto-style14">
                        <asp:Label ID="lblusername" runat="server" Text="Label"></asp:Label>
                    </td>
                    <td class="auto-style14">
                        &nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style13">Booking Date</td>
                    <td class="auto-style15">
                        <asp:TextBox ID="txtbookingdate" runat="server" Height="30px" Width="200px"></asp:TextBox>
                    </td>
                    <td class="auto-style15">
                        &nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style16">Preferred Date</td>
                    <td class="auto-style14">
                        <asp:TextBox ID="txtpreferresdate" runat="server" Height="30px" Width="200px" TextMode="Date"></asp:TextBox>
                    </td>
                    <td class="auto-style14">
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="txtpreferresdate" ErrorMessage="Date must be enter" ForeColor="Red" Height="20px" Width="200px"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style16">Payment Mode</td>
                    <td class="auto-style14">
                        <asp:RadioButton ID="rdcash" runat="server" GroupName="a"  Text="Cash" AutoPostBack="True" OnCheckedChanged="rdcash_CheckedChanged"  />
                        <br />
                        <asp:RadioButton ID="rdupi" runat="server" GroupName="a" Text="UPI" AutoPostBack="True" OnCheckedChanged="rdupi_CheckedChanged"  />
                        <br />
                    </td>
                    <td class="auto-style14">
                        &nbsp;</td>
                </tr>
                <tr>
                    <td colspan="2">
                        <asp:Panel ID="Panel1" runat="server">
                            <asp:ImageButton ID="ImageButton1" runat="server" Height="200px" ImageUrl="~/Image/UPI.jpg" OnClick="ImageButton1_Click" Width="200px" />
                        </asp:Panel>
                        <br />
                        <br />
                    </td>
                    <td>
                        &nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style14">
                        &nbsp;</td>
                </tr>
            </table>
        </td>
    </tr>
    <tr>
        <td class="auto-style7">&nbsp;</td>
        <td class="auto-style11">&nbsp;</td>
        <td class="auto-style6">&nbsp;</td>
        <td>&nbsp;</td>
    </tr>
</table>
</asp:Content>

