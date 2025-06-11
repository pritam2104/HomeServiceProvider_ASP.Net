<%@ Page Title="" Language="C#" MasterPageFile="~/User/User.master" AutoEventWireup="true" CodeFile="Registration.aspx.cs" Inherits="User_Registration" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        
        .style13
        {
            font-family: Arial, Helvetica, sans-serif;
            font-size: x-large;
            color: #FF0000;
            font-weight: bold;
        }
        .style15
        {
            color: #333333;
            font-size: large;
            font-family: Arial, Helvetica, sans-serif;
        }
        .style14
        {
            text-align: left;
        }
                
    .auto-style36 {
        font-size: x-large;
    }
                
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table align="center" cellpadding="5" cellspacing="5" width="80%">
        <tr>
            <td align="center" style="vertical-align:top;">    <table align="center" cellspacing="1" width="70%">
        <tr>
            <td colspan="4" class="style14"><span class="auto-style36">REGISTRATION FORM</span><strong><hr />
                </strong></td>
        </tr>
        <tr>
            <td class="style14">Registration Id</td>
            <td class="auto-style9">
                <asp:TextBox ID="txtregid" runat="server" Height="30px" Width="200px" Enabled="False"></asp:TextBox>
            </td>
            <td class="auto-style5">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtregid" ErrorMessage="Id is must be enter" ForeColor="Red" Height="20px" Width="150px"></asp:RequiredFieldValidator>
            </td>
            <td rowspan="9">
                <br />
                <br />
                <br />
            </td>
        </tr>
        <tr>
            <td class="style14">Name&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </td>
            <td class="auto-style9">
                <asp:TextBox ID="txtname" runat="server" Height="30px" Width="200px"></asp:TextBox>
            </td>
            <td class="auto-style5">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtname" ErrorMessage="Name is must be enter" ForeColor="Red" Height="20px" Width="200px"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="style14">city</td>
            <td class="auto-style9">
                <asp:TextBox ID="drpcity" runat="server"></asp:TextBox>
            </td>
            <td class="auto-style5">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style14">email</td>
            <td class="auto-style9">
                <asp:TextBox ID="txtemail" runat="server" Height="30px" Width="200px"></asp:TextBox>
            </td>
            <td class="auto-style5">
                <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="txtemail" ErrorMessage="Enter valid email address" ForeColor="Red" Height="20px" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" Width="250px"></asp:RegularExpressionValidator>
            </td>
        </tr>
        <tr>
            <td class="style14">username</td>
            <td class="auto-style9">
                <asp:TextBox ID="txtusername" runat="server" Height="30px" Width="200px"></asp:TextBox>
            </td>
            <td class="auto-style5">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="txtusername" ErrorMessage="Username must be enter" ForeColor="Red" Height="20px" Width="200px"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="style14">password</td>
            <td class="auto-style9">
                <asp:TextBox ID="txtpassword" runat="server" Height="30px" Width="200px"></asp:TextBox>
            </td>
            <td class="auto-style5">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style14">confirm password</td>
            <td class="auto-style9">
                <asp:TextBox ID="txtcnpassword" runat="server" Height="30px" Width="200px"></asp:TextBox>
            </td>
            <td class="auto-style5">
                <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToCompare="txtpassword" ControlToValidate="txtcnpassword" ErrorMessage="Password must be same" ForeColor="Red" Height="20px" Width="200px"></asp:CompareValidator>
            </td>
        </tr>
        <tr>
            <td class="style14">address</td>
            <td class="auto-style9">
                <asp:TextBox ID="txtaddress" runat="server" Height="30px" Width="200px"></asp:TextBox>
            </td>
            <td class="auto-style5">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="txtaddress" ErrorMessage="Address must be enter" ForeColor="Red" Height="20px" Width="200px"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="style14">contact no</td>
            <td class="auto-style9">
                <asp:TextBox ID="txtcontactno" runat="server" Height="30px" Width="200px"></asp:TextBox>
            </td>
            <td class="auto-style5">
                <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ControlToValidate="txtcontactno" ErrorMessage="Enter valid contact no" ForeColor="Red" Height="20px" ValidationExpression="[0-9]{10}" Width="200px"></asp:RegularExpressionValidator>
            </td>
        </tr>
        <tr>
            <td colspan="4" class="auto-style7">&nbsp;<br />
&nbsp;<asp:Button ID="btnsubmit" class="btn btn-outline-primary" runat="server" Text="SUBMIT" Height="35px" Width="150px" OnClick="btnsubmit_Click" BackColor="Black" BorderStyle="None" Font-Bold="False" Font-Italic="False" ForeColor="White" />
                &nbsp;&nbsp;&nbsp;&nbsp;
                &nbsp;<asp:Button ID="btncancel" class="btn btn-outline-primary" runat="server" Text="CANCEL" Height="35px" OnClick="Button2_Click" BackColor="Black" BorderStyle="None" Font-Bold="False" Font-Italic="False" ForeColor="White" Width="150px" />
                &nbsp;&nbsp;
            </td>
        </tr>
    </table>
            </td>
            <td align="center" valign="top">
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
    <br />
</asp:Content>

