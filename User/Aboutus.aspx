<%@ Page Title="" Language="C#" MasterPageFile="~/User/User.master" AutoEventWireup="true" CodeFile="Aboutus.aspx.cs" Inherits="User_About_us" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        
        .style12
        {
            font-family: Arial, Helvetica, sans-serif;
            font-size: x-large;
            color: #003366;
            font-weight: 700;
        }
        .style14
        {
            width: 100%;
            height: 100%;
            font-size: xx-large;
            font-family: Aharoni;
        }
        .style15
        {
            width: 91px;
        }
                
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table align="center" cellspacing="1" class="auto-style1">
        <tr>
            <td class="auto-style18" >
                <table align="center" cellpadding="0" cellspacing="0" width="90%">
                    <tr>
                        <td style="text-align: center"><span class="style12">A B O U T&nbsp;&nbsp;&nbsp; U S</span>
                            <hr noshade="noshade" style="color: #FF0000; background-color: #FF0000; width: 1200px;" width="250" />
                            <span class="style14">Provide Good , Bettter , Betest Services</span> </td>
                    </tr>
                    <tr>
                        <td>
                            <br />
                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Make work eassy in the world and in more comfort zone via weaving new ideas and implementing it at ground level. With an idea of &quot;Smart Way Easy Life&quot; Home service is a a perfect home solution providing Company with our website that is www.homeService.com you can book required service like electrician, plumber, carpenter, cleaner, painter, AC repair, washing machine repair and so many other services which serve directly in your home with affordable price. In this way &quot;Extreme.com &quot; makes Your Life Easy And Full Of Comfort. Customer trust and safety is our profit. So we have strict criteria for customer and supportive staff who are professionals. We are available 24 * 7 to provide service any time any where, We know the value of custmoer and their relation with us so we used us so we used to maintain our contact through our cutomer for regular services. Our technicians are highly skilled well equipped.
                            <br />
                        </td>
                    </tr>
                    <tr>
                        <td style="text-align: center"><span class="style12">O U R&nbsp;&nbsp; S E R V I C E M E N </span>
                            <hr noshade="noshade" style="color: #FF0000; background-color: #FF0000; height: -12px; width: 1200px;" />
                            <br />
                            The important part of our organization is the our servicemen. Extreme has taken this agenda not only to tain and develop them into<br />
                            &nbsp;professional nut also contibute in their career groth.
                            <table cellpadding="5" cellspacing="10" class="style14">
                                <tr>
                                    <td class="style15">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;</td>
                                    <td align="center" rowspan="1">
                                        <asp:DataList ID="DataList1" runat="server" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" CellPadding="3" datasourceid="SqlDataSource1" GridLines="Both"  RepeatColumns="8" RepeatDirection="Horizontal" style="text-align: center; font-size: medium;" Width="805px">
                                            <FooterStyle BackColor="White" ForeColor="#000066" />
                                            <ItemStyle ForeColor="#000066" />
                                            <SelectedItemStyle BackColor="#669999" Font-Bold="True" ForeColor="White" />
                                            <HeaderStyle BackColor="#006699" Font-Bold="True" ForeColor="White" />
                                            <ItemTemplate>
                                                &nbsp;<br />
                                                <asp:Image ID="Image4" runat="server" Height="150px" ImageUrl='<%# Eval("photo") %>' Width="200px" />
                                <br />
                                <br />
                                                <asp:Label ID="fulllnameLabel" runat="server" style="font-size: large; color: #000066" Text='<%# Eval("fullname") %>' />
                                <br />
                                <br />
                                                <asp:Label ID="wserviceprovideLabel" runat="server" style="font-size: medium; color: #CC0000" Text='<%# Eval("which_service_you_provide") %>' />
                                                &nbsp;<br />
                                            </ItemTemplate>
                                        </asp:DataList>
                                        <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT [fulllname], [photo], [wserviceprovide] FROM [member]"></asp:SqlDataSource>
                                    </td>
                                    <td>&nbsp;</td>
                                </tr>
                            </table>
                        </td>
                    </tr>
                </table>
            </td>
        </tr>
        <tr>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style3">
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [Serviceman]"></asp:SqlDataSource>
            </td>
        </tr>
    </table>
</asp:Content>

