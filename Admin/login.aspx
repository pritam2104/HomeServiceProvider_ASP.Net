<%@ Page Language="C#" AutoEventWireup="true" CodeFile="login.aspx.cs" Inherits="Admin_login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .style1
        {
            width: 100%;
            height: 100%;
            border: 1px solid #000000;
        }
        .style2
        {
            width: 645px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:Panel ID="Panel1" runat="server" BackImageUrl="~/Images/backgrund.jpg" Height="755px">
                <table align="center" border="0" class="style1" frame="box" style="background-image: url('http://localhost:52983/../Images/backgrund.jpg')">
                    <tr>
                        <td style="font-weight: 700; color: #FFFFFF; font-size: large; font-family: Arial, Helvetica, sans-serif; text-align: center;" valign="top">&nbsp;&nbsp;&nbsp; &nbsp;</td>
                        <td style="font-weight: 700; color: #FFFFFF; font-size: large; font-family: Arial, Helvetica, sans-serif; text-align: center;" valign="top">
                    <br />
                    <br />
                    <br />
                            &nbsp;&nbsp;&nbsp;&nbsp;<table cellpadding="5" style="border: thin solid #C0C0C0; border-radius:10px; width: 34%;">
                                <tr>
                                    <td class="style2">
                                        <asp:Image ID="Image1" runat="server" Height="118px" ImageUrl="~/Images/loginicon.png" />
                                <br />
                                        Admin Login<br />
                            </td>
                                </tr>
                                <tr>
                                    <td align="center" class="style2">&nbsp;</td>
                                </tr>
                                <tr>
                                    <td align="center" class="style2">Username&nbsp; -&nbsp;&nbsp;<asp:TextBox ID="txtuser" runat="server" BorderStyle="None" Height="30px" Width="200px"></asp:TextBox>
                                    </td>
                                </tr>
                                <tr>
                                    <td align="center" class="style2">Password&nbsp; -&nbsp;&nbsp;&nbsp;<asp:TextBox ID="txtpass" runat="server" BorderStyle="None" Height="30px" TextMode="Password" Width="200px"></asp:TextBox>
                                    </td>
                                </tr>
                                <tr>
                                    <td align="center" class="style2">
                                        <asp:Button ID="Button1" runat="server" BorderStyle="None" Height="30px" onclick="Button1_Click1" style="color: #FFFFFF; font-weight: 700; background-color: #003366" Text="LOG IN" Width="150px" />
                                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:Button ID="Button2" runat="server" BackColor="#003366" BorderStyle="None" Height="30px" OnClick="Button2_Click" style="color: #FFFFFF; font-weight: 700" Text="CANCAL" Width="150px" />
                                    </td>
                                </tr>
                            </table>
                        </td>
                    </tr>
                </table>
            </asp:Panel>
        </div>
    </form>
</body>
</html>
