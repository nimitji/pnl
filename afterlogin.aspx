<%@ Page Title="" Language="C#" MasterPageFile="~/AfterLogin.master" AutoEventWireup="true" CodeFile="afterlogin.aspx.cs" Inherits="afterlogin" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style2 {
            width: 521px;
        }
        .auto-style5 {
            height: 163px;
            width: 1214px;
        }
        .auto-style6 {
            width: 1546px;
            height: 275px;
        }
       
    
    .auto-style9 {
        height: 67px;
    }
    .auto-style10 {
        width: 689px;
        height: 111px;
    }
        .auto-style11 {
            height: 183px;
            width: 1488px;
        }
        .auto-style12 {
            width: 1488px;
        }
    </style>
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
        


    <table class="auto-style8">
    <tr>
        <td class="auto-style11" style="text-align: center; vertical-align: middle">
            <asp:Image ID="Image1" runat="server" ImageUrl="~/images/Graphic1bl.jpg" />
        </td>
    </tr>
    <tr>
        <td class="auto-style12">Welcome 
                <asp:Label ID="lblCid" runat="server" Font-Bold="True" Font-Size="Medium"></asp:Label>
                to P&#39;n&#39;L Accounting Website<br />
                it is a powerful web based application that can manage your daily accounts with ease of access and 24X7 availablity.<br />
                there are diffrent section where you can work.<br />
                <br />
                happy accounting </td>
    </tr>
</table>
        


</asp:Content>


