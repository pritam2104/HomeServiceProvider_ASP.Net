<%@ Page Title="" Language="C#" MasterPageFile="~/User/User.master" AutoEventWireup="true" CodeFile="enquiry.aspx.cs" Inherits="User_enquiry" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style5 {
            height: 28px;
        }
        .auto-style16 {
            font-size: x-large;
            text-align: center;
        }
    
        .style15
        {
            font-family: Arial, Helvetica, sans-serif;
            font-size: xx-large;
            color: #003366;
            font-weight: bold;
        }
        .style13
        {
            font-family: Arial, Helvetica, sans-serif;
            font-size: x-large;
            color: #FF0000;
            font-weight: bold;
        }
        .style16
        {
            text-align: left;
            font-weight: 700;
        }
        </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server" >
    <table align="center" cellpadding="0" cellspacing="0" width="100%">
        <tr>
            <td>
                <table cellpadding="0" cellspacing="0" class="style1">
                    <tr>
                        <td></td>
                        <td rowspan="2" valign="top" class="" align="center">
                            <br />
                            <span class="style15">Contact US</span><span class=""><hr size="1" align="center" style="background-color: #FF0000; height: 1px; width: 1200px;" width="50%" />
                            </span>
                            <table align="center" cellpadding="5" cellspacing="5">
                                <tr>
                                    <td style="text-align: center" valign="top">
                                        <table align="center" cellpadding="5" cellspacing="3" width="600">
                                            <tr>
                                                <td style="text-align: left">
                                                    <asp:ImageButton ID="ImageButton1" runat="server" Height="50px" ImageUrl="~/images/icon1.png" Width="50px" />
                                                </td>
                                                <td style="text-align: left"><b style="color: #000000; text-align: left;">Address:&nbsp; </b><span style="color: #000000; text-align: left;">Shri Ganesh Niwas,plot no12,<br />
                                                    padmavati nagari,near dutta nagar,<br />
                                                    Vishrambag sangli-416416,<br />
                                                    Maharashtra.</span></td>
                                            </tr>
                                            <tr>
                                                <td style="text-align: left">
                                                    <asp:Image ID="Image6" runat="server" Height="50px" ImageUrl="~/images/contact/icons8-new-post-26.png" Width="50px" />
                                                </td>
                                                <td style="text-align: left">homeservice@gmail.com</td>
                                            </tr>
                                            <tr>
                                                <td style="text-align: left">
                                                    <asp:Image ID="Image5" runat="server" Height="50px" ImageUrl="~/images/icon2.png" Width="50px" />
                                                </td>
                                                <td style="text-align: left">8446340100</td>
                                            </tr>
                                            <tr>
                                                <td>&nbsp;</td>
                                                <td>&nbsp;</td>
                                            </tr>
                                            <tr>
                                                <td colspan="2" style="text-align: left">
                                                    <asp:Image ID="Image7" runat="server" ImageUrl="~/images/contact/icons8-facebook-48.png" />
                                                    &nbsp;&nbsp;
                                                    <asp:Image ID="Image8" runat="server" ImageUrl="~/images/contact/icons8-instagram-48.png" />
                                                    &nbsp;
                                                    <asp:Image ID="Image9" runat="server" ImageUrl="~/images/contact/icons8-twitter-48.png" />
                                                    &nbsp;
                                                    <asp:Image ID="Image10" runat="server" ImageUrl="~/images/contact/icons8-whatsapp-48.png" />
                                                </td>
                                            </tr>
                                            <tr>
                                                <td>&nbsp;</td>
                                                <td>&nbsp;</td>
                                            </tr>
                                        </table>
                                        <br />
                                        <br />
                                        &nbsp; &nbsp; &nbsp; &nbsp; </td>
                                    <td class="style16" valign="top">&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;
                                        <table align="center" cellspacing="10" class="">
        <tr>
            <td class="auto-style16" colspan="3">Do You Have An ENQUIRY?</td>
        </tr>
        <tr>
            <td>Name</td>
            <td>
                <asp:TextBox ID="txtname" runat="server" Height="35px" Width="300px"></asp:TextBox>
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>Email Id</td>
            <td>
                <asp:TextBox ID="txtemailid" runat="server" Height="35px" Width="300px"></asp:TextBox>
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>City</td>
            <td>
                <asp:TextBox ID="drpcity" runat="server"></asp:TextBox>
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>Subject</td>
            <td>
                <asp:TextBox ID="txtsubject" runat="server" Height="35px" Width="300px"></asp:TextBox>
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>Enquiry Message</td>
            <td>
                <asp:TextBox ID="txtmessage" runat="server" Height="137px" Width="300px" TextMode="MultiLine"></asp:TextBox>
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style14" colspan="3">
                <asp:Button ID="btnsubmit" class="btn btn-outline-primary" runat="server" Height="35px" OnClick="btnsubmit_Click1" Text="Submit" Width="150px" BackColor="Black" BorderStyle="None" Font-Bold="True" ForeColor="White" />
&nbsp;
                <asp:Button ID="btncancel" class="btn btn-outline-primary" runat="server" Height="35px" OnClick="btncancel_Click" Text="Cancel" Width="150px" BackColor="Black" BorderStyle="None" Font-Bold="True" ForeColor="White" />
            </td>
        </tr>
    </table>
                                    </td>
                                </tr>
                            </table>
                        </td>
                        <td>
                            <br />
                            <br />
                        </td>
                    </tr>
                </table>
            </td>
        </tr>
    </table>
    <br />
</asp:Content>

