<%@ Page Title="" Language="C#" MasterPageFile="~/AfterLogin.master" AutoEventWireup="true" CodeFile="supplierInfo.aspx.cs" Inherits="supplierInfo" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:GridView ID="GVSupplier" runat="server" AutoGenerateColumns="False" Height="171px" OnSelectedIndexChanged="GVCustomer_SelectedIndexChanged" Width="791px" OnRowCancelingEdit="GVSupplier_RowCancelingEdit" OnRowEditing="GVSupplier_RowEditing" style="margin-right: 0px">
        <Columns>
            <asp:TemplateField HeaderText="Name" ItemStyle-ForeColor="red">
                <ItemTemplate>
                    <asp:Label ID="Label1" runat="server" Text='<%#Bind("Pname") %>'></asp:Label>
                </ItemTemplate>
               
                 <EditItemTemplate>
                    <asp:TextBox ID="TextBox1" runat="server" Text='<%#Bind("Pname") %>'></asp:TextBox>
                </EditItemTemplate>
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
    </asp:GridView>
</asp:Content>

