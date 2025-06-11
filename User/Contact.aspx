<%@ Page Title="" Language="C#" MasterPageFile="~/User/User.master" AutoEventWireup="true" CodeFile="Contact.aspx.cs" Inherits="User_Contact" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style11 {
            width: 80%;
            border: 1px solid #000000;
        }
        .auto-style12 {
            font-size: x-large;
            text-align: center;
        }
        .auto-style13 {
            width: 515px;
        }
        .auto-style14 {
            font-size: large;
        }
        .auto-style15 {
            text-align: center;
            height: 43px;
        }
        .auto-style16 {
            width: 515px;
            text-align: center;
        }
        .auto-style17 {
            font-size: large;
            color: #FF0000;
        }
        .auto-style19 {
            text-align: center;
        }
        </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table align="center" cellspacing="1" class="auto-style11">
        <tr>
            <td class="auto-style12" colspan="4" style="border-style: inherit; border-width: medium; border-color: #000000; font-family: magneto; font-size: large; font-style: normal;"><strong style="font-family: 'Bell MT'">CONTACT&nbsp; US</strong></td>
        </tr>
        <tr>
            <td class="auto-style19" colspan="2">&nbsp;&nbsp;</td>
            <td class="auto-style19" colspan="2">&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style16" rowspan="4"><strong><span class="auto-style8">Address:</span></strong><span class="auto-style8">&nbsp;Shri Ganesh Niwas no12,<br />
                padmavati nagari,near dutta nagar,</span><br class="auto-style8" />
                <span class="auto-style8">Vishrambag sangli-416416,</span><br class="auto-style8" />
                <span class="auto-style8">&nbsp;Maharashtra.</span><br />
                <br />
                <a href="mailto:extreemhomeservice@gmail.com"><span class="auto-style8">homeservice@gmail.com</span></a><br class="auto-style8" />
                <br />
                9022055356<br />
                <br />
                <asp:Image ID="Image9" runat="server" Height="60px" ImageUrl="~/Image/whatsapp.jpg" Width="60px" />
&nbsp;
                <asp:Image ID="Image10" runat="server" Height="45px" ImageUrl="~/Image/fasebook.jpg" Width="45px" />
&nbsp;
                <asp:Image ID="Image12" runat="server" Height="45px" ImageUrl="~/Image/insta.jpg" Width="55px" />
&nbsp;
                <asp:Image ID="Image11" runat="server" Height="49px" ImageUrl="~/Image/twiter1.jpg" Width="56px" />
            </td>
            <td class="auto-style17" colspan="2">
                <strong>Do Your Enquiry<br />
                </strong>
                <asp:TextBox ID="txtname" runat="server" Height="35px" Width="250px"></asp:TextBox>
            </td>
            <td class="auto-style19" rowspan="4">
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;<asp:Image ID="Image13" runat="server" Height="300px" Width="300px" />
            </td>
        </tr>
        <tr>
            <td colspan="2">
                <asp:TextBox ID="txtemailid" runat="server" Height="35px" Width="250px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td colspan="2">
                <asp:TextBox ID="txtcity" runat="server" Height="35px" Width="250px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td colspan="2">
                <asp:TextBox ID="txtenquiry" runat="server" Height="125px" Width="251px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style15" colspan="4">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Button ID="btnsubmit" class="btn btn-outline-primary" runat="server" Height="35px" Text="Submit" Width="100px" OnClick="btnsubmit_Click" />
                &nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style13">&nbsp;</td>
            <td colspan="2">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
    </table>
    </asp:Content>

