<%@ Page Title="" Language="C#" MasterPageFile="~/AfterLogin.master" AutoEventWireup="true" CodeFile="stockReport.aspx.cs" Inherits="stockReport" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">


    <asp:GridView ID="GVSupplier" runat="server" AutoGenerateColumns="False" Height="171px" OnRowCancelingEdit="GVSupplier_RowCancelingEdit" OnRowEditing="GVSupplier_RowEditing" OnSelectedIndexChanged="GVCustomer_SelectedIndexChanged" style="margin-right: 0px" Width="791px" CellPadding="4" ForeColor="#333333" GridLines="None" OnRowCommand="GVSupplier_RowCommand" OnRowCreated="GVSupplier_RowCreated">
        <AlternatingRowStyle BackColor="White" />
        <Columns>
            <asp:TemplateField HeaderText="Stock ID" ItemStyle-ForeColor="red">
                <ItemTemplate>
                    <asp:Label ID="Label1" runat="server" Text='<%#Bind("Sid") %>'></asp:Label>
                </ItemTemplate>
                <EditItemTemplate>
                    <asp:TextBox ID="TextBox1" runat="server" Text='<%#Bind("Sid") %>'></asp:TextBox>
                </EditItemTemplate>

<ItemStyle ForeColor="Red"></ItemStyle>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="Name of Item">
                <ItemTemplate>
                    <asp:Label ID="Label2" runat="server" Text='<%#Bind("Sname") %>'></asp:Label>
                </ItemTemplate>
                <EditItemTemplate>
                    <asp:TextBox ID="TextBox2" runat="server" Text='<%#Bind("Sname") %>'></asp:TextBox>
                </EditItemTemplate>
            </asp:TemplateField>
             <asp:TemplateField HeaderText="Date of Purchase">
                <ItemTemplate>
                    <asp:Label ID="Label10" runat="server" Text='<%#Bind("dateofPurchase") %>'></asp:Label>
                </ItemTemplate>
                <EditItemTemplate>
                    <asp:TextBox ID="TextBox10" runat="server" Text='<%#Bind("dateofPurchase") %>'></asp:TextBox>
                </EditItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="Brand">
                <ItemTemplate>
                    <asp:Label ID="Label3" runat="server" Text='<%#Bind("Make") %>'></asp:Label>
                </ItemTemplate>
                <EditItemTemplate>
                    <asp:TextBox ID="TextBox3" runat="server" Text='<%#Bind("Make") %>'></asp:TextBox>
                </EditItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="Quantity in Stock">
                <ItemTemplate>
                    <asp:Label ID="Label4" runat="server" Text='<%#Bind("Qty") %>'></asp:Label>
                </ItemTemplate>
                <EditItemTemplate>
                    <asp:TextBox ID="TextBox4" runat="server" Text='<%#Bind("Qty") %>'></asp:TextBox>
                </EditItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="Cost Price">
                <ItemTemplate>
                    <asp:Label ID="Label5" runat="server" Text='<%#Bind("CPrice") %>'></asp:Label>
                </ItemTemplate>
                <EditItemTemplate>
                    <asp:TextBox ID="TextBox5" runat="server" Text='<%#Bind("CPrice") %>'></asp:TextBox>
                </EditItemTemplate>
            </asp:TemplateField>

            <asp:TemplateField HeaderText="Minimum Selling Price">
                <ItemTemplate>
                    <asp:Label ID="Label6" runat="server" Text='<%#Bind("SPrice") %>'></asp:Label>
                </ItemTemplate>
                <EditItemTemplate>
            
                            <asp:TextBox ID="TextBox6" runat="server" Text='<%#Bind("SPrice") %>'></asp:TextBox>
                </EditItemTemplate>
            </asp:TemplateField>
           
             <asp:TemplateField HeaderText="Supplier">
                <ItemTemplate>
                    <asp:Label ID="Label7" runat="server" Text='<%#Bind("supplierID") %>'></asp:Label>
                </ItemTemplate>
                <EditItemTemplate>
            
                            <asp:TextBox ID="TextBox7" runat="server" Text='<%#Bind("supplierID") %>'></asp:TextBox>
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
        <EditRowStyle BackColor="#7C6F57" />
        <FooterStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
        <HeaderStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
        <PagerStyle BackColor="#666666" ForeColor="White" HorizontalAlign="Center" />
        <RowStyle BackColor="#E3EAEB" />
        <SelectedRowStyle BackColor="#C5BBAF" Font-Bold="True" ForeColor="#333333" />
        <SortedAscendingCellStyle BackColor="#F8FAFA" />
        <SortedAscendingHeaderStyle BackColor="#246B61" />
        <SortedDescendingCellStyle BackColor="#D4DFE1" />
        <SortedDescendingHeaderStyle BackColor="#15524A" />
    </asp:GridView>


</asp:Content>

