<%@ Page Title="" Language="C#" MasterPageFile="~/AfterLogin.master" AutoEventWireup="true" CodeFile="Bank.aspx.cs" Inherits="Bank" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style4 {
            width: 126px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table class="auto-style1">
        <tr>
            <td>
                <table class="auto-style1">
                    <tr>
                        <td class="auto-style4">    <asp:DropDownList ID="DDLBank" runat="server">
        <asp:ListItem>Select Bank</asp:ListItem>
        <asp:ListItem>bank of india</asp:ListItem>
    </asp:DropDownList>
                        </td>
                        <td>
    <asp:Button ID="BtnGo" runat="server" OnClick="Button1_Click" Text="Go" style="margin-left: 0px" />
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style4">
                            <asp:DropDownList ID="DropDownList1" runat="server" OnSelectedIndexChanged="DropDownList1_SelectedIndexChanged">
                            </asp:DropDownList>
                        </td>
                        <td>
                            <asp:DetailsView ID="DetailsView1" runat="server" Height="50px" Width="125px">
                            </asp:DetailsView>
                        </td>
                    </tr>
                </table>
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
    </table>
</asp:Content>

