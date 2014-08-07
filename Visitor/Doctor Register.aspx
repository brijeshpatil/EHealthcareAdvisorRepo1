<%@ page title="" language="C#" masterpagefile="~/Visitor/VisitorMaster.master" autoeventwireup="true" inherits="Visitor_Doctor_Register, App_Web_3qwjjj55" %>

<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="asp" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
 <style type="text/css">
      
        .style2
        {
        width: 110px;
        height: 35px;
    }
        .style4
        {
            width: 110px;
            height: 45px;
        }
        .style5
        {
            height: 45px;
         width: 300px;
     }
    .style7
    {
        width: 110px;
    }
        .style8
        {
            height: 35px;
        }
     .style9
     {
         width: 240px;
     }
     .style10
     {
         height: 35px;
         width: 300px;
     }
    </style>
    <script type ="text/javascript" >
        function validation() {
            if (document.getElementById("<%=Txtfirstname.ClientID%>").value == "") {
                alert("First Name can not be blank");
                document.getElementById("<%=Txtfirstname.ClientID%>").focus();
                return false;
            }
            if (document.getElementById("<%=Txtlastname.ClientID%>").value == "") {
                alert("Last Name can not be blank");
                document.getElementById("<%=Txtlastname.ClientID%>").focus();
                return false;
            }
            if (document.getElementById("<%=Txtaddress.ClientID%>").value == "") {
                alert("Address can not be blank");
                document.getElementById("<%=Txtaddress.ClientID%>").focus();
                return false;
            }
            if (document.getElementById("<%=Txtemail.ClientID %>").value == "") {
                alert("Email id can not be blank");
                document.getElementById("<%=Txtemail.ClientID %>").focus();
                return false;
            }
            var emailPat = /^(\".*\"|[A-Za-z]\w*)@(\[\d{1,3}(\.\d{1,3}){3}]|[A-Za-z]\w*(\.[A-Za-z]\w*)+)$/;
            var emailid = document.getElementById("<%=Txtemail.ClientID %>").value;
            var matchArray = emailid.match(emailPat);
            if (matchArray == null) {
                alert("Your email address seems incorrect, Please try again.");
                document.getElementById("<%=Txtemail.ClientID %>").focus();
                return false;
            }
            if (document.getElementById("<%=Txtusername.ClientID%>").value == "") {
                alert("User Name can not be blank");
                document.getElementById("<%=Txtusername.ClientID%>").focus();
                return false;
            }
            if (document.getElementById("<%=Txtpassword.ClientID%>").value == "") {
                alert("Password can not be blank");
                document.getElementById("<%=Txtpassword.ClientID%>").focus();
                return false;
            }
            if (document.getElementById("<%=Txtrepassword.ClientID%>").value == "") {
                alert("Confirm Password can not be blank");
                document.getElementById("<%=Txtrepassword.ClientID%>").focus();
                return false;
            }
            if (document.getElementById("<%=Txtdob.ClientID%>").value == "") {
                alert("Date of Birth can not be blank");
                document.getElementById("<%=Txtdob.ClientID%>").focus();
                return false;
            }
            if (document.getElementById("<%=Txtcn.ClientID%>").value == "") {
                alert("Contact Number can not be blank");
                document.getElementById("<%=Txtcn.ClientID%>").focus();
                return false;
            }
            if (document.getElementById("<%=Txtqualification.ClientID%>").value == "") {
                alert("Qualification can not be blank");
                document.getElementById("<%=Txtqualification.ClientID%>").focus();
                return false;
            }




        }
        

  </script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<table style="width: 640px">
<tr>
<td class="style9">
    <table style="width: 512px" >
<tr >
<td valign="top" class="style2">
   
    <asp:Label ID="lblname" runat="server" Text="Name:" ForeColor="#006666" 
        
        style="font-family: 'Times New Roman', Times, serif; font-size: small; font-style: italic; color: #CC0000;" ></asp:Label>
    
</td>
<td class="style10" valign="top">
   <asp:TextBox ID="Txtfirstname" runat="server" ToolTip="First Name"></asp:TextBox>      
    &nbsp;<asp:TextBox ID="Txtlastname" runat="server" SkinID="First Name" 
        ToolTip="Last Name"></asp:TextBox>
</td>
</tr>
<tr>
<td class="style8" valign="top">
    <asp:Label ID="Label1" runat="server" Text="State:" 
        style="font-family: 'Times New Roman', Times, serif; font-size: small; font-style: italic; color: #006666"></asp:Label>
</td>
<td class="style10">
    <asp:DropDownList ID="DDS" runat="server" Height="24px" 
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
        <asp:ListItem>Others</asp:ListItem>
    </asp:DropDownList>
</td>
</tr>
<tr>
<td class="style4" valign="top"  >
    <asp:Label ID="laddress" runat="server" Text="Address :" ForeColor="#CC0000" 
        
        style="font-size: small; font-style: italic; font-family: 'Times New Roman', Times, serif;"></asp:Label>
    </td>
<td class="style5" valign="top">
    <asp:TextBox ID="Txtaddress" runat="server" TextMode="MultiLine" Height="50px" 
        Width="170px"></asp:TextBox>
</td>
</tr>
<tr>
<td  valign="top" class="style7" >
   
    <asp:Label ID="Lblspclin" runat="server" Text="Speciality :" ForeColor="#006666" 
        
        style="font-size: small; font-style: italic; font-family: 'Times New Roman', Times, serif;"></asp:Label>

    </td>
<td class="style10" valign="top">
    <asp:DropDownList ID="DDC" runat="server" Height="22px" Width="170px" 
                    ForeColor="#CC0000" style="color: #006666">
                    <asp:ListItem Selected="True">Select Category</asp:ListItem>
                    <asp:ListItem>Allergies</asp:ListItem>
                    <asp:ListItem>Arthritis</asp:ListItem>
                    <asp:ListItem>Back Pain</asp:ListItem>
                    <asp:ListItem>Cancer</asp:ListItem>
                    <asp:ListItem>Cholestrol</asp:ListItem>
                    <asp:ListItem>Cold,Flu &amp; Cough</asp:ListItem>
                    <asp:ListItem>Depression</asp:ListItem>
                    <asp:ListItem>Diabetes</asp:ListItem>
                    <asp:ListItem>ENT Issues</asp:ListItem>
                    <asp:ListItem>Heart Diseases</asp:ListItem>
                    <asp:ListItem>Hypertension</asp:ListItem>
                    <asp:ListItem>Migraines</asp:ListItem>
                    <asp:ListItem>Osteoporosies</asp:ListItem>
                    <asp:ListItem>Skin Problems</asp:ListItem>
                    <asp:ListItem>Sleep Disorder</asp:ListItem>
                    <asp:ListItem>Temper Prevention</asp:ListItem>
                    <asp:ListItem>Vertigo</asp:ListItem>
                    <asp:ListItem>Vitamins</asp:ListItem>
                    <asp:ListItem>Weight gain or loss</asp:ListItem>
                    <asp:ListItem>Others</asp:ListItem>
                </asp:DropDownList>
</td>
</tr>
<tr>
<td  valign="top" class="style2" >
    
    <asp:Label ID="contactno" runat="server" Text="Contact No :" ForeColor="#CC0000" 
        
        style="font-size: small; font-style: italic; font-family: 'Times New Roman', Times, serif;"></asp:Label>

    </td>
<td class="style10" valign="top" >
    <asp:TextBox ID="Txtcn" runat="server"></asp:TextBox>
</td>
</tr>
<tr>
<td align="left"  valign="top" class="style7" >
    
    <asp:Label ID="qualification" runat="server" Text="Qualification :" ForeColor="#006666" 
        
        style="font-size: small; font-style: italic; font-family: 'Times New Roman', Times, serif;" ></asp:Label>
 
</td>
<td class="style10" valign="top" >
    <asp:TextBox ID="Txtqualification" runat="server"></asp:TextBox>
</td>
</tr>
<tr>
<td class="style2" valign="top"  >
    
    <asp:Label ID="gender" runat="server" Text="Gender :" ForeColor="#CC0000" 
        
        style="font-size: small; font-style: italic; font-family: 'Times New Roman', Times, serif;" ></asp:Label>
   
</td>
<td class="style10" valign="top">
    <asp:RadioButtonList ID="Radiogender" runat="server" 
        RepeatDirection="Horizontal" Height="22px" Width="125px" ForeColor="#CC0000" 
        
        style="font-size: small; font-style: italic; font-family: 'Times New Roman', Times, serif;">
        <asp:ListItem>Male</asp:ListItem>
        <asp:ListItem>Female</asp:ListItem>
    </asp:RadioButtonList>
</td>
</tr>
<tr>
<td class="style2" valign="top" >
    
    <asp:Label ID="experience" runat="server" Text="Experience:" ForeColor="#006666" 
        
        style="font-size: small; font-style: italic; font-family: 'Times New Roman', Times, serif;"></asp:Label>
    
</td>
<td class="style10" valign="top">
    <asp:TextBox ID="Txtexperience" runat="server" TextMode="SingleLine"></asp:TextBox>
</td>
</tr>
<tr>
<td class="style2" valign="top" >
    
    <asp:Label ID="dob" runat="server" Text="Date Of Birth:" ForeColor="#CC0000" 
        
        style="font-size: small; font-style: italic; font-family: 'Times New Roman', Times, serif;"></asp:Label>

    
</td>
<td class="style10" valign="top">
    <asp:TextBox ID="Txtdob" runat="server"  ></asp:TextBox>
    <asp:TextBoxWatermarkExtender ID="TextBoxWatermarkExtender1" TargetControlID ="Txtdob" WatermarkText ="Just click Here" runat="server">
    </asp:TextBoxWatermarkExtender>
    <asp:CalendarExtender ID="CalendarExtender1" runat="server" Enabled ="true" TargetControlID ="Txtdob">
    </asp:CalendarExtender>
</td>
</tr>
<tr>
<td class="style2" valign="top"  >
   
    <asp:Label ID="emailid" runat="server" Text="E-mail Id :" ForeColor="#006666" 
        
        style="font-size: small; font-style: italic; font-family: 'Times New Roman', Times, serif;"></asp:Label>
   
</td>
<td class="style10" valign="top" >
    <asp:TextBox ID="Txtemail" runat="server" ></asp:TextBox>
</td>
</tr>
<tr>
<td class="style2" valign="top" >

    <asp:Label ID="uname" runat="server" Text="User Name :" ForeColor="#CC0000" 
        
        style="font-size: small; font-style: italic; font-family: 'Times New Roman', Times, serif;"></asp:Label>
    
</td>
<td class="style10" valign="top">
    <asp:TextBox ID="Txtusername" runat="server" ></asp:TextBox>
</td>
</tr>
<tr>
<td class="style2" valign="top" >
    
    <asp:Label ID="password" runat="server" Text="Password :" ForeColor="#006666" 
        
        style="font-size: small; font-style: italic; font-family: 'Times New Roman', Times, serif;"></asp:Label>
  
</td>
<td class="style10" valign="top">
    <asp:TextBox ID="Txtpassword" runat="server" TextMode="Password"></asp:TextBox>
</td>
</tr>
<tr>
<td class="style2" valign="top" >
   
    <asp:Label ID="rpassword" runat="server" Text="Re-Enter Password: " ForeColor="#CC0000" 
        
        style="font-size: small; font-style: italic; font-family: 'Times New Roman', Times, serif;"></asp:Label>
    
</td>
<td class="style10" valign="top">
    <asp:TextBox ID="Txtrepassword" runat="server" TextMode="Password"></asp:TextBox>

     <asp:Label ID="password0" runat="server" Text="Role :" ForeColor="#006666" 
        
        
        style="font-size: small; font-style: italic; font-family: 'Times New Roman', Times, serif;" 
        Visible="False"></asp:Label>
  
    <asp:Label ID="doc1" runat="server" Text="Doctor" ForeColor="#006666" 
        
        
        style="font-size: small; font-style: italic; font-family: 'Times New Roman', Times, serif; font-weight: 700;" 
        Visible="False"></asp:Label>
  
</td>
</tr>
<tr>
<td colspan="2" align="left" valign="top">
    <asp:ImageButton ID="IBsbmt" runat="server" Height="43px" Width="90px" 
        ImageUrl="~/Images/s.jpg" onclick="IBsbmt_Click" />
    &nbsp;&nbsp;
    <asp:ImageButton ID="IBcancel" runat="server" Height="55px" Width="75px" 
        ImageUrl="~/Images/images (2).jpg" />
        &nbsp;&nbsp;
    <asp:ImageButton ID="IBreset" runat="server" Height="43px" Width="95px" 
        ImageUrl="~/Images/images(6).jpg" onclick="IBreset_Click"  />
    
    
</td>
</tr>
</table>
</td>
<td valign="top">
    <asp:Image ID="Image1" Height="285px" Width="205px" 
        tyle="margin-bottom:200px; margin-left: 0px;" runat="server" 
        ImageUrl="~/Images/3.jpg" />
</td>
</tr>
</table>
</asp:Content>

