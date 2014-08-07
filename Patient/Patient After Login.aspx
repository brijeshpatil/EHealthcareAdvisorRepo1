<%@ page title="" language="C#" masterpagefile="~/Patient/PatientSide.master" autoeventwireup="true" inherits="Patient_After_Login, App_Web_qwoa1mme" %>

<%@ Register Assembly="FlashControl" Namespace="Bewise.Web.UI.WebControls" TagPrefix="Bewise" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:Label ID="Label2" runat="server" 
        style="color: #006666; font-family: 'Times New Roman', Times, serif; font-size: medium; font-style: italic" 
        Text="Welcome"></asp:Label>
&nbsp; <asp:Label ID="Label1" runat="server" Text="Label" style="color: #CC0000; font-family: 'Times New Roman', Times, serif; font-size: small; font-style: italic;" 
        ForeColor="#CC0000"></asp:Label>
        <table>
        <tr>
        <td colspan="2" style="text-align: center">
            <asp:Label ID="Label4" runat="server" Text="Get Started With This" 
                
                
                style="font-family: Vijaya; font-size: xx-large; font-style: italic; color: #CC0000"></asp:Label>
        </td>
        </tr>
        <tr>
        <th colspan="2">
        <br />
        <br />
        <br />
        <br /> 
            <asp:Label ID="Label3" runat="server" 
                    Text="Look at the benefits of day-to-day Veggies,you never know!" 
                    
                
                style="font-family: Vijaya; font-size: x-large; color: #006666; font-style: italic; "></asp:Label>
           
        </th>
        </tr>
         
        <tr>
        <td> 
            <Bewise:FlashControl ID="FlashControl1" runat="server" Height="226px" 
        Width="196px" BgColor="White" MovieUrl="~/Files/veggies.swf" 
        WMode="Transparent" Loop="True" />
        </td>
        <td>
        <Bewise:FlashControl ID="FlashControl2" runat="server" Height="226px" 
        Width="545px" BgColor="White" MovieUrl="~/Files/veggie_info.swf" 
        WMode="Transparent" Loop="True" />
        </td>
        </tr>
        </table>
       
    </asp:Content>

