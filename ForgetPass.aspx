<%@ Page Title="" Language="C#" MasterPageFile="~/home.master" AutoEventWireup="true" CodeFile="ForgetPass.aspx.cs" Inherits="ForgetPass" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">

        .auto-style4 {
            width: 34%;
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
                <asp:Label ID="lblUID" runat="server" Text="Enter your User ID"></asp:Label>
            </td>
            <td class="auto-style6">
                <asp:TextBox ID="txtUserId" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style5">
                <asp:Label ID="LblPass" runat="server" Text="Enter last Password you remember"></asp:Label>
            </td>
            <td class="auto-style6">
                <asp:TextBox ID="txtPassword" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style5">
                <asp:Label ID="lblMobile" runat="server" Text="Enter Your Registered Mobile"></asp:Label>
            </td>
            <td class="auto-style6">
                <asp:TextBox ID="txtMobile" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style5">
                <asp:Button ID="btnReset" runat="server" OnClick="btnReset_Click" Text="Check" />
            </td>
            <td class="auto-style6">
                <asp:Label ID="lblmessage" runat="server"></asp:Label>
            </td>
        </tr>
        <tr>
            <td class="auto-style5">
                <asp:Label ID="lblNewPass" runat="server" Text="Enter new Password" Visible="False"></asp:Label>
            </td>
            <td class="auto-style6">
                <asp:TextBox ID="txtNewPass" runat="server" Visible="False"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style5">
                <asp:Label ID="lblRePass" runat="server" Text="Reenter New Password " Visible="False"></asp:Label>
            </td>
            <td class="auto-style6">
                <asp:TextBox ID="txtRePass" runat="server" Visible="False"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style5">
                <asp:Button ID="btnchange" runat="server" OnClick="btnchange_Click" Text="Save" />
            </td>
            <td class="auto-style6">
                &nbsp;</td>
        </tr>
    </table>
        </center>
</asp:Content>

