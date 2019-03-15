<%@ Page Title="" Language="C#" MasterPageFile="~/AfterLogin.master" AutoEventWireup="true" CodeFile="addPart.aspx.cs" Inherits="addPart" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style3 {
        }
        .auto-style4 {
            width: 754px;
            height: 68px;
        }
        .auto-style5 {
            height: 68px;
            width: 1185px;
        }
        .auto-style6 {
            width: 1185px;
        }
        .auto-style7 {
            width: 754px;
        }
        .auto-style8 {
            width: 112px;
            height: 39px;
        }
    </style>
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
   
    <table class="auto-style1" style="height: 455px; text-align: center; vertical-align: middle; width: 48%;">
        <tr>
            <td class="auto-style7">
                <asp:Label ID="lblName" runat="server" BackColor="White" Font-Bold="True" Font-Names="Arial Black" Font-Size="Large" ForeColor="Black" Text="Name of the Party"></asp:Label>
            </td>
            <td class="auto-style6" style="vertical-align: baseline; text-align: justify;">
                <asp:TextBox ID="txtName" runat="server" BackColor="#FFCC99" Font-Bold="True" Font-Size="Small" Height="26px" Width="207px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style4">
                <asp:Label ID="lblAdress" runat="server" BackColor="White" Font-Bold="True" Font-Names="Arial Black" Font-Size="Large" ForeColor="Black" Text="Address"></asp:Label>
            </td>
            <td class="auto-style5" style="vertical-align: baseline; text-align: justify;">
                <asp:TextBox ID="txtAddress" runat="server" BackColor="#FFCC99" Font-Bold="True" Font-Size="Small" Height="91px" Width="207px" TextMode="MultiLine"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style7">
                <asp:Label ID="lbltin" runat="server" BackColor="White" Font-Bold="True" Font-Names="Arial Black" Font-Size="Large" ForeColor="Black" Text="TIN No."></asp:Label>
            </td>
            <td class="auto-style6" style="vertical-align: baseline; text-align: justify;">
                <asp:TextBox ID="txtTin" runat="server" BackColor="#FFCC99" Font-Bold="True" Font-Size="Small" Height="26px" Width="207px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style7">
                <asp:Label ID="lblPhone" runat="server" BackColor="White" Font-Bold="True" Font-Names="Arial Black" Font-Size="Large" ForeColor="Black" Text="Phone No."></asp:Label>
            </td>
            <td class="auto-style6" style="vertical-align: baseline; text-align: justify;">
                <asp:TextBox ID="txtPhone" runat="server" BackColor="#FFCC99" Font-Bold="True" Font-Size="Small" Height="26px" Width="207px" TextMode="Phone"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style7">
                <asp:Label ID="lblEmail" runat="server" BackColor="White" Font-Bold="True" Font-Names="Arial Black" Font-Size="Large" ForeColor="Black" Text="Email ID"></asp:Label>
            </td>
            <td class="auto-style6" style="vertical-align: baseline; text-align: justify;">
                <asp:TextBox ID="txtEmail" runat="server" BackColor="#FFCC99" Font-Bold="True" Font-Size="Small" Height="26px" Width="207px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style7">
                <asp:Label ID="lblInitalBal" runat="server" BackColor="White" Font-Bold="True" Font-Names="Arial Black" Font-Size="Large" ForeColor="Black" Text="Inital Balance"></asp:Label>
            </td>
            <td class="auto-style6" style="vertical-align: baseline; text-align: justify;">
                <asp:TextBox ID="txtinital" runat="server" BackColor="#FFCC99" Font-Bold="True" Font-Size="Small" Height="26px" Width="207px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style7">
                <asp:Label ID="lblType" runat="server" BackColor="White" Font-Bold="True" Font-Names="Arial Black" Font-Size="Large" ForeColor="Black" Text="Type"></asp:Label>
            </td>
            <td class="auto-style6" style="vertical-align: baseline; text-align: justify;">
                <asp:DropDownList ID="ddltype" runat="server" Height="28px" Width="213px" BackColor="#FFCC99" Font-Bold="True" Font-Size="Small">
                    <asp:ListItem>Select</asp:ListItem>
                    <asp:ListItem>Supplier</asp:ListItem>
                    <asp:ListItem>Customer</asp:ListItem>
                </asp:DropDownList>
            </td>
        </tr>
        <tr>
            <td class="auto-style8" colspan="2">
                <asp:Button ID="btnSave" runat="server" BackColor="#CC0099" Font-Bold="True" Font-Overline="False" Font-Size="Small" ForeColor="White" OnClick="btnSave_Click" Text="Save" Width="127px" />
                <asp:Label ID="lblCid" runat="server" Visible="False"></asp:Label>
            </td>
        </tr>
        <tr>
            <td class="auto-style7">
                <asp:Label ID="lblId" runat="server" BackColor="White" Font-Bold="True" Font-Names="Arial Black" Font-Size="Large" ForeColor="Black" Text="ID "></asp:Label>
            </td>
            <td class="auto-style6">
                <asp:Label ID="lblIdgen" runat="server" BackColor="White" Font-Bold="True" Font-Names="Arial Black" Font-Size="Large" ForeColor="Black"></asp:Label>
            </td>
        </tr>
    </table>
</asp:Content>

