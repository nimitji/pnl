<%@ Page Title="" Language="C#" MasterPageFile="~/AfterLogin.master" AutoEventWireup="true" CodeFile="sales.aspx.cs" Inherits="sales" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
      
        .auto-style9 {
            width: 114px;
        }
        .auto-style12 {
            height: 37px;
        }
        .auto-style19 {
            width: 435px;
        }
        .auto-style20 {
            width: 576px;
            margin-left: 200px;
        }
        .auto-style21 {
            height: 130px;
        }
        .auto-style26 {
            width: 435px;
            height: 55px;
        }
        .auto-style27 {
            height: 55px;
        }
    .auto-style28 {
        width: 172px;
    }
    .auto-style29 {
        width: 172px;
        height: 55px;
    }
    .auto-style31 {
        width: 48px;
    }
    .auto-style32 {
            width: 271px;
        }
        .auto-style33 {
            height: 38px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table class="auto-style8" style="height: 447px; width: 1494px">
        <tr>
            <td class="auto-style33" colspan="4">
                <asp:Label ID="lblCid" runat="server"></asp:Label>
                <center><asp:RadioButtonList ID="RadioButtonList1" runat="server" RepeatDirection="Horizontal" Width="171px" OnSelectedIndexChanged="RadioButtonList1_SelectedIndexChanged">
                    <asp:ListItem>Cash</asp:ListItem>
                    <asp:ListItem>Party</asp:ListItem>
                </asp:RadioButtonList>
            </center></td>
        </tr>
        <tr>
            <td class="auto-style20" rowspan="7">
                &nbsp;&nbsp; 
                <asp:GridView ID="GridView1" runat="server" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="3">
                    <FooterStyle BackColor="White" ForeColor="#000066" />
                    <HeaderStyle BackColor="#006699" Font-Bold="True" ForeColor="White" />
                    <PagerStyle BackColor="White" ForeColor="#000066" HorizontalAlign="Left" />
                    <RowStyle ForeColor="#000066" />
                    <SelectedRowStyle BackColor="#669999" Font-Bold="True" ForeColor="White" />
                    <SortedAscendingCellStyle BackColor="#F1F1F1" />
                    <SortedAscendingHeaderStyle BackColor="#007DBB" />
                    <SortedDescendingCellStyle BackColor="#CAC9C9" />
                    <SortedDescendingHeaderStyle BackColor="#00547E" />
                </asp:GridView>
            </td>
            <td class="auto-style28">
                <asp:Label ID="Label7" runat="server" Text="Party Id"></asp:Label>
            </td>
            <td class="auto-style31">
                <asp:TextBox ID="txtPid" runat="server" Height="16px" Width="113px"></asp:TextBox>
            </td>
            <td class="auto-style32">
                <asp:Button ID="btnFindParty" runat="server" Text="Find" OnClick="btnFindParty_Click" Width="66px" />
            </td>
        </tr>
        <tr>
            <td class="auto-style21" colspan="3">
                <asp:GridView ID="grdParty" runat="server" Height="47px" Width="269px" AutoGenerateColumns="False">
                <Columns>
                    <asp:TemplateField HeaderText="Party ID" ItemStyle-ForeColor="red">
                <ItemTemplate>
                    <asp:Label ID="Label1" runat="server" Text='<%#Bind("PId") %>'></asp:Label>
                </ItemTemplate>
                         </asp:TemplateField>
                </Columns>
                     
                     <Columns>
                    <asp:TemplateField HeaderText="Name" ItemStyle-ForeColor="red">
                <ItemTemplate>
                    <asp:Label ID="Labelpn" runat="server" Text='<%#Bind("Pname") %>'></asp:Label>
                </ItemTemplate>
                         </asp:TemplateField>
                </Columns>
                     <Columns>
                    <asp:TemplateField HeaderText="Phone" ItemStyle-ForeColor="red">
                <ItemTemplate>
                    <asp:Label ID="Label1" runat="server" Text='<%#Bind("PPhone") %>'></asp:Label>
                </ItemTemplate>
                         </asp:TemplateField>
                </Columns>
                     <Columns>
                    <asp:TemplateField HeaderText="Email" ItemStyle-ForeColor="red">
                <ItemTemplate>
                    <asp:Label ID="Label1" runat="server" Text='<%#Bind("PEmailId") %>'></asp:Label>
                </ItemTemplate>
                         </asp:TemplateField>
                </Columns>
                     <Columns>
                    <asp:TemplateField HeaderText="Type" ItemStyle-ForeColor="red">
                <ItemTemplate>
                    <asp:Label ID="Label1" runat="server" Text='<%#Bind("Ptype") %>'></asp:Label>
                </ItemTemplate>
                         </asp:TemplateField>
                </Columns>
                    <Columns>
                    <asp:TemplateField HeaderText="Address" ItemStyle-ForeColor="red">
                <ItemTemplate>
                    <asp:Label ID="Labeladd" runat="server" Text='<%#Bind("PAddress") %>'></asp:Label>
                </ItemTemplate>
                         </asp:TemplateField>
                </Columns>
                </asp:GridView>
            </td>
        </tr>
        <tr>
            <td class="auto-style28">
                <asp:Label ID="Label8" runat="server" Text="Stock ID"></asp:Label>
            </td>
            <td class="auto-style31">
                <asp:TextBox ID="txtSid" runat="server" Height="16px" Width="113px"></asp:TextBox>
            </td>
            <td class="auto-style32">
                <asp:Button ID="btnFindStock" runat="server" Text="Find" Width="66px" OnClick="btnFindStock_Click" style="height: 26px" />
            </td>
        </tr>
        <tr>
            <td class="auto-style12" colspan="3">
                <asp:GridView ID="grdStock" runat="server" Height="16px" Width="269px">
                </asp:GridView>
            </td>
        </tr>
        <tr>
            <td class="auto-style28">
                <asp:Label ID="Label9" runat="server" Text="Quantity"></asp:Label>
            </td>
            <td class="auto-style19" colspan="2">
                <asp:TextBox ID="txtQty" runat="server" OnTextChanged="txtQty_TextChanged"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style29">
                <asp:Label ID="Label10" runat="server" Text="Price"></asp:Label>
            </td>
            <td class="auto-style26" colspan="2">
                <asp:TextBox ID="txtPrice" runat="server" OnTextChanged="txtPrice_TextChanged"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style29">
                <asp:Label ID="Label11" runat="server" Text="Total Amount"></asp:Label>
            </td>
            <td class="auto-style26" colspan="2">
                <asp:TextBox ID="txtTotal" runat="server"></asp:TextBox>
                <asp:Button ID="btnAdd" runat="server" OnClick="btnAdd_Click" Text="Add" Width="88px" />
            </td>
        </tr>
        <tr>
            <td class="auto-style20">
                <asp:Button ID="btnSubmit" runat="server" Text="Submit" OnClick="btnSubmit_Click" />
            </td>
            <td class="auto-style27" colspan="3">
                <asp:Button ID="btnClear" runat="server" Text="Clear" />
            </td>
        </tr>
    </table>
</asp:Content>

