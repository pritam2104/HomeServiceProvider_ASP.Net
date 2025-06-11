<%@ Page Title="" Language="C#" MasterPageFile="~/User/User.master" AutoEventWireup="true" CodeFile="home.aspx.cs" Inherits="User_home" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style17 {
            margin-top: 0;
        }
        .style13
        {
            width: 90%;
            height: 100%;
        }
        .style14
        {
            height: 21px;
            text-align: center;
        }
        .style16
        {
            text-align: center;
            font-weight: bold;
            font-family: Arial, Helvetica, sans-serif;
            font-size: medium;
        }
        .style17
        {
            text-align: center;
            font-size: medium;
        }
        .style15
        {
            text-align: center;
        }
        .style18
        {
            font-size: medium;
        }
        .auto-style36 {
            height: 21px;
            text-align: center;
            font-size: large;
            color: #CC3300;
        }
    </style>
    </asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <p>
        <div id="wowslider-container1">
	<div class="ws_images"><ul>
		<li class="auto-style17"><img src="../data1/images/web_banner_desktop01.jpg" alt="" title="" id="wows1_0"/></li>
		<li><a href="http://wowslider.net"><img src="../data1/images/web_banner_desktop02.jpg" alt="jquery slider" title="" id="wows1_1"/></a></li>
		<li><img src="../data1/images/web_banner_desktop03.jpg" alt="" title="" id="wows1_2"/></li>
	</ul></div>
	<div class="ws_bullets"><div>
		<a href="#" title=""><span><img src="../data1/tooltips/web_banner_desktop01.jpg" alt=""/>1</span></a>
		<a href="#" title=""><span><img src="../data1/tooltips/web_banner_desktop02.jpg" alt=""/>2</span></a>
		<a href="#" title=""><span><img src="../data1/tooltips/web_banner_desktop03.jpg" alt=""/>3</span></a>
	</div></div><div class="ws_script" style="position:absolute;left:-99%"><a href="http://wowslider.com">slider</a> by WOWSlider.com v8.7</div>
	<div class="ws_shadow"></div>
	</div>	
	<script type="text/javascript" src="../engine1/wowslider.js"></script>
	<script type="text/javascript" src="../engine1/script.js"></script>
	
    <table align="center" cellpadding="2" cellspacing="5" class="style13" style="border: thin solid #C0C0C0; border-radius:10px">
        <tr>
            <td class="auto-style36" colspan="4"><strong>H O W&nbsp;&nbsp;&nbsp; W E&nbsp;&nbsp;&nbsp;&nbsp; W O R K </strong></td>
            <td class="style14">&nbsp;</td>
            <td class="style14">&nbsp;</td>
        </tr>
        <tr>
            <td class="style14">
                <asp:Image ID="Image6" runat="server" Height="50px" ImageUrl="~/images/homeimages/Easy_Fix_Icon_01.png" />
            </td>
            <td class="style14">
                <asp:Image ID="Image7" runat="server" Height="50px" ImageUrl="~/images/homeimages/Easy_Fix_Icon_02.png" />
            </td>
            <td class="style14">
                <asp:Image ID="Image9" runat="server" Height="50px" ImageUrl="~/images/homeimages/Easy_Fix_Icon_03.png" />
            </td>
            <td class="style14">
                <asp:Image ID="Image8" runat="server" Height="50px" ImageUrl="~/images/homeimages/Easy_Fix_Icon_04.png" />
            </td>
        </tr>
        <tr>
            <td class="style16">Say you need a Serviceman for your home</td>
            <td class="style16">List of verified Servicemen </td>
            <td class="style16">Best situated Serviceman assigned </td>
            <td class="style16">Resolves all your home repair issues</td>
        </tr>
        <tr>
            <td class="style17">You book a call on our website or customer care number</td>
            <td class="style17">These are trained, verified and trustworthy guys</td>
            <td class="style15"><span class="style18">To address your requirement meet the 2 hours TAT</span></td>
            <td class="style17">The call is closed after your complete satisfaction</td>
        </tr>
    </table>
	
    </p>
</asp:Content>

