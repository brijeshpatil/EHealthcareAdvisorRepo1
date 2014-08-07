<%@ page title="" language="C#" masterpagefile="~/Doctor/DoctorMaster.master" autoeventwireup="true" inherits="Doctor_D_Add_Recipee, App_Web_g3fevbmj" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
&nbsp;
    <asp:Label ID="Label2" runat="server" 
        style="font-family: 'Times New Roman', Times, serif; font-size: small; font-style: italic; color: #006666" 
        Text="Welcome"></asp:Label>
&nbsp;<asp:Label ID="Label1" runat="server" Text="Label" 
        style="font-family: 'Times New Roman', Times, serif; font-size: small; font-style: italic; color: #CC0000"></asp:Label>
    <br />
    <br />
    <br />
    <table>
<tr>
<th colspan ="2" style="font-family: 'Agency FB'; font-size: small" class="style8" 
        align="center">
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:Label ID="Lblheadr" runat="server" 
        Text="Add Recipee Here ....." ForeColor="Gray" 
        
        style="font-size: large; font-family: 'Book Antiqua'; font-style: italic;"></asp:Label>
    <br />
</th>
</tr>
<tr>
<td class="style4">
<asp:Label ID="Lblnm" runat="server" Text="Image Of Recipee :" ForeColor="#CC0000" 
        
        
        style="font-size: small; font-style: italic; font-family: 'Times New Roman', Times, serif;"></asp:Label>
</td>
<td class="style4">
    <asp:FileUpload ID="FileUpload1" runat="server" />
</td>
</tr>
<tr>
<td class="style4">
    <asp:Label ID="Lbleml" runat="server" Text="Title of Description :" ForeColor="#006666" 
        
        
        style="font-size: small; font-style: italic; font-family: 'Times New Roman', Times, serif;"></asp:Label>
</td>
<td class="style4">
    <asp:TextBox ID="Txtmsg0" runat="server" TextMode="MultiLine" Height="65px" 
        Width="235px"></asp:TextBox>
</td>
</tr>
<tr>
<td class="style3">
    <asp:Label ID="Lblru" runat="server" Text="Detailed Description :" ForeColor="#CC0000" 
        
        
        style="font-size: small; font-style: italic; font-family: 'Times New Roman', Times, serif;"></asp:Label>
</td>
<td class="style3">
    <asp:TextBox ID="Txtmsg" runat="server" TextMode="MultiLine" Height="65px" 
        Width="235px"></asp:TextBox>
</td>
</tr>
<tr>
<td class="style3" valign="top">
    &nbsp;</td>
<td class="style3">
    &nbsp;</td>
</tr>
<tr>
<td colspan ="2"  class="style9" align="justify">
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:ImageButton 
        ID="ImageButton1" runat="server" Height="60px" 
        ImageAlign="Middle" ImageUrl="~/Images/s9.jpg" Width="65px" 
        onclick="ImageButton1_Click" OnClientClick=" return validation()" />
</td>
</tr>
</table>
</asp:Content>

