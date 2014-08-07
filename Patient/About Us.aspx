<%@ page title="" language="C#" masterpagefile="~/Patient/PatientSide.master" autoeventwireup="true" inherits="Patient_About_Us, App_Web_qwoa1mme" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style2
        {
            height: 115px;
            width: 629px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
 <asp:Label ID="Label6" runat="server" 
        style="color: #006666; font-family: 'Times New Roman', Times, serif; font-size: medium; font-style: italic" 
        Text="Welcome"></asp:Label>
&nbsp; <asp:Label ID="Label7" runat="server" Text="Label" style="color: #CC0000; font-family: 'Times New Roman', Times, serif; font-size: small; font-style: italic;" 
        ForeColor="#CC0000"></asp:Label>
<table style="width: 635px">
<tr>
<td align="center">
    <asp:Label ID="Label5" runat="server" Text="About Cyber Wealth for Health" 
        style="font-family: 'Times New Roman', Times, serif; font-size: large; font-style: italic; color: #808080; text-decoration: underline"></asp:Label>
</td>
</tr>
<tr>
<td class="style2" align="justify">
    <asp:Label ID="Label1" runat="server" 
        Text="Cyber Wealth for Health provides health and medical information to help individuals and their communities improve their health and wellbeing,that is quality assured, reliable, up to date, easy to understand, regularly reviewed and locally relevant." 
        
        style="font-family: 'Times New Roman', Times, serif; font-size: medium; font-style: italic; color: #006666; margin-left: 0px;"></asp:Label>
</td>
</tr>
<tr>
<td class="style2" align="justify">
    <asp:Label ID="Label2" runat="server" 
        Text="Information on Cyber Wealth for Health is provided to help people stay healthy or understand and manage their health and medical conditions. It does not replace care provided by medical practitioners and other qualified health professionals.We do not provide health and medical advice over the phone or by email. " 
        
        style="font-family: 'Times New Roman', Times, serif; font-size: medium; font-style: italic; color: #CC0000; text-align: justify;"></asp:Label>
</td>
</tr>
<tr>
<td class="style2" align="justify">
    <asp:Label ID="Label3" runat="server" 
        Text="It brings you information about diseases, conditions, and wellness issues in language you can understand. We offer reliable, up-to-date health information, anytime, anywhere, for free.We have extensive information from the trusted sources." 
        
        style="font-family: 'Times New Roman', Times, serif; font-size: medium; font-style: italic; color: #006666; text-align: justify;"></asp:Label>
</td>
</tr>
<tr>
<td class="style2" align="justify">
    <asp:Label ID="Label4" runat="server" 
        Text="We hope you enjoy your visit and find the information you need. We invite you to use the feedback page to send us your comments." 
        style="font-family: 'Times New Roman', Times, serif; font-size: medium; font-style: italic; color: #CC0000"></asp:Label>
</td>
</tr>
</table>
</asp:Content>

