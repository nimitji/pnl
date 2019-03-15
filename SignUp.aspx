<%@ Page Title="" Language="C#" MasterPageFile="~/home.master" AutoEventWireup="true" CodeFile="SignUp.aspx.cs" Inherits="home" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    
    <style type="text/css">
        .auto-style3 {
            height: 528px;
            width: 1133px;
        }
    </style>
    
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table class="auto-style3">
                <tr>
                    <td class="auto-style4">
                        <asp:Label ID="lblCName" runat="server" Text="Name " ValidateRequestMode="Disabled"></asp:Label>
                    </td>
                    <td class="auto-style7">
                        <asp:TextBox ID="txtname" runat="server" Height="26px" Width="196px"></asp:TextBox>
                    </td>
                    <td class="auto-style6">
                        <asp:Label ID="lblCur" runat="server" Text="Currency"></asp:Label>
                    </td>
                    <td>
                        <asp:DropDownList ID="txtcurrecy" runat="server" Height="26px" Width="196px" TabIndex="10">
                            <asp:ListItem>Select  Currency</asp:ListItem>
                            <asp:ListItem>RUPEES</asp:ListItem>
                        </asp:DropDownList>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style4">
                        <asp:Label ID="lblAddress" runat="server" Text="Mailing Address"></asp:Label>
                    </td>
                    <td class="auto-style7">
                        <asp:TextBox ID="txtaddress" runat="server" Height="26px" Width="196px" TabIndex="1"></asp:TextBox>
                    </td>
                    <td class="auto-style6">
                        <asp:Label ID="lblYearStart" runat="server" Text="Financial Year Start From"></asp:Label>
                    </td>
                    <td>
                        <asp:TextBox ID="txtyear" runat="server" Height="26px" Width="196px" TabIndex="11"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style4" rowspan="2">
                        <asp:Label ID="lblCountry" runat="server" Text="Country"></asp:Label>
                    </td>
                    <td class="auto-style7" rowspan="2">
                        <asp:DropDownList ID="ddlcountry" runat="server" Height="26px" Width="196px" TabIndex="2">
                            <asp:ListItem>Select Country </asp:ListItem>
                            <asp:ListItem>India</asp:ListItem>
                            <asp:ListItem>USA</asp:ListItem>
                            <asp:ListItem>Bangladesh</asp:ListItem>
                            <asp:ListItem>Shrilanka</asp:ListItem>
                            <asp:ListItem>Nepal</asp:ListItem>
                        </asp:DropDownList>
                    </td>
                    <td class="auto-style6">
                        <asp:Label ID="lblPass" runat="server" Text="Password"></asp:Label>
                    </td>
                    <td>
                        <asp:TextBox ID="txtpass" runat="server" TextMode="Password" Height="26px" Width="196px" TabIndex="12"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style6">
                        <asp:Label ID="lblConfPass" runat="server" Text="Confirm Password"></asp:Label>
                    </td>
                    <td>
                        <asp:TextBox ID="txtConfpass" runat="server" TextMode="Password" Height="26px" Width="196px" TabIndex="13"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style4">
                        <asp:Label ID="lblState" runat="server" Text="State"></asp:Label>
                    </td>
                    <td class="auto-style7">
                        <asp:DropDownList ID="ddlstate" runat="server" Height="26px" Width="196px" TabIndex="3">
                            <asp:ListItem>Select  State </asp:ListItem>
                            <asp:ListItem>Delhi </asp:ListItem>
                        </asp:DropDownList>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style4">
                        <asp:Label ID="lblpin" runat="server" Text="Pincode"></asp:Label>
                    </td>
                    <td class="auto-style7">
                        <asp:TextBox ID="ddlpin" runat="server" Height="26px" Width="196px" TabIndex="4"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style4">
                        <asp:Label ID="lblPhone" runat="server" Text="Phone"></asp:Label>
                    </td>
                    <td class="auto-style7">
                        <asp:TextBox ID="txtphone" runat="server" Height="26px" Width="196px" TabIndex="5"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style4">
                        <asp:Label ID="lblMobile" runat="server" Text="Mobile"></asp:Label>
                    </td>
                    <td class="auto-style7">
                        <asp:TextBox ID="txtmobile" runat="server" Height="26px" Width="196px" TabIndex="6" ></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style4">
                        <asp:Label ID="lblFax" runat="server" Text="Fax"></asp:Label>
                    </td>
                    <td class="auto-style7">
                        <asp:TextBox ID="txtfax" runat="server" Height="26px" Width="196px" TabIndex="7"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style4">
                        <asp:Label ID="lblEmail" runat="server" Text="Email Address"></asp:Label>
                    </td>
                    <td class="auto-style7">
                        <asp:TextBox ID="txtemail" runat="server" Height="26px" Width="196px" TabIndex="8"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style4">
                        <asp:Label ID="lblWebsite" runat="server" Text="Website"></asp:Label>
                    </td>
                    <td class="auto-style7">
                        <asp:TextBox ID="txtweb" runat="server" Height="26px" Width="196px" TabIndex="9"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style4">
                        <asp:Button ID="btnRegister" runat="server" Height="28px" Text="Register" Width="119px" OnClick="btnRegister_Click" CssClass="auto-style3" />
                    </td>
                    <td class="auto-style7">
                        <asp:Label ID="lblmessage" runat="server"></asp:Label>
                    </td>
                </tr>
            </table>
</asp:Content>

