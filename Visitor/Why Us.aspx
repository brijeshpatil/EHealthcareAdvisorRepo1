<%@ page title="" language="C#" masterpagefile="~/Visitor/VisitorMaster.master" autoeventwireup="true" inherits="Visitor_Why_Us, App_Web_3qwjjj55" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
<style type="text/css">
        .style1
        {
            height: 25px;
            color: #FFFFFF;
        }
        .style2
        {
            height: 45px;
        }
        .style3
        {
            height: 30px;
        }
        .style4
        {
            height: 50px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<table>
<tr>
<td class="style2">
    <asp:Label ID="Label1" runat="server" 
        Text="Why should I sign up for Cyber Wealth for Health" 
        
        style="font-size: large; font-style: italic; font-weight: 700; font-family: 'Book Antiqua'" 
        ForeColor="Gray"></asp:Label>
</td>
</tr>
<tr>
<td class="style1">
    <asp:Label ID="Label2" runat="server" Text="Your Account will be:" 
        
        style="font-size: medium; font-style: italic; font-weight: 700; font-family: 'Book Antiqua';" 
        ForeColor="#CC0000"></asp:Label> 
</td>
</tr>
<tr>
<td class="style2" style="font-size: small">
    <asp:Label ID="Label3" runat="server" Text="Safe and secure: "
        style="font-style: italic; font-family: 'Times New Roman', Times, serif; font-size: medium;" 
        ForeColor="#006666"></asp:Label>
    <asp:Label ID="Label12" runat="server" 
        Text="Your privacy is important to us.You can trust that your personal information will kept private and not shared with anyone without your permission." 
        ForeColor="Gray" 
        style="font-family: 'Times New Roman', Times, serif; font-style: italic"></asp:Label>
         </td>
</tr>
<tr>
<td class="style2">
    <asp:Label ID="Label4" runat="server" Text="Free! Quick and easy to create: " 
        
        style="font-size: medium; font-style: italic; font-family: 'Times New Roman', Times, serif;" 
        ForeColor="#006666"></asp:Label>
    <asp:Label ID="Label13" runat="server" 
        Text="Creating your account is fast and simple and completely free! Best of all, you only need one login and password to access any area of the site." 
        ForeColor="Gray" 
        style="font-family: 'Times New Roman', Times, serif; font-style: italic; font-size: small"></asp:Label>
        
</td>
</tr>
<tr>
<td class="style1">
    <asp:Label ID="Label5" runat="server" Text="With your Account you can:" 
        
        style="font-size: medium; font-style: italic; font-weight: 700; font-family: 'Book Antiqua';" 
        ForeColor="#CC0000"></asp:Label>
</td>
</tr>
<tr>
<td class="style3">
    <asp:Label ID="Label6" runat="server" 
        Text="Question your symptoms without any appointment issues" 
        
        style="font-size: small; font-style: italic; font-family: 'Times New Roman', Times, serif;" 
        ForeColor="#006666"></asp:Label>
</td>
</tr>
<tr>
<td class="style3">
    <asp:Label ID="Label7" runat="server" 
        Text="Get reliable solution from Healthcare experts" 
        
        style="font-size: small; font-style: italic; font-family: 'Times New Roman', Times, serif;" 
        ForeColor="#006666"></asp:Label>
</td>
</tr>
<tr>
<td class="style3">
    <asp:Label ID="Label8" runat="server" Text="Track your way to weight loss" 
        
        style="font-size: small; font-style: italic; font-family: 'Times New Roman', Times, serif;" 
        ForeColor="#006666"></asp:Label>
</td>
</tr>
<tr>
<td class="style3">
    <asp:Label ID="Label9" runat="server" 
        Text="Get recommendation for medicines,chemists,hospitals & blood banks" 
        
        style="font-size: small; font-style: italic; font-family: 'Times New Roman', Times, serif;" 
        ForeColor="#006666"></asp:Label> 
</td>
</tr>
<tr>
<td class="style3">
    <asp:Label ID="Label10" runat="server" Text="Get vaccine reminders" 
        
        style="font-size: small; font-style: italic; font-family: 'Times New Roman', Times, serif;" 
        ForeColor="#006666"></asp:Label>
</td>
</tr>
<tr>
<td class="style3">
    <asp:Label ID="Label11" runat="server" 
        Text="Read articles from various experts" 
        
        style="font-size: small; font-style: italic; font-family: 'Times New Roman', Times, serif;" 
        ForeColor="#006666"></asp:Label> 
</td>
</tr>
<tr>
<td class="style4">
    <asp:ImageButton ID="ImageButton1" runat="server" 
        ImageUrl="~/Images/sdfvgbh.jpg" Height="50px" Width="105px" 
        onclick="ImageButton1_Click" />
</td>
</tr>
</table>
</asp:Content>

