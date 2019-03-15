<%@ Page Title="" Language="C#" MasterPageFile="~/home.master" AutoEventWireup="true" CodeFile="Login.aspx.cs" Inherits="Login" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style4 {
            width: 19%;
            height: 223px;
        }
        .auto-style5 {
            width: 1248px;
        }
        .auto-style6 {
            width: 807px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <center>
    <table class="auto-style4">
        <tr>
            <td class="auto-style5">
                <asp:Label ID="lblUID" runat="server" Text="User ID"></asp:Label>
            </td>
            <td class="auto-style6">
                <asp:TextBox ID="txtUserId" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style5">
                <asp:Label ID="LblPass" runat="server" Text="Password"></asp:Label>
            </td>
            <td class="auto-style6">
                <asp:TextBox ID="txtPassword" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style5">
                <asp:Label ID="lblMobile" runat="server" Text="Mobile"></asp:Label>
            </td>
            <td class="auto-style6">
                <asp:TextBox ID="txtMobile" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style5">
                <asp:Button ID="BtnLogin" runat="server" Height="33px" OnClick="BtnLogin_Click" Text="Login" Width="106px" />
                <asp:Label ID="lblmessage" runat="server"></asp:Label>
            </td>
            <td class="auto-style6">
                <asp:LinkButton ID="lnlForgotPass" runat="server" OnClick="lnlForgotPass_Click">Forgot Password</asp:LinkButton>
            </td>
        </tr>
    </table>
        </center>
</asp:Content>

