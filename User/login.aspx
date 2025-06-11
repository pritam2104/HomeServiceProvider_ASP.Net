<%@ Page Title="" Language="C#" MasterPageFile="~/User/User.master" AutoEventWireup="true" CodeFile="login.aspx.cs" Inherits="User_login" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
     
        .style4
        {
            width: 100%;
            height: 100%;
         
        }
        .style16
        {
            width: 500px;
        }
        .style5
        {
            font-size: large;
            font-style: italic;
            color: #003366;
        }
        
        .style15
        {
            color: #333333;
            font-size: large;
            font-family: Arial, Helvetica, sans-serif;
        }
                
        .style13
        {
            font-family: Arial, Helvetica, sans-serif;
            font-size: x-large;
            color: #FF0000;
            font-weight: bold;
        }
        .auto-style36 {
            color: #CC3300;
        }
     
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <br />
    <table class="style4">
        <tr>
            <td align="center" valign="top">
                <br />
                <br />
                <table align="center" cellpadding="10" cellspacing="0" class="style16">
                    <tr>
                        <td align="center" colspan="2" style="color: #003366; font-size: x-large">L O G&nbsp;&nbsp; I N<hr noshade="noshade" style="color: #FF0000; background-color: #FF0000;" width="350" />
                        </td>
                    </tr>
                    <tr>
                        <td>Username</td>
                        <td>
                            <asp:TextBox ID="txtuser" runat="server" Height="30px" Width="250px"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td>Password</td>
                        <td>
                            <asp:TextBox ID="txtpass" runat="server" Height="30px" TextMode="Password" Width="250px"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td colspan="2">
                            <asp:Button ID="Button1" runat="server" BackColor="#003366" BorderStyle="None" ForeColor="White" Height="30px" onclick="Button1_Click1" style="font-weight: 700; font-family: Verdana;border-radius:10px" Text="LOG IN" Width="200px" />
                            &nbsp;&nbsp;
                            <asp:Button ID="Button2" runat="server" BackColor="#003366" BorderStyle="None" ForeColor="White" Height="30px" OnClick="Button2_Click" style="font-weight: 700; font-family: Verdana;border-radius:10px" Text="CANCAL" Width="200px" />
                        </td>
                    </tr>
                    <tr>
                        <td colspan="2">Have You An Account? <strong>
                            <asp:HyperLink ID="HyperLink1" runat="server" CssClass="auto-style36" NavigateUrl="~/User/Registration.aspx">Creat new account</asp:HyperLink>
                            </strong></td>
                    </tr>
                </table>
                <span class="style5">
                <br />
                <br />
                <br />
                <br />
                <br />
                <br />
                <br />
                </span>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </td>
            <td align="center">
                <table cellpadding="7" style=" border-radius:10px" width="360">
                    <tr>
                        <td>
                            <asp:Image ID="Image4" runat="server" Height="176px" ImageUrl="~/Images/car cleaning 4.jpg" Width="350px" />
                        </td>
                    </tr>
                    <tr>
                        <td style="text-align: left"><span class="style15"><strong>Why Choose Home Services</strong></span><hr width="100%" />
                            <table cellpadding="4" cellspacing="0" class="style1">
                                <tr>
                                    <td>
                                        <asp:Image ID="Image9" runat="server" Height="50px" ImageUrl="~/Image/Money Back Guaranty.jpg" Width="70px" />
                                    </td>
                                    <td style="font-family: Arial, Helvetica, sans-serif; color: #000000"><span class="style13"><strong style="font-size: large">Money Back Guaranty</strong></span><br />
                                        Reclaim your money if not satisfied with the quality of job done</td>
                                </tr>
                                <tr>
                                    <td>
                                        <asp:Image ID="Image10" runat="server" Height="50px" ImageUrl="~/Image/2 Hour TAT.jpg" Width="70px" />
                                    </td>
                                    <td style="font-family: Arial, Helvetica, sans-serif; color: #000000"><span class="style13"><strong style="font-size: large">2 Hour TAT</strong></span><br />
                                        Service will be available at your doorstep whithin 2 hours</td>
                                </tr>
                                <tr>
                                    <td>
                                        <asp:Image ID="Image11" runat="server" Height="50px" ImageUrl="~/Image/Warranty for All Services.jpg" Width="70px" />
                                    </td>
                                    <td style="font-family: Arial, Helvetica, sans-serif; color: #000000"><span class="style13"><strong style="font-size: large">Warranty for All Services</strong></span><br />
                                        Reclaim your money if not satisfied with the quality of job done</td>
                                </tr>
                            </table>
                        </td>
                    </tr>
                </table>
              
            </td>
        </tr>
    </table>
    <br />
</asp:Content>

