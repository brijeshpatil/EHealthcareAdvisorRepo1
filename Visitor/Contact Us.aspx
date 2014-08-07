<%@ page title="" language="C#" masterpagefile="~/Visitor/VisitorMaster.master" autoeventwireup="true" inherits="Visitor_Contact_Us, App_Web_3qwjjj55" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
<script type ="text/javascript" >
    function validation() {
        if (document.getElementById("<%=TxtBxNm.ClientID%>").value == "") {
            alert("Oops...You must enter your Name");
            document.getElementById("<%=TxtBxNm.ClientID%>").focus();
            return false;
        }
        if (document.getElementById("<%=TxtEml.ClientID%>").value == "") {
            alert("Oops...You must enter your EmailID");
            document.getElementById("<%=TxtEml.ClientID%>").focus();
            return false;
        }
        if (document.getElementById("<%=TxtBxCn.ClientID%>").value == "") {
            alert("Oops...Contact No. can't be blank");
            document.getElementById("<%=TxtBxCn.ClientID%>").focus();
            return false;
        }
        if (document.getElementById("<%=TxtMsg.ClientID%>").value == "") {
            alert("Oops...You must enter your message");
            document.getElementById("<%=TxtMsg.ClientID%>").focus();
            return false;
        }
    }
  </script>
<style type="text/css">
        .style1 {
            height: 35px;
        }
        .style2
        {
            height: 80px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<table>
<tr>
<th colspan ="2" class="style1">
    <asp:Label ID="LblHdr" runat="server" Text="You can contact us!" 
        ForeColor="Gray" 
        style="font-family: 'Book Antiqua'; font-size: large; font-style: italic"></asp:Label>
</th>
</tr>
<tr>
<td class="style1">
    <asp:Label ID="LblNm" runat="server" Text="Name:" ForeColor="#CC0000" 
        style="font-family: 'Times New Roman', Times, serif; font-size: small; font-style: italic"></asp:Label>
</td>
<td class="style1">
    <asp:TextBox ID="TxtBxNm" runat="server" Height="22px" Width="210px"></asp:TextBox>
</td>
</tr>
<tr>
<td class="style1">
    <asp:Label ID="LblEml" runat="server" Text="Email ID:" ForeColor="#006666" 
        style="font-family: 'Times New Roman', Times, serif; font-size: small; font-style: italic"></asp:Label>
</td>
<td class="style1">
    <asp:TextBox ID="TxtEml" runat="server" Height="22px" Width="210px"></asp:TextBox>
</td>
</tr>
<tr>
<td class="style1">
<asp:Label ID="LblCn" runat="server" Text="Contact No.:" ForeColor="#CC0000" 
        style="font-family: 'Times New Roman', Times, serif; font-size: small; font-style: italic"></asp:Label>
</td>
  <td class="style1">
      <asp:TextBox ID="TxtBxCn" runat="server" Height="22px" Width="210px"></asp:TextBox>
  </td>  
</tr>
<tr>
<td valign="top" class="style2">
    <asp:Label ID="LblMsg" runat="server" Text="Message:" ForeColor="#006666" 
        style="font-family: 'Times New Roman', Times, serif; font-size: small; font-style: italic"></asp:Label>
</td>
<td class="style2">
    <asp:TextBox ID="TxtMsg" runat="server" Height="75px" TextMode="MultiLine" 
        Width="210px"></asp:TextBox>
</td>
</tr>
<tr>
<td colspan ="2" align="center">
    <asp:ImageButton ID="ImageButton1" runat="server" ImageUrl="~/Images/s7.jpg" 
        Height="65px" Width="60px" onclick="ImageButton1_Click" OnClientClick=" return validation()"/>
</td>
</tr>
</table>
</asp:Content>

