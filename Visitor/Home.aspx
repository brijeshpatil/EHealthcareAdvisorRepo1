<%@ page title="" language="C#" masterpagefile="~/Visitor/VisitorMaster.master" autoeventwireup="true" inherits="Visitor_Home, App_Web_3qwjjj55" %>
<%@ Register Assembly="FlashControl" Namespace="Bewise.Web.UI.WebControls" TagPrefix="Bewise" %>

<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="asp" %>


<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
 <table>
    <tr>
   <td align="center" valign="top">
       <h1>
       <asp:Label ID="Label1" runat="server" Text="Welcome to our Site !" 
               
               style="font-family: 'Vladimir Script'; font-size: xx-large; color: #336699; font-weight: 700"></asp:Label>
       </h1>
   </td>
    </tr>
<tr>
<td valign="top">
    <Bewise:FlashControl ID="FlashControl1" runat="server" Height="480px" 
        Width="640px" BgColor="White" MovieUrl="~/Files/Home Page.swf" 
        WMode="Transparent" Loop="True" />
        </td>
        </tr>
        </table>
</asp:Content>

