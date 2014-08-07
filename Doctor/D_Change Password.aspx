<%@ page title="" language="C#" masterpagefile="~/Doctor/DoctorMaster.master" autoeventwireup="true" inherits="Doctor_D_Change_Password, App_Web_g3fevbmj" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
<script type ="text/javascript" >
    function validation() {
        if (document.getElementById("<%=TxtCrntPwd.ClientID%>").value == "") {
            alert("You haven't entered your Current Password");
            document.getElementById("<%=TxtCrntPwd.ClientID%>").focus();
            return false;
        }
        if (document.getElementById("<%=TxtNewPwd.ClientID%>").value == "") {
            alert("You haven't entered your New Password");
            document.getElementById("<%=TxtNewPwd.ClientID%>").focus();
            return false;
        }
        if (document.getElementById("<%=TxtCnfrmPwd.ClientID%>").value == "") {
            alert("You haven't re-entered your Password");
            document.getElementById("<%=TxtCnfrmPwd.ClientID%>").focus();
            return false;
        }
    }
        

  </script>
    <style type="text/css">
        .style1
        {
            height: 35px;
            font-size: small;
            width: 75px;
        }
    .style2
    {
        height: 35px;
    }
        .style3
        {
            height: 33px;
            font-size: small;
            width: 75px;
        }
        .style4
        {
            height: 50px;
        }
        .style5
        {
            height: 35px;
            font-size: small;
            width: 450px;
        }
        .style6
        {
            height: 33px;
            font-size: small;
            width: 225px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<asp:Label ID="Label1" runat="server" Text="Welcome" 
        style="font-family: 'Times New Roman', Times, serif; font-size: small; font-style: italic; color: #006666"></asp:Label>
    &nbsp;&nbsp;&nbsp;
    <asp:Label ID="Label3" runat="server" Text="Label" 
        style="font-family: 'Times New Roman', Times, serif; font-size: small; font-style: italic; color: #CC0000"></asp:Label>
    <table style="width: 550px" >
    <tr>
    <th colspan ="2" class="style4" align="left"> 
            &nbsp;&nbsp; 
            <asp:Label ID="Lblhdr" runat="server" 
                Text=" You can change your Password here..." ForeColor="#006666" 
                
                style="font-family: 'Times New Roman', Times, serif; font-size: large; font-style: italic; color: #808080;" ></asp:Label>
   
    </th>
    </tr>
<tr>
<td class="style1">
 <asp:Label ID="LblCrntPwd" runat="server" Text="Current One:" ForeColor="#006666" 
        
        style="font-size: small; color: #CC0000; font-family: 'Times New Roman', Times, serif; font-style: italic;"></asp:Label>
</td>
<td class="style5">
    <asp:TextBox ID="TxtCrntPwd" runat="server" TextMode="Password" Height="22px"></asp:TextBox>
&nbsp;<asp:Label ID="Label2" runat="server" 
        style="color: #CC0000; font-family: 'Times New Roman', Times, serif; font-style: italic" 
        Text="Label" Visible="False"></asp:Label>
</td>
</tr>
<tr>
<td class="style1">
    <asp:Label ID="LblNewPwd" runat="server" Text="New One:" ForeColor="#006666" 
        style="font-family: 'Times New Roman', Times, serif; font-style: italic"></asp:Label>
</td>
<td class="style5">
    <asp:TextBox ID="TxtNewPwd" runat="server" TextMode="Password" Height="22px"></asp:TextBox>
</td>
</tr>
<tr>
<td class="style3">
    <asp:Label ID="LblCnfrmPwd" runat="server" Text="Confirm It !:" 
        ForeColor="#006666" 
        style="font-family: 'Times New Roman', Times, serif; font-style: italic; color: #CC0000"></asp:Label>
</td>
<td class="style6">
    <asp:TextBox ID="TxtCnfrmPwd" runat="server" TextMode="Password" Height="22px"></asp:TextBox>
&nbsp;<asp:Label ID="Label4" runat="server" style="color: #CC0000" Text="Label" 
        Visible="False"></asp:Label></td>
</tr>
<tr>
<td colspan ="2" align="left" class="style2">
    &nbsp;
    <asp:ImageButton ID="Ibsubmit" runat="server" Height="35px" 
        ImageUrl="~/Images/s.jpg" Width="90px" onclick="Ibsubmit_Click" OnClientClick=" return validation()"/>&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:ImageButton ID="Ibcancel" runat="server" Height="45px" Width ="55px" 
        ImageUrl="~/Images/images (2).jpg"/>
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:ImageButton ID="Ibreset" 
        runat="server"  Height="35px" Width ="90px" 
        ImageUrl="~/Images/images(6).jpg"  />
</td>
</tr>
</table>
</asp:Content>

