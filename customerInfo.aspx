<%@ Page Title="" Language="C#" MasterPageFile="~/AfterLogin.master" AutoEventWireup="true" CodeFile="customerInfo.aspx.cs" Inherits="customerInfo" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
   <asp:GridView ID="GVSupplier" runat="server" AutoGenerateColumns="False" Height="171px"  Width="791px" CellPadding="4" ForeColor="#333333" GridLines="None">
        <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
        <Columns>
            <asp:TemplateField HeaderText="Name" ItemStyle-ForeColor="red">
                <ItemTemplate>
                    <asp:Label ID="Label1" runat="server" Text='<%#Bind("Pname") %>'></asp:Label>
                </ItemTemplate>
               
                 <EditItemTemplate>
                    <asp:TextBox ID="TextBox1" runat="server" Text='<%#Bind("Pname") %>'></asp:TextBox>
                </EditItemTemplate>

<ItemStyle ForeColor="Red"></ItemStyle>
                       </asp:TemplateField>
            
            <asp:TemplateField HeaderText="Address">
                <ItemTemplate>
                    <asp:Label ID="Label2" runat="server" Text='<%#Bind("PAddress") %>'></asp:Label>
                </ItemTemplate>
                <EditItemTemplate>
                    <asp:TextBox ID="TextBox2" runat="server" Text='<%#Bind("PAddress") %>'></asp:TextBox>
                </EditItemTemplate>
            </asp:TemplateField>
           
             <asp:TemplateField HeaderText="Phone No.">
                <ItemTemplate>
                    <asp:Label ID="Label3" runat="server" Text='<%#Bind("PPhone") %>'></asp:Label>
                </ItemTemplate>
                <EditItemTemplate>
                    <asp:TextBox ID="TextBox3" runat="server" Text='<%#Bind("PPhone") %>'></asp:TextBox>
                </EditItemTemplate>
            </asp:TemplateField>
           
             <asp:TemplateField HeaderText="Email Id">
                <ItemTemplate>
                    <asp:Label ID="Label4" runat="server" Text='<%#Bind("PEmailId") %>'></asp:Label>
                </ItemTemplate>
                <EditItemTemplate>
                    <asp:TextBox ID="TextBox4" runat="server" Text='<%#Bind("PEmailId") %>'></asp:TextBox>
                </EditItemTemplate>
            </asp:TemplateField>
            
            <asp:TemplateField HeaderText="TIN">
                <ItemTemplate>
                    <asp:Label ID="Label5" runat="server" Text='<%#Bind("Ptin") %>'></asp:Label>
                </ItemTemplate>
                <EditItemTemplate>
                    <asp:TextBox ID="TextBox5" runat="server" Text='<%#Bind("Ptin") %>'></asp:TextBox>
                </EditItemTemplate>
            </asp:TemplateField>
          
              <asp:TemplateField HeaderText="Action">
                <ItemTemplate>
                    <asp:Button ID="Button1" runat="server" CommandName="Edit" Text="Change Info." />
                </ItemTemplate>
                <EditItemTemplate>
                    <asp:Button ID="Button2" runat="server" Text="Save" />
                    <asp:Button ID="Button3" runat="server" CommandName="Cancel" Text="Cancel" />
                </EditItemTemplate>
            </asp:TemplateField>
        </Columns>
        <EditRowStyle BackColor="#999999" />
        <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
        <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
        <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
        <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
        <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
        <SortedAscendingCellStyle BackColor="#E9E7E2" />
        <SortedAscendingHeaderStyle BackColor="#506C8C" />
        <SortedDescendingCellStyle BackColor="#FFFDF8" />
        <SortedDescendingHeaderStyle BackColor="#6F8DAE" />
    </asp:GridView>
    &nbsp;<asp:Label ID="lblCid" runat="server" Visible="False"></asp:Label>
            </asp:Content>

