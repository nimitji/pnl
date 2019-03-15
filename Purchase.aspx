<%@ Page Title="" Language="C#" MasterPageFile="~/AfterLogin.master" AutoEventWireup="true" CodeFile="Purchase.aspx.cs" Inherits="Purchase" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style9 {
            width: 100%;
        }
        .auto-style11 {
            height: 31px;
        }
        .auto-style12 {
            width: 181px;
        }
        .auto-style13 {
            height: 31px;
        }
        .auto-style14 {
            width: 593px;
        }
        .auto-style15 {
        }
        
        .auto-style16 {
            width: 27px;
        }
        
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">


    <table class="auto-style9">
        <tr>
            <td class="auto-style11" colspan="2">
                <asp:Label ID="Label2" runat="server" Text="New Stock"></asp:Label>
            </td>
            <td class="auto-style13" colspan="3">
                <asp:Label ID="Label3" runat="server" Text="Existing Stock"></asp:Label>
            </td>
        </tr>
        <tr>
            <td class="auto-style12">
                <asp:Label ID="Label5" runat="server" Text="Stock ID"></asp:Label>
            </td>
            <td class="auto-style14">
                <asp:TextBox ID="txtSid" runat="server"></asp:TextBox>
            </td>
            <td class="auto-style15">
                <asp:Label ID="Label4" runat="server" Text="Enter Stock ID"></asp:Label>
            </td>
            <td class="auto-style16">
                <asp:TextBox ID="txtsFid" runat="server" Width="139px"></asp:TextBox>
            </td>
            <td>
                <asp:Button ID="Button2" runat="server" OnClick="Button2_Click" Text="BtnFInd" />
            </td>
        </tr>
        <tr>
            <td class="auto-style12">
                <asp:Label ID="Label6" runat="server" Text="Name "></asp:Label>
            </td>
            <td class="auto-style14">
                <asp:TextBox ID="txtname" runat="server"></asp:TextBox>
            </td>
            <td class="auto-style15" colspan="3">
                <asp:GridView ID="gvstock" runat="server" Height="85px" Width="686px">
                </asp:GridView>
            </td>
        </tr>
        <tr>
            <td class="auto-style12">
                <asp:Label ID="Label7" runat="server" Text="Brand"></asp:Label>
            </td>
            <td class="auto-style14">
                <asp:TextBox ID="txtbrand" runat="server"></asp:TextBox>
            </td>
            <td class="auto-style15">
                <asp:Label ID="Label14" runat="server" Text="Quantity"></asp:Label>
            </td>
            <td colspan="2">
                <asp:TextBox ID="TextBox11" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style12">
                <asp:Label ID="Label8" runat="server" Text="Quantity"></asp:Label>
            </td>
            <td class="auto-style14">
                <asp:TextBox ID="txtQty" runat="server"></asp:TextBox>
            </td>
            <td class="auto-style15">
                <asp:Button ID="Button5" runat="server" Text="Button" />
            </td>
            <td colspan="2">
                <asp:Button ID="Button7" runat="server" Text="Button" />
            </td>
        </tr>
        <tr>
            <td class="auto-style12">
                <asp:Label ID="Label9" runat="server" Text="Cost Price"></asp:Label>
            </td>
            <td class="auto-style14">
                <asp:TextBox ID="txtCp" runat="server"></asp:TextBox>
            </td>
            <td class="auto-style15">&nbsp;</td>
            <td colspan="2">&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style12">
                <asp:Label ID="Label10" runat="server" Text="Selling Price"></asp:Label>
            </td>
            <td class="auto-style14">
                <asp:TextBox ID="txtSp" runat="server"></asp:TextBox>
            </td>
            <td class="auto-style15">&nbsp;</td>
            <td colspan="2">&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style12">
                <asp:Label ID="Label11" runat="server" Text="Supplier ID"></asp:Label>
            </td>
            <td class="auto-style14">
                <asp:TextBox ID="txtSup" runat="server"></asp:TextBox>
            </td>
            <td class="auto-style15">&nbsp;</td>
            <td colspan="2">&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style12">
                <asp:Label ID="Label12" runat="server" Text="Date of Purchase "></asp:Label>
            </td>
            <td class="auto-style14">
                <asp:TextBox ID="txtdop" runat="server"></asp:TextBox>
            </td>
            <td class="auto-style15">&nbsp;</td>
            <td colspan="2">&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style12">
                &nbsp;</td>
            <td class="auto-style14">
                &nbsp;</td>
            <td class="auto-style15">&nbsp;</td>
            <td colspan="2">&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style12">
                <asp:Button ID="btnsave" runat="server" OnClick="Button3_Click" Text="Save" />
            </td>
            <td class="auto-style14">
                <asp:Button ID="Button6" runat="server" Text="Button" />
            </td>
            <td class="auto-style15">&nbsp;</td>
            <td colspan="2">&nbsp;</td>
        </tr>
    </table>


</asp:Content>

