<%@ Page Title="" Language="C#" MasterPageFile="~/User/User.master" AutoEventWireup="true" CodeFile="Member.aspx.cs" Inherits="User_Member" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
                
         
    .auto-style36 {
        height: 28px;
    }
    .auto-style37 {
        font-size: x-large;
    }
    .auto-style38 {
        font-size: x-large;
        text-align: center;
    }
                
         
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
        <table align="center" cellspacing="1" class="auto-style15">
            <tr>
                <td class="auto-style38">FILL&nbsp; MEMBER&nbsp; APPLICATION<hr />
                </td>
            </tr>
            <tr>
                <td>
                    <table align="center" cellspacing="1" class="auto-style16">
                        <tr>
                            <td class="auto-style36"><strong>&nbsp; <span class="auto-style41">Personal Detail :</span></strong></td>
                            <td class="auto-style37"></td>
                        </tr>
                        <tr>
                            <td class="auto-style18">&nbsp; ServiceMan Id</td>
                            <td>Full Name</td>
                        </tr>
                        <tr>
                            <td class="auto-style34">
                                &nbsp;&nbsp;
                                <asp:TextBox ID="txtsmanid" runat="server" Enabled="False" Height="35px" Width="200px"></asp:TextBox>
                            </td>
                            <td>
                                <asp:TextBox ID="txtfullname" runat="server" Height="35px" Width="457px"></asp:TextBox>
                            </td>
                        </tr>
                        <tr>
                            <td class="auto-style20">&nbsp; Email Id</td>
                            <td class="auto-style19">Date Of Birth</td>
                        </tr>
                        <tr>
                            <td class="auto-style44">
                                &nbsp;&nbsp;
                                <asp:TextBox ID="txtemailid" runat="server" Height="35px" Width="457px"></asp:TextBox>
                            </td>
                            <td class="auto-style43">
                                <asp:TextBox ID="txtdob" runat="server" Height="35px" TextMode="Date" Width="200px"></asp:TextBox>
                            </td>
                        </tr>
                        <tr>
                            <td class="auto-style39">&nbsp; Gender</td>
                            <td>Mobile No</td>
                        </tr>
                        <tr>
                            <td class="auto-style44">
                                &nbsp;&nbsp;
                                <asp:RadioButton ID="rdmale" runat="server" GroupName="a" Height="30px" Text="Male" Width="150px" />
                                <br />
                                &nbsp;
                                <asp:RadioButton ID="rdfemale" runat="server" GroupName="a" Height="30px" Text="Female" Width="150px" />
                            </td>
                            <td class="auto-style43">
                                <asp:TextBox ID="txtmobileno" runat="server" Height="35px" Width="200px"></asp:TextBox>
                            </td>
                        </tr>
                        <tr>
                            <td class="auto-style44">&nbsp;</td>
                            <td class="auto-style43">&nbsp;</td>
                        </tr>
                        <tr>
                            <td class="auto-style36"><strong>&nbsp;<span class="auto-style41"> Address :</span></strong></td>
                            <td class="auto-style36"></td>
                        </tr>
                        <tr>
                            <td class="auto-style28">&nbsp; Address</td>
                            <td>&nbsp;</td>
                        </tr>
                        <tr>
                            <td class="auto-style44">
                                &nbsp;&nbsp;
                                <asp:TextBox ID="txtaddress" runat="server" Height="35px" Width="457px"></asp:TextBox>
                            </td>
                            <td class="auto-style43">
                                &nbsp;</td>
                        </tr>
                        <tr>
                            <td>&nbsp; Pincode</td>
                            <td class="auto-style33">&nbsp;</td>
                        </tr>
                        <tr>
                            <td class="auto-style44">
                                &nbsp;&nbsp;
                                <asp:TextBox ID="txtpincode" runat="server" Height="35px" Width="200px"></asp:TextBox>
                            </td>
                            <td class="auto-style43">
                                &nbsp;</td>
                        </tr>
                        <tr>
                            <td class="auto-style22"><strong>&nbsp; <span class="auto-style41">Other :</span></strong></td>
                            <td class="auto-style23"></td>
                        </tr>
                        <tr>
                            <td class="auto-style44">&nbsp; Which service you provide</td>
                            <td class="auto-style43">
                                <asp:TextBox ID="txtWSYP" runat="server" Height="35px" Width="400px"></asp:TextBox>
                            </td>
                        </tr>
                        <tr>
                            <td class="auto-style44">&nbsp; Experience of work and where</td>
                            <td class="auto-style43">
                                <asp:TextBox ID="txtEOWAW" runat="server" Height="35px" Width="400px"></asp:TextBox>
                            </td>
                        </tr>
                        <tr>
                            <td class="auto-style44">&nbsp; Extra Activity</td>
                            <td class="auto-style43">
                                <asp:TextBox ID="txtextraactivity" runat="server" Height="35px" Width="400px"></asp:TextBox>
                            </td>
                        </tr>
                        <tr>
                            <td class="auto-style44">&nbsp;</td>
                            <td class="auto-style43">&nbsp;</td>
                        </tr>
                        <tr>
                            <td class="auto-style45"><strong>&nbsp; <span class="auto-style41">Qualification :</span></strong></td>
                            <td class="auto-style43">&nbsp;</td>
                        </tr>
                        <tr>
                            <td class="auto-style44">&nbsp;</td>
                            <td class="auto-style43">&nbsp;</td>
                        </tr>
                        <tr>
                            <td class="auto-style44">&nbsp; Qualification</td>
                            <td class="auto-style43">
                                <asp:TextBox ID="txtqualification" runat="server" Height="35px" Width="400px"></asp:TextBox>
                            </td>
                        </tr>
                        <tr>
                            <td class="auto-style44">&nbsp;</td>
                            <td class="auto-style43">&nbsp;</td>
                        </tr>
                        <tr>
                            <td class="auto-style42"><strong>&nbsp; Photo :</strong></td>
                            <td class="auto-style43">&nbsp;</td>
                        </tr>
                        <tr>
                            <td class="auto-style44" rowspan="2">
                                &nbsp;&nbsp;
                                <asp:Image ID="Image6" runat="server" Height="205px" Width="288px" />
                                <asp:FileUpload ID="FileUpload1" runat="server" Height="35px" Width="300px" />
                                <br />
                                <asp:Button ID="btnupload" class="btn btn-outline-primary" runat="server" Height="35px" OnClick="btnupload_Click1" Text="Upload" Width="150px" BackColor="Black" BorderStyle="None" Font-Bold="True" ForeColor="White" />
                                <br />
                                &nbsp;
                                <br />
                            </td>
                            <td class="auto-style43">&nbsp;</td>
                        </tr>
                        <tr>
                            <td class="auto-style43">&nbsp;</td>
                        </tr>
                        <tr>
                            <td class="auto-style21">
                                &nbsp;
                                <asp:Button ID="btnsubmit" class="btn btn-outline-primary" runat="server" Text="Submit" Height="35px" OnClick="btnsubmit_Click1" Width="150px" BackColor="Black" BorderStyle="None" Font-Bold="True" ForeColor="White" />
                                </td>
                            <td class="auto-style43">&nbsp;</td>
                        </tr>
                        <tr>
                            <td class="auto-style44">&nbsp;</td>
                            <td class="auto-style43">&nbsp;</td>
                        </tr>
                    </table>
                </td>
            </tr>
        </table>
</asp:Content>

