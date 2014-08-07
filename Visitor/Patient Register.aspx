<%@ page title="" language="C#" masterpagefile="~/Visitor/VisitorMaster.master" autoeventwireup="true" inherits="Visitor_Patient_Register, App_Web_3qwjjj55" %>

<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="asp" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
<script type ="text/javascript" >
    function validation()
    {
                if (document.getElementById("<%=Txtfirstname.ClientID%>").value == "")
             {
                 alert("First Name can not be blank");
                 document.getElementById("<%=Txtfirstname.ClientID%>").focus();
                 return false;
             }
             if (document.getElementById("<%=Txtlastname.ClientID%>").value == "")
             {
                 alert("Last Name can not be blank");
                 document.getElementById("<%=Txtlastname.ClientID%>").focus();
                 return false;
             }
             if (document.getElementById("<%=Txtaddress.ClientID%>").value == "") 
             {
                 alert("Address can not be blank");
                 document.getElementById("<%=Txtaddress.ClientID%>").focus();
                 return false;
             }
             if (document.getElementById("<%=Txtemail.ClientID %>").value == "") 
             {
                 alert("Email id can not be blank");
                 document.getElementById("<%=Txtemail.ClientID %>").focus();
                 return false;
             }
             var emailPat = /^(\".*\"|[A-Za-z]\w*)@(\[\d{1,3}(\.\d{1,3}){3}]|[A-Za-z]\w*(\.[A-Za-z]\w*)+)$/;
             var emailid = document.getElementById("<%=Txtemail.ClientID %>").value;
             var matchArray = emailid.match(emailPat);
             if (matchArray == null) 
             {
                 alert("Your email address seems incorrect, Please try again.");
                 document.getElementById("<%=Txtemail.ClientID %>").focus();
                 return false;
             }
             if (document.getElementById("<%=Txtusername.ClientID%>").value == "")
              {
                 alert("User Name can not be blank");
                 document.getElementById("<%=Txtusername.ClientID%>").focus();
                 return false;
             }
             if (document.getElementById("<%=Txtpassword.ClientID%>").value == "") 
             {
                 alert("Password can not be blank");
                 document.getElementById("<%=Txtpassword.ClientID%>").focus();
                 return false;
             }
             if (document.getElementById("<%=Txtrepassword.ClientID%>").value == "") {
                 alert("Confirm Password can not be blank");
                 document.getElementById("<%=Txtrepassword.ClientID%>").focus();
                 return false;
             }
             if (document.getElementById("<%=TxtDOB.ClientID%>").value == "") 
             {
                 alert("Date of Birth can not be blank");
                 document.getElementById("<%=TxtDOB.ClientID%>").focus();
                 return false;
             }
             if (document.getElementById("<%=Txtmobile.ClientID%>").value == "") {
                 alert("Contact Number can not be blank");
                 document.getElementById("<%=Txtmobile.ClientID%>").focus();
                 return false;
             }
             if (document.getElementById("<%=Txtqualfication.ClientID%>").value == "") {
                 alert("Qualification can not be blank");
                 document.getElementById("<%=Txtqualfication.ClientID%>").focus();
                 return false;
             }

             
             
             
    }
        

  </script>
    <style type="text/css">
        
        .style1
        {
            height: 35px;
            color: #006666;
            font-style: italic;
            font-family: "Times New Roman", Times, serif;
            font-size: small;
        }
       
        .style2
        {
            height: 80px;
        }
       
        .style3
        {
            height: 35px;
        }
       
    </style>  
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<table  >
<tr>
<td>
    <table style="width: 500px; height: 371px" >
<tr >
<td class="style1">
<asp:Label ID="Lblname" runat="server" Text="Name:" ForeColor="#CC0000" 
        
        style="font-size: small; font-style: italic; font-family: 'Times New Roman', Times, serif;"></asp:Label> 
</td>
<td class="style1">
   <asp:TextBox ID="Txtfirstname" runat="server" placeholder="First Name" 
        Height="22px"></asp:TextBox>      
    <asp:TextBox ID="Txtlastname" runat="server"  placeholder="Last Name" 
        Height="22px"></asp:TextBox>
</td>
</tr>
<tr>
<td class="style3">
    <asp:Label ID="Label1" runat="server" Text="State:" 
        style="font-family: 'Times New Roman', Times, serif; font-size: small; font-style: italic; color: #006666"></asp:Label>
</td>
<td class="style3">
    <asp:DropDownList ID="DDstate" runat="server" Height="27px" 
        style="color: #006666" Width="170px">
        <asp:ListItem>Select State</asp:ListItem>
        <asp:ListItem>Gujarat</asp:ListItem>
        <asp:ListItem>Maharashtra</asp:ListItem>
        <asp:ListItem>Rajasthan</asp:ListItem>
        <asp:ListItem>Punjab</asp:ListItem>
        <asp:ListItem>Madhya Pradesh</asp:ListItem>
        <asp:ListItem>Uttar Pradesh</asp:ListItem>
        <asp:ListItem>Kerala</asp:ListItem>
        <asp:ListItem>Himachal Pradesh</asp:ListItem>
        <asp:ListItem>Andhra Pradesh</asp:ListItem>
        <asp:ListItem>Assam</asp:ListItem>
        <asp:ListItem>Bihar</asp:ListItem>
        <asp:ListItem>Goa</asp:ListItem>
        <asp:ListItem>Karnataka</asp:ListItem>
        <asp:ListItem>Orrisa</asp:ListItem>
        <asp:ListItem>Tamilnadu</asp:ListItem>
        <asp:ListItem>Uttarakhand</asp:ListItem>
        <asp:ListItem>West Bengal</asp:ListItem>
    </asp:DropDownList>
</td>
</tr>
<tr>
<td class="style1">
    <asp:Label ID="Lbladdress" runat="server" Text="Address:" ForeColor="#006666" 
        
        
        style="font-size: small; font-style: italic; font-family: 'Times New Roman', Times, serif; color: #CC0000;"></asp:Label></td>
<td class="style1">
    <asp:TextBox ID="Txtaddress" runat="server" TextMode="MultiLine" Height="50px" 
        Width="170px"></asp:TextBox>
</td>
</tr>
<tr>
<td class="style1">
    <asp:Label ID="Lblmobile" runat="server" Text="Mobile No.:" ForeColor="#CC0000" 
        
        
        style="font-size: small; font-style: italic; font-family: 'Times New Roman', Times, serif; color: #006666;"></asp:Label>
</td>
<td class="style1">
    <asp:TextBox ID="Txtmobile" runat="server" Height="22px" Width="170px"></asp:TextBox>
</td>
</tr>
<tr>
<td class="style3">
    <asp:Label ID="Lblqualification" runat="server" Text="Qualification:" 
        ForeColor="#006666" 
        
        style="font-size: small; font-style: italic; font-family: 'Times New Roman', Times, serif; color: #CC0000;"></asp:Label>
</td>
<td class="style1">
    <asp:TextBox ID="Txtqualfication" runat="server" TextMode="MultiLine" 
        Height="35px" Width="170px"></asp:TextBox>
</td>
</tr>
<tr>
<td >
    <asp:Label ID="Lblgender" runat="server" Text="Gender" ForeColor="#CC0000" 
        
        
        style="font-size: small; font-style: italic; font-family: 'Times New Roman', Times, serif; color: #006666;"></asp:Label>
</td>
<td class="style1">
    <asp:RadioButtonList ID="Radiogender" runat="server" 
        RepeatDirection="Horizontal" ForeColor="#CC0000" Height="16px" 
        
        
        style="font-size: small; font-style: italic; font-family: 'Times New Roman', Times, serif;" 
        Width="170px">
        <asp:ListItem>Male</asp:ListItem>
        <asp:ListItem>Female</asp:ListItem>
    </asp:RadioButtonList>
</td>
</tr>
<tr>
<td class="style3">
    <asp:Label ID="LblDOB" runat="server" Text="Date of Birth:" ForeColor="#006666" 
        
        
        style="font-size: small; font-style: italic; font-family: 'Times New Roman', Times, serif; color: #CC0000;"></asp:Label>

</td>
<td class="style1">
    <asp:TextBox ID="TxtDOB" runat="server" TextMode="SingleLine" Height="22px" 
        Width="170px"></asp:TextBox>
    <%--<asp:ToolkitScriptManager ID="ToolkitScriptManager1" runat="server">
    </asp:ToolkitScriptManager>--%>
    <asp:TextBoxWatermarkExtender ID="TextBoxWatermarkExtender1" TargetControlID ="TxtDOB" WatermarkText ="Just click Here" runat="server">
    </asp:TextBoxWatermarkExtender>
    <asp:CalendarExtender ID="CalendarExtender1" runat="server" Enabled ="true" TargetControlID ="TxtDOB">
    </asp:CalendarExtender>
   
</td>
</tr>
<tr>
<td>
    <asp:Label ID="Lbl" runat="server" Text="Email-Id:" ForeColor="#CC0000" 
        
        
        style="font-size: small; font-style: italic; font-family: 'Times New Roman', Times, serif; color: #006666;"></asp:Label>
</td>
<td class="style1">
    <asp:TextBox ID="Txtemail" runat="server" TextMode="SingleLine" Height="22px" 
        Width="170px"></asp:TextBox>
</td>
</tr>
<tr>
<td>
    <asp:Label ID="Lblusername" runat="server" Text="User_Name:" 
        ForeColor="#006666" 
        
        style="font-size: small; font-style: italic; font-family: 'Times New Roman', Times, serif; color: #CC0000;"></asp:Label>
</td>
<td class="style1">
    <asp:TextBox ID="Txtusername" runat="server" TextMode="SingleLine" 
        Height="22px" Width="170px"></asp:TextBox>
</td>
</tr>
<tr>
<td>
    <asp:Label ID="Lblpassword" runat="server" Text="Password:" ForeColor="#CC0000" 
        
        
        style="font-size: small; font-style: italic; font-family: 'Times New Roman', Times, serif; color: #006666;"></asp:Label>
</td>
<td class="style1">
    <asp:TextBox ID="Txtpassword" runat="server" TextMode="Password" Height="22px" 
        Width="170px"></asp:TextBox>
</td>
</tr>
<tr>
<td>
    <asp:Label ID="Lblrepassword" runat="server" Text="Re-enter Pasword:" 
        ForeColor="#006666" 
        
        style="font-size: small; font-style: italic; font-family: 'Times New Roman', Times, serif; color: #CC0000;"></asp:Label>
</td>
<td class="style1">
    <asp:TextBox ID="Txtrepassword" runat="server" TextMode="Password" 
        Height="22px" Width="170px"></asp:TextBox>
        &nbsp;<asp:Label ID="Lblpassword0" runat="server" Text="Role :" ForeColor="#CC0000" 
        
        
        
        style="font-size: small; font-style: italic; font-family: 'Times New Roman', Times, serif; color: #006666;" 
        Visible="False"></asp:Label>
    <asp:Label ID="pat1" runat="server" Text="Patient" ForeColor="#CC0000" 
        
        
        
        style="font-size: small; font-style: italic; font-family: 'Times New Roman', Times, serif; color: #006666;" 
        Visible="False"></asp:Label>
</td>
</tr>
<tr>
<td colspan="2" align="left" valign="top">
    <asp:ImageButton ID="IBsbmt" runat="server" Height="35px" Width="90px" 
        ImageUrl="~/Images/s.jpg" onclick="IBsbmt_Click" OnClientClick=" return validation()"/>
    &nbsp;&nbsp;
    <asp:ImageButton ID="IBcancel" runat="server" Height="55px" Width="55px" 
        ImageUrl="~/Images/images (2).jpg"  />
        &nbsp;&nbsp;
    <asp:ImageButton ID="IBreset" runat="server" Height="35px" Width="95px" 
        ImageUrl="~/Images/images(6).jpg" onclick="IBreset_Click"  />
    
    
</td>
</tr>
</table>
</td>
<td colspan="2">
<asp:Image ID="Image6" runat="server" Height="285px" 
ImageUrl="~/Images/home.jpg" Width="205px" 
        style="margin-bottom:200px; margin-left: 0px;" />
</td>
</tr>
</table>
</asp:Content>

