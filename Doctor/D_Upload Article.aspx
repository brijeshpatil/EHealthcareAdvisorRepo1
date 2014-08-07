<%@ page title="" language="C#" masterpagefile="~/Doctor/DoctorMaster.master" autoeventwireup="true" inherits="Doctor_D_Upload_Article, App_Web_g3fevbmj" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style1
        {
            height: 36px;
        }
        .style2
        {
            height: 27px;
        }
        .style3
        {
            height: 35px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
&nbsp;
    <asp:Label ID="Label2" runat="server" 
        style="font-family: 'Times New Roman', Times, serif; font-size: small; font-style: italic; color: #006666" 
        Text="Welcome"></asp:Label>
&nbsp;&nbsp;<asp:Label ID="Label1" runat="server" Text="Label" 
        style="font-family: 'Times New Roman', Times, serif; font-size: small; font-style: italic; color: #CC0000"></asp:Label>
<table>
<tr>
<td colspan="2" style="text-align: center">
    <asp:Label ID="LblHdr" runat="server" Text="Upload your Research and get Contributed!" 
        ForeColor="Gray" 
        
        style="font-family: 'Book Antiqua'; font-size: large; font-style: italic; font-weight: 700;"></asp:Label>
</td>
</tr>
<tr>
<td class="style1">
    <asp:Label ID="LblRsrch" runat="server" Text="Research On:" 
        style="font-family: 'Times New Roman', Times, serif; font-size: small; font-style: italic; color: #006666"></asp:Label>
</td>
<td class="style1">
    <asp:TextBox ID="TxtRsrch" runat="server"></asp:TextBox>
</td> 
</tr>
<tr>
<td class="style3">
    <asp:Label ID="LblRsrchRefrnce" runat="server" Text="Reference of Research:" 
        style="font-family: 'Times New Roman', Times, serif; font-size: small; font-style: italic; color: #CC0000"></asp:Label>
</td>
<td class="style3">
    <asp:TextBox ID="TxtBxRsrchRefrnce" runat="server"></asp:TextBox>
</td>
</tr>
<tr>
<td class="style3">
    <asp:Label ID="LblRDate" runat="server" Text="Date(When Research Published):" 
        style="font-family: 'Times New Roman', Times, serif; font-size: small; font-style: italic; color: #006666"></asp:Label>
</td>
<td class="style3">
    <asp:TextBox ID="TxtBxDate" runat="server"></asp:TextBox>
</td>
</tr>
<tr>
<td class="style3">
    <asp:Label ID="LblFlUpld" runat="server" Text="Upload Your Article : " 
        
        style="font-family: 'Times New Roman', Times, serif; font-size: small; font-style: italic; color: #CC0000"></asp:Label>
</td>
<td class="style3">
    <asp:FileUpload ID="FileUpload1" runat="server" />
</td>
</tr>
<tr>
<td colspan ="2" align="center" class="style2">
    &nbsp;&nbsp;&nbsp;&nbsp;
    <asp:ImageButton ID="Ibsubmit" runat="server" Height="35px" 
        ImageUrl="~/Images/s.jpg" Width="90px" OnClientClick=" return validation()" 
            onclick="Ibsubmit_Click"/>&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:ImageButton ID="Ibcancel" runat="server" Height="55px" Width ="50px" 
        ImageUrl="~/Images/images (2).jpg"/>
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:ImageButton ID="Ibreset" 
        runat="server"  Height="35px" Width ="90px" 
        ImageUrl="~/Images/images(6).jpg"  />
</td>
</tr>
</table>
</asp:Content>
