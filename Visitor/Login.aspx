<%@ page title="" language="C#" masterpagefile="~/Visitor/VisitorMaster.master" autoeventwireup="true" inherits="Visitor_Login, App_Web_3qwjjj55" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
 <style type="text/css">
        .style1
        {
         height: 35px;
         width: 95px;
     }
        .style2
        {
         width: 500px;
     }
        .style3
        {
         height: 35px;
         width: 500px;
     }
     .style4
     {
         width: 95px;
     }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<br />
    <br />
    <br />
    <br />
    <br />
    <br />
   <table align="center" >
<tr >
<td style="margin-left: 40px" class="style4">
    &nbsp;</td>
<td class="style2">
    &nbsp;</td>
</tr>
<tr >
<td style="margin-left: 40px" class="style4">
    &nbsp;</td>
<td class="style2">
    &nbsp;</td>
</tr>
<tr >
<td style="margin-left: 40px" class="style4">
    &nbsp;</td>
<td class="style2">
    &nbsp;</td>
</tr>
<tr >
<td style="margin-left: 40px" class="style1">


    <asp:Label ID="Uname" runat="server" Font-Size="X-Large" ForeColor="#204E57" 
        Text="User Name:" 
        
        style="font-size: large; font-family: 'Times New Roman', Times, serif; font-style: italic; color: #CC0000;"></asp:Label>
</td>
<td class="style3">
<asp:TextBox ID="Tuname" runat="server" Height="22px" Width="150px" required></asp:TextBox>

&nbsp;<asp:Label ID="Label2" runat="server" style="color: #CC0000" Text="Label" 
        Visible="False"></asp:Label>

</td>
</tr>
<tr>
<td class="style1" valign="top">
   

    <asp:Label ID="Password" runat="server" Font-Size="X-Large" ForeColor="#204E57" 
        Text="Password:" 
        
        style="font-family: 'Times New Roman', Times, serif; font-size: large; font-style: italic; color: #006666;"></asp:Label>

</td>
<td class="style3">
<asp:TextBox ID="Tpassword" runat="server" Height="22px" Width="150px" 
        TextMode="Password"  required></asp:TextBox>
</td>
</tr>
<tr>
<td class="style4">
    <asp:Label ID="Label1" runat="server" Text="Login As?" 
        style="color: #CC0000; font-family: 'Times New Roman', Times, serif; font-size: large; font-style: italic"></asp:Label>
</td>
<td class="style2">
    <asp:DropDownList ID="DDSType" runat="server" Height="32px" 
        style="color: #CC0000; font-style: italic" Width="150px">
        <asp:ListItem>Patient</asp:ListItem>
        <asp:ListItem>Doctor</asp:ListItem>
        <asp:ListItem>Admin</asp:ListItem>
    </asp:DropDownList>
    </td>
</tr>
<tr>
<td align="justify" colspan="2" valign="top">
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:ImageButton ID="IBsubmit" runat="server" Height="45px" Width="50px" 
        ImageUrl="~/Images/login.jpg" onclick="IBsubmit_Click" />
&nbsp;&nbsp;
<asp:ImageButton ID="IBreset" runat="server" Height="35px" Width="75px" 
        ImageUrl="~/Images/images(6).jpg" />
&nbsp;<asp:ImageButton ID="IBcancel" runat="server" Height="45px" Width="55px" 
        ImageUrl="~/Images/images (2).jpg" />
    &nbsp;&nbsp;&nbsp;
    
    <br />
</td>
</tr>
<tr>
<td align="center" class="style4">
    &nbsp;</td>
<td class="style2">
    &nbsp;</td>
</tr>
<tr>
<td align="center" class="style4">
    &nbsp;</td>
<td class="style2">
    &nbsp;</td>
</tr>
<tr>
<td align="center" class="style4">
    &nbsp;</td>
<td class="style2">
    &nbsp;</td>
</tr>
</table>
</asp:Content>

