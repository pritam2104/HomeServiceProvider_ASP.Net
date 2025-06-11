<%@ Page Title="" Language="C#" MasterPageFile="~/Customer/customer.master" AutoEventWireup="true" CodeFile="Feedback.aspx.cs" Inherits="Customer_Feedback" %>

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
        text-align: center;
    }
    .auto-style6 {
        width: 480px;
        text-align: center;
    }
        .auto-style37 {
            width: 480px;
            text-align: center;
            height: 43px;
        }
        .auto-style38 {
            height: 43px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table align="center" cellspacing="1" class="auto-style2">
        <tr>
            <td class="auto-style3" colspan="2"><strong>FEEDBACK</strong></td>
        </tr>
        <tr>
            <td class="auto-style6">Name:</td>
            <td>
                <asp:TextBox ID="txtname" runat="server" Height="30px" Width="200px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style6">Contact No:</td>
            <td>
                <asp:TextBox ID="txtcontactno" runat="server" Height="30px" Width="200px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style6">Email ID:</td>
            <td>
                <asp:TextBox ID="txtemailid" runat="server" Height="30px" Width="200px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style6">Message</td>
            <td>
                <asp:TextBox ID="txtmsg" runat="server" Height="100px" Width="200px" TextMode="MultiLine"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style37">Rating</td>
            <td class="auto-style38">
                <asp:ImageButton ID="ImageButton1" runat="server" Height="35px" ImageUrl="~/Image/Star.gif" OnClick="ImageButton1_Click" Width="35px" />
&nbsp;
                <asp:ImageButton ID="ImageButton2" runat="server" Height="35px" ImageUrl="~/Image/Star.gif" OnClick="ImageButton2_Click" Width="35px" />
&nbsp;
                <asp:ImageButton ID="ImageButton3" runat="server" Height="35px" ImageUrl="~/Image/Star.gif" OnClick="ImageButton3_Click" Width="35px" />
&nbsp;
                <asp:ImageButton ID="ImageButton4" runat="server" Height="35px" ImageUrl="~/Image/Star.gif" OnClick="ImageButton4_Click" Width="35px" />
&nbsp;
                <asp:ImageButton ID="ImageButton5" runat="server" Height="33px" ImageUrl="~/Image/Star.gif" OnClick="ImageButton5_Click" Width="37px" />
&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Label ID="lblrating" runat="server" Text="Label" Enabled="False"></asp:Label>
            </td>
        </tr>
        <tr>
            <td colspan="2">&nbsp;</td>
        </tr>
        <tr>
            <td colspan="2" class="auto-style5">
                <asp:Button ID="btnsubmit" runat="server" Text="Submit" Height="35px" OnClick="btnsubmit_Click" Width="100px" BackColor="Black" ForeColor="White" />
&nbsp;&nbsp;
                <asp:Button ID="btnclear" runat="server" Text="Clear" Height="35px" OnClick="btnclear_Click" Width="100px" BackColor="Black" BorderColor="Black" ForeColor="White" />
            </td>
        </tr>
    </table>
</asp:Content>

