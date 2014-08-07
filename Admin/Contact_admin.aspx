<%@ page title="" language="C#" masterpagefile="~/Admin/AdminMaster.master" autoeventwireup="true" inherits="Admin_Contact_admin, App_Web_3my4bwvi" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<asp:Label ID="Label1" runat="server" Text="Welcome" 
        style="color: #006666; font-family: 'Times New Roman', Times, serif; font-size: small; font-style: italic"></asp:Label>
    &nbsp;&nbsp;&nbsp;
    <asp:Label ID="Label3" runat="server" Text="Label" 
        style="font-family: 'Times New Roman', Times, serif; font-size: small; font-style: italic; color: #CC0000"></asp:Label>
<asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
    BackColor="White" BorderColor="#336666" BorderStyle="Double" BorderWidth="3px" 
    CellPadding="4" DataKeyNames="C_id" DataSourceID="SqlDataSource1" 
    GridLines="Horizontal" Height="68px" Width="917px">
    <Columns>
        <asp:BoundField DataField="C_id" HeaderText="ID" InsertVisible="False" 
            ReadOnly="True" SortExpression="C_id" />
        <asp:BoundField DataField="C_name" HeaderText="Name" SortExpression="C_name" />
        <asp:BoundField DataField="C_email" HeaderText="E-mail" 
            SortExpression="C_email" />
        <asp:BoundField DataField="C_mbl" HeaderText="Mobile" SortExpression="C_mbl" />
        <asp:BoundField DataField="C_msg" HeaderText="Message" SortExpression="C_msg" />
    </Columns>
    <FooterStyle BackColor="White" ForeColor="#333333" />
    <HeaderStyle BackColor="#336666" Font-Bold="True" ForeColor="White" />
    <PagerStyle BackColor="#336666" ForeColor="White" HorizontalAlign="Center" />
    <RowStyle BackColor="White" ForeColor="#333333" />
    <SelectedRowStyle BackColor="#339966" Font-Bold="True" ForeColor="White" />
    <SortedAscendingCellStyle BackColor="#F7F7F7" />
    <SortedAscendingHeaderStyle BackColor="#487575" />
    <SortedDescendingCellStyle BackColor="#E5E5E5" />
    <SortedDescendingHeaderStyle BackColor="#275353" />
</asp:GridView>
<asp:SqlDataSource ID="SqlDataSource1" runat="server" 
    ConnectionString="<%$ ConnectionStrings:E-HealthcareAdvisorConnectionString %>" 
    SelectCommand="SELECT * FROM [Contact_Us]"></asp:SqlDataSource>
</asp:Content>

