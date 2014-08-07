<%@ page title="" language="C#" masterpagefile="~/Visitor/VisitorMaster.master" autoeventwireup="true" inherits="Visitor_Advertisement, App_Web_3qwjjj55" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
<script type ="text/javascript" >
    function validation()
    {
        if (document.getElementById("<%=txtsource.ClientID%>").value == "")
             {
                 alert("Source Name can not be blank");
                 document.getElementById("<%=txtsource.ClientID%>").focus();
                 return false;
             }
             if (document.getElementById("<%=txtadrss.ClientID%>").value == "") {
                 alert("Source Address can not be blank");
                 document.getElementById("<%=txtadrss.ClientID%>").focus();
                 return false;
             }
             if (document.getElementById("<%=txtcn.ClientID%>").value == "") {
                 alert("Contact Number can not be blank");
                 document.getElementById("<%=txtcn.ClientID%>").focus();
                 return false;
             }
             if (document.getElementById("<%=txtcn.ClientID%>").value == "") {
                 alert("Contact Number can not be blank");
                 document.getElementById("<%=txtcn.ClientID%>").focus();
                 return false;
             }
             if (document.getElementById("<%=txteid.ClientID%>").value == "") {
                 alert("Email ID can not be blank");
                 document.getElementById("<%=txteid.ClientID%>").focus();
                 return false;
             }
             if (document.getElementById("<%=txtwebsitenm.ClientID%>").value == "") {
                 alert("Website Address can not be blank");
                 document.getElementById("<%=txtwebsitenm.ClientID%>").focus();
                 return false;
             }
             if (document.getElementById("<%=FU.ClientID%>").value == "") {
                 alert("File can not be blank");
                 document.getElementById("<%=FU.ClientID%>").focus();
                 return false;
             }
             


         }
        

  </script>
    <style type="text/css">
        .style1
        {
            height: 30px;
        }
        .style2
        {
            height: 35px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table>
    <tr>
    <th colspan="2" class="style1" 
            
            style="font-family: 'Book Antiqua'; font-size: large; font-style: italic; color: #808080" 
            align="center">
        <asp:Label ID="lblhead" runat="server" Text="Go Ahead To Get Adverised With Us"></asp:Label>
    </th>
    </tr>
   <tr>
  <td class="style2" valign="top">
      <asp:Label ID="lblsource" runat="server" Text="Source Name:" 
          style="color: #CC0000; font-style: italic; font-size: small; font-family: 'Times New Roman', Times, serif"></asp:Label>
  </td>
  <td class="style2">
      <asp:TextBox ID="txtsource" runat="server" Height="22px" Width="185px"></asp:TextBox>
  </td>
   </tr>
   <tr>
   <td class="style2" valign="top">
       <asp:Label ID="lbladrss" runat="server" Text="Address:" 
           style="font-family: 'Times New Roman', Times, serif; font-size: small; font-style: italic; color: #006666"></asp:Label>
   </td>
   <td class="style2">
       <asp:TextBox ID="txtadrss" runat="server" Height="22px" Width="185px"></asp:TextBox>
   </td>
   </tr>
   <tr>
   <td class="style2" valign="top">
       <asp:Label ID="lblcn" runat="server" Text="Contact No:" 
           style="font-family: 'Times New Roman', Times, serif; font-size: small; font-style: italic; color: #CC0000"></asp:Label>
   </td>
   <td class="style2">
       <asp:TextBox ID="txtcn" runat="server" Height="22px" Width="185px"></asp:TextBox>
   </td>
   </tr>
   <tr>
   <td class="style2" valign="top">
       <asp:Label ID="lbleid" runat="server" Text="Email ID:" 
           style="font-family: 'Times New Roman', Times, serif; font-size: small; font-style: italic; color: #006666"></asp:Label>
   </td>
   <td class="style2">
       <asp:TextBox ID="txteid" runat="server" Height="22px" Width="185px"></asp:TextBox>
   </td>
   </tr>
   <tr>
   <td class="style2" valign="top">
       <asp:Label ID="lblwebsitenm" runat="server" Text="Website Address:" 
           style="font-family: 'Times New Roman', Times, serif; font-size: small; font-style: italic; color: #CC0000"></asp:Label>
   </td>
   <td class="style2">
       <asp:TextBox ID="txtwebsitenm" runat="server" Height="22px" Width="185px"></asp:TextBox>
   </td>
   </tr>
   <tr>
   <td class="style2" valign="top">
       <asp:Label ID="lblupload" runat="server" Text="Upload your data here:" 
           style="font-family: 'Times New Roman', Times, serif; font-size: small; font-style: italic; color: #006666"></asp:Label>
   </td>
   <td class="style2">
       <asp:FileUpload ID="FU" runat="server" 
           style="color: #006666; font-family: 'Times New Roman', Times, serif; font-size: small; font-style: italic" />
   </td>
   </tr>
   <tr>
   <td colspan="2" align="center">
   <asp:ImageButton ID="IBsbmt" runat="server" Height="35px" Width="90px" 
        ImageUrl="~/Images/s.jpg" onclick="IBsbmt_Click" />
    &nbsp;&nbsp;
    <asp:ImageButton ID="IBcancel" runat="server" Height="55px" Width="55px" 
        ImageUrl="~/Images/images (2).jpg"  />
        &nbsp;&nbsp;
    <asp:ImageButton ID="IBreset" runat="server" Height="35px" Width="95px" 
        ImageUrl="~/Images/images(6).jpg"  />
   </td>
   </tr>
    </table>
</asp:Content>

