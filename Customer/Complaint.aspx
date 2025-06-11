<%@ Page Title="" Language="C#" MasterPageFile="~/Customer/customer.master" AutoEventWireup="true" CodeFile="Complaint.aspx.cs" Inherits="Customer_Complaint" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
    .auto-style2 {
        width: 80%;
        border: 1px solid #000000;
    }
    .auto-style3 {
        font-size: x-large;
        text-align: center;
            height: 52px;
        }
    .auto-style4 {
        width: 493px;
    }
    .auto-style5 {
        text-align: center;
    }
        .auto-style6 {
            width: 493px;
            text-align: center;
        }
        .auto-style7 {
            width: 686px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table align="center" cellspacing="10" class="auto-style2">
    <tr>
        <td class="auto-style3" colspan="2"><strong>
            <br />
            Please Write Your Complaint<hr />
            </strong></td>
    </tr>
    <tr>
        <td class="auto-style6">Name</td>
        <td class="auto-style7">
            <asp:TextBox ID="txtname" runat="server" Height="35px" Width="300px" Enabled="False"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td class="auto-style6">Date</td>
        <td class="auto-style7">
            <asp:TextBox ID="txtdate" runat="server" Height="35px" Width="300px" Enabled="False"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td class="auto-style6">Subject</td>
        <td class="auto-style7">
            <asp:TextBox ID="txtsubject" runat="server" Height="35px" Width="300px"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td class="auto-style6">Issue</td>
        <td class="auto-style7">
            <asp:TextBox ID="txtissue" runat="server" Height="106px" TextMode="MultiLine" Width="300px"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td class="auto-style5" colspan="2">
            <asp:Button ID="btnsubmit" runat="server" Height="35px" Text="Submit" Width="150px" OnClick="btnsubmit_Click" BackColor="Black" BorderStyle="None" ForeColor="White" />
        </td>
    </tr>
    <tr>
        <td class="auto-style4">&nbsp;</td>
        <td class="auto-style7">&nbsp;</td>
    </tr>
</table>
</asp:Content>

