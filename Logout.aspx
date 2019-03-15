<%@ Page Title="" Language="C#" MasterPageFile="~/home.master" AutoEventWireup="true" CodeFile="Logout.aspx.cs" Inherits="Logout" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style4 {
            width: 100%;
            height: 182px;
        }
        .auto-style5 {
            height: 102px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <center style="height: 306px">
        <table class="auto-style4">
            <tr>
                <td class="auto-style5"><asp:Label ID="Label2" runat="server" Font-Bold="True" Font-Size="XX-Large" ForeColor="#3399FF" Text="You have Successfully Logged Out "></asp:Label></td>
            </tr>
            <tr>
                <td>
                    <asp:Image ID="Image1" runat="server" Height="146px" ImageUrl="~/images/Graphic1bl.jpg" Width="163px" />
                </td>
            </tr>
        </table>
    </center>
</asp:Content>

