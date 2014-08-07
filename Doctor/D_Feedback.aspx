<%@ page title="" language="C#" masterpagefile="~/Doctor/DoctorMaster.master" autoeventwireup="true" inherits="Doctor_D_Feedback, App_Web_g3fevbmj" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
<script type ="text/javascript" >
    function validation() {
        if (document.getElementById("<%=Txtnm.ClientID%>").value == "") {
            alert("Your Name can not be blank");
            document.getElementById("<%=Txtnm.ClientID%>").focus();
            return false;
        }
        if (document.getElementById("<%=Txteml.ClientID%>").value == "") {
            alert("Your Email-ID can not be blank");
            document.getElementById("<%=Txteml.ClientID%>").focus();
            return false;
        }
        if (document.getElementById("<%=Txtmsg.ClientID%>").value == "") {
            alert("You must write the message for feedback!");
            document.getElementById("<%=Txtmsg.ClientID%>").focus();
            return false;
        }


    }
        

  </script>
 <style type="text/css">
        .style3
    {
        height: 40px;
    }
    .style4
    {
        height: 35px;
    }
        .style8
        {
            height: 50px;
        }
        .style9
        {
            height: 60px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
&nbsp;
    <asp:Label ID="Label2" runat="server" 
        style="font-family: 'Times New Roman', Times, serif; font-size: small; font-style: italic; color: #006666" 
        Text="Welcome"></asp:Label>
&nbsp; <asp:Label ID="Label1" runat="server" Text="Label" 
        style="font-family: 'Times New Roman', Times, serif; font-size: small; font-style: italic; color: #CC0000"></asp:Label>
<table>
<tr>
<th colspan ="2" style="font-family: 'Agency FB'; font-size: small" class="style8" 
        align="center">
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:Label ID="Lblheadr" runat="server" 
        Text="Provide your valuable feedback here..." ForeColor="Gray" 
        
        style="font-size: large; font-family: 'Book Antiqua'; font-style: italic;"></asp:Label>
</th>
</tr>
<tr>
<td class="style4">
<asp:Label ID="Lblnm" runat="server" Text="Name:" ForeColor="#CC0000" 
        
        style="font-size: small; font-style: italic; font-family: 'Times New Roman', Times, serif;"></asp:Label>
</td>
<td class="style4">
    <asp:TextBox ID="Txtnm" runat="server" Height="22px" Width="235px"></asp:TextBox>
</td>
</tr>
<tr>
<td class="style4">
    <asp:Label ID="Lbleml" runat="server" Text="Your Email-Id:" ForeColor="#006666" 
        
        style="font-size: small; font-style: italic; font-family: 'Times New Roman', Times, serif;"></asp:Label>
</td>
<td class="style4">
    <asp:TextBox ID="Txteml" runat="server" Height="22px" Width="235px"></asp:TextBox>
</td>
</tr>
<tr>
<td class="style3">
    <asp:Label ID="Lblru" runat="server" Text="Rate Us !:" ForeColor="#CC0000" 
        
        style="font-size: small; font-style: italic; font-family: 'Times New Roman', Times, serif;"></asp:Label>
</td>
<td class="style3">
    <asp:RadioButtonList ID="RdbtnRateus" runat="server" 
        RepeatDirection="Horizontal" ForeColor="#CC0000" style="font-size: small; font-style: italic; font-family: 'Times New Roman', Times, serif;" 
        Height="23px" Width="235px">
        <asp:ListItem>Good</asp:ListItem>
        <asp:ListItem>Best</asp:ListItem>
        <asp:ListItem>Average</asp:ListItem>
        <asp:ListItem>Poor</asp:ListItem>
    </asp:RadioButtonList>
</td>
</tr>
<tr>
<td class="style3" valign="top">
    <asp:Label ID="Lblmsg" runat="server" Text="Message:" ForeColor="#006666" 
        
        style="font-size: small; font-style: italic; font-family: 'Times New Roman', Times, serif;"></asp:Label>
</td>
<td class="style3">
    <asp:TextBox ID="Txtmsg" runat="server" TextMode="MultiLine" Height="65px" 
        Width="235px"></asp:TextBox>
</td>
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

