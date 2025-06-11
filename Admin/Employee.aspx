<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/admin.master" AutoEventWireup="true" CodeFile="Employee.aspx.cs" Inherits="Admin_Employee" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style24 {
            width: 80%;
            border: 1px solid #000000;
        }
        .auto-style25 {
            font-size: x-large;
            text-align: center;
        }
        .auto-style26 {
            font-size: medium;
            height: 33px;
        }
        .auto-style27 {
            height: 39px;
        }
        .auto-style28 {
            height: 35px;
        }
        .auto-style29 {
            height: 55px;
        }
        .auto-style30 {
            height: 38px;
        }
        .auto-style31 {
            height: 60px;
        }
        .auto-style32 {
            height: 37px;
        }
        .auto-style33 {
            height: 36px;
            color: #0000FF;
        }
        .auto-style34 {
            height: 34px;
        }
        .auto-style35 {
            height: 29px;
        }
        .auto-style36 {
            height: 32px;
        }
        .auto-style37 {
            color: #0000FF;
        }
        .auto-style38 {
            color: #FF0000;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table align="center" cellspacing="1" class="auto-style3">
        <tr>
            <td class="auto-style25">FILL&nbsp; MEMBER&nbsp; APPLICATION</td>
        </tr>
        <tr>
            <td>
                <table align="center" cellspacing="1" class="auto-style24">
                    <tr>
                        <td colspan="2" class="auto-style27">&nbsp;<span class="auto-style37">&nbsp; </span><span class="auto-style38"> <strong>Personal Details:</strong></span></td>
                    </tr>
                    <tr>
                        <td class="auto-style28">&nbsp;&nbsp; ServiceMan Id</td>
                        <td class="auto-style28">Full Name&nbsp;</td>
                    </tr>
                    <tr>
                        <td class="auto-style29">&nbsp;&nbsp;
                            <asp:TextBox ID="txtsmanid" runat="server" Height="35px" Width="200px" Enabled="False"></asp:TextBox>
                        </td>
                        <td class="auto-style29">
                            <asp:TextBox ID="txtfullname" runat="server" Height="35px" Width="457px"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style30">&nbsp; EmailId&nbsp;</td>
                        <td class="auto-style30">Date Of Birth</td>
                    </tr>
                    <tr>
                        <td class="auto-style31">&nbsp;
                            <asp:TextBox ID="txtemailid" runat="server" Height="35px" Width="457px"></asp:TextBox>
                        </td>
                        <td class="auto-style31">
                            <asp:TextBox ID="txtdob" runat="server" Height="35px" TextMode="Date" Width="200px"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style32">&nbsp; Gender&nbsp;</td>
                        <td class="auto-style32">Mobile No</td>
                    </tr>
                    <tr>
                        <td>
                            &nbsp;
                            <asp:RadioButton ID="rdmale" runat="server" GroupName="a" Height="30px" Text="Male" Width="150px" />
                            <br />
                            &nbsp;<asp:RadioButton ID="rdfemale" runat="server" GroupName="a" Height="30px" Text="Female" Width="150px" />
                        </td>
                        <td>
                            <asp:TextBox ID="txtmobno" runat="server" Height="35px" Width="200px"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style32"></td>
                        <td class="auto-style32"></td>
                    </tr>
                    <tr>
                        <td colspan="2" class="auto-style33"><strong>&nbsp; <span class="auto-style38">Address:</span></strong></td>
                    </tr>
                    <tr>
                        <td class="auto-style34">&nbsp; Address&nbsp;</td>
                        <td class="auto-style34"></td>
                    </tr>
                    <tr>
                        <td>&nbsp;
                            <asp:TextBox ID="txtaddress" runat="server" Height="35px" Width="457px"></asp:TextBox>
                        </td>
                        <td>&nbsp;</td>
                    </tr>
                    <tr>
                        <td class="auto-style34">&nbsp; PinCode</td>
                        <td class="auto-style34"></td>
                    </tr>
                    <tr>
                        <td>&nbsp;
                            <asp:TextBox ID="txtpincode" runat="server" Height="35px" Width="200px"></asp:TextBox>
                        </td>
                        <td>&nbsp;</td>
                    </tr>
                    <tr>
                        <td class="auto-style35"></td>
                        <td class="auto-style35"></td>
                    </tr>
                    <tr>
                        <td class="auto-style28"><strong><span class="auto-style38">&nbsp; Other:</span></strong></td>
                        <td class="auto-style28"></td>
                    </tr>
                    <tr>
                        <td>&nbsp; Which service you provide</td>
                        <td>
                            <asp:TextBox ID="txtwhichserviceyou" runat="server" Height="35px" Width="457px"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td>&nbsp; Experience of work and where</td>
                        <td>
                            <asp:TextBox ID="txtexperiencework" runat="server" Height="35px" Width="457px"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td>&nbsp; Extra Activity</td>
                        <td>
                            <asp:TextBox ID="txtextra" runat="server" Height="35px" Width="457px"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td>&nbsp;</td>
                        <td>&nbsp;</td>
                    </tr>
                    <tr>
                        <td class="auto-style26" colspan="2"><strong>&nbsp; <span class="auto-style38">Qualification:</span></strong></td>
                    </tr>
                    <tr>
                        <td>&nbsp;</td>
                        <td>&nbsp;</td>
                    </tr>
                    <tr>
                        <td>&nbsp; Qualification</td>
                        <td>
                            <asp:TextBox ID="txtquali" runat="server" Height="35px" Width="457px"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td>&nbsp;</td>
                        <td>&nbsp;</td>
                    </tr>
                    <tr>
                        <td colspan="2" class="auto-style36"><strong>&nbsp; <span class="auto-style38">Photo:</span></strong></td>
                    </tr>
                    <tr>
                        <td>&nbsp;</td>
                        <td>&nbsp;</td>
                    </tr>
                    <tr>
                        <td rowspan="2">&nbsp;&nbsp;
                            <asp:Image ID="Image6" runat="server" Height="205px" Width="200px" />
                            <asp:FileUpload ID="FileUpload1" runat="server" Height="30px" Width="300px" />
                            <br />
&nbsp;
                            <asp:Button ID="btnupload"  class="btn btn-outline-primary" runat="server" Height="35px" OnClick="btnupload_Click" Text="Upload" Width="150px" />
                        </td>
                        <td>&nbsp;</td>
                    </tr>
                    <tr>
                        <td>&nbsp;</td>
                    </tr>
                    <tr>
                        <td>&nbsp;
                            <asp:Button ID="btnsubmit" class="btn btn-outline-primary" runat="server" Height="35px" OnClick="btnsubmit_Click" Text="Submit" Width="150px" />
                        </td>
                        <td>&nbsp;</td>
                    </tr>
                    <tr>
                        <td>&nbsp;</td>
                        <td>&nbsp;</td>
                    </tr>
                </table>
            </td>
        </tr>
    </table>
</asp:Content>

