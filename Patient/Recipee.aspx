<%@ page title="" language="C#" masterpagefile="~/Patient/PatientSide.master" autoeventwireup="true" inherits="recipee, App_Web_qwoa1mme" %>

<%@ Register assembly="AjaxControlToolkit" namespace="AjaxControlToolkit" tagprefix="asp" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
 <style type="text/css">
 
 .modalBackground {
	  
    background-color: #D3F5F5;
	filter:alpha(opacity=30);
}
 .modalPopup 
{
     
   	  border: 2px solid Gray;
      background-color:  White;
      text-align: center;
}

 
 </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<asp:Label ID="Label2" runat="server" 
        style="color: #006666; font-family: 'Times New Roman', Times, serif; font-size: medium; font-style: italic" 
        Text="Welcome"></asp:Label>
&nbsp; <asp:Label ID="Label1" runat="server" Text="Label" style="color: #CC0000; font-family: 'Times New Roman', Times, serif; font-size: small; font-style: italic;" 
        ForeColor="#CC0000"></asp:Label>
    <asp:ScriptManager ID="ScriptManager1" runat="server">
    </asp:ScriptManager>
        <asp:DataList ID="DataList1" runat="server" CellPadding="15" CellSpacing="5" 
        RepeatColumns="3" RepeatDirection="Horizontal" ForeColor="#333333" >
            <AlternatingItemStyle BackColor="White" />
            
            <HeaderStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
            <ItemStyle BackColor="White" HorizontalAlign="Center" 
                VerticalAlign="Middle" />
            <ItemTemplate>
                <asp:ImageButton ID="ImageButton1" runat="server" Height="172px" 
                ImageUrl='<%# bind("Image") %>' Width="163px" />
                 <asp:Panel ID="Panel1" runat="server" BorderStyle="Ridge" 
            Style="display: none" CssClass="modalPopup" Direction="NotSet"
                                 HorizontalAlign="Center">
            <table>
            <tr>
            
            <td>
            
            </td>
            <td>
            </td></tr>
             <tr>
            
            <td>
            
            </td>
            <td>
            </td>
            <td >
            
            </td>
            <td>
            </td>
            <td>
            </td>
             <td>
            
            </td>
            <td>
            </td>
            <td >
            
            </td>
            <td>
            </td>
            <td>
            </td>
             <td>
            
            </td>
            <td>
            </td>
            <td >
            
            </td>
            <td>
            </td>
            <td>
            </td> <td>
            
            </td>
            <td>
            </td>
            <td >
            
            </td>
            <td>
            </td>
            <td>
            </td>
             <td>
            
            </td>
            <td>
            </td>
            <td >
            
            </td>
            <td>
            </td>
            <td>
            </td> <td>
            
            </td>
            <td>
            </td>
            <td >
            
            </td>
            <td>
            </td>
            <td>
            </td> <td>
            
            </td>
            <td>
            </td>
            <td >
            
            </td>
            <td>
            </td>
            <td>
            </td> <td>
            
            </td>
            <td>
            </td>
            <td >
            
            </td>
            <td>
            </td>
            <td>
            </td> <td>
            
            </td>
            <td>
            </td>
            <td >
            
            </td>
            <td>
            </td>
              <td style="text-align: center; vertical-align: bottom" valign="bottom" align="center">
                        <asp:ImageButton ID="CloseButton"  ImageUrl="~/Images/cancle.jpg" runat="server" Height="30px" Width="30px"    />
                    </td>
            </tr>
             <tr>
            
            <td>
            
            </td>
            <td>
            </td></tr>
             <tr>
            
            <td>
            
            </td>
            <td>
            </td></tr>
             <tr>
            
            <td>
            
            </td>
            <td>
            </td></tr>
             <tr>
            
            <td>
            
            </td>
            <td>
            </td></tr>
             <tr>
            
            <td>
            
            </td>
            
            <td>
            </td>



            </tr>
                <tr>
                    <td>                       </td>
                    <td>
                    </td>
                    <td>
 </td><td>
 </td><td>
 </td><td>
 </td><td>
 </td><td>
 </td>
                        
                      <td > <asp:Image ID="Image1" runat="server"  ImageUrl='<%# bind("Image") %>' Height="230px" Width ="200px"/></td>
 <td>
 </td>
 <td>
 </td><td>
 </td><td>
 </td><td>
 </td>
 <td>
 </td><td>
 </td><td>
 </td><td>
 </td><td>
 </td><td>
 </td><td>
 </td><td>
 </td><td>
 </td>

                      


<td>
    
    <asp:Panel ID="Panel2" runat="server">
 <asp:Label ID="Label1" runat="server" Text='<%# bind("mored") %>' Font-Bold="True" Font-Italic="True" Font-Names="Times New Roman" Font-Size="Large" ForeColor="#006666"></asp:Label>
    </asp:Panel>

 
                      </td>
                      </tr>
                                 
                
                <tr>
                <td>
                </td>
                <td>
                </td>
                   
                </tr>
            </table>
        </asp:Panel>
            
            <asp:ModalPopupExtender ID="ImageButton1_ModalPopupExtender" runat="server" 
                PopupControlID="Panel1" Enabled="True" TargetControlID="ImageButton1" CancelControlID="CloseButton" DropShadow="true" BackgroundCssClass="modalBackground">
                <Animations>
 <OnShowing>
            
 <Sequence>
            
 <StyleAction AnimationTarget="CloseButton" Attribute="display" Value="none" />
            
 <Resize Duration="0" Height="80px" Width="100px" />
            
 </Sequence>
            
 </OnShowing>
            
 <OnShown>
            
 <Sequence>
            
<Parallel>
            
 <FadeIn />
            
 <Scale ScaleFactor="5" Center="True" />
            
 </Parallel>
            
 <StyleAction AnimationTarget="CloseButton" Attribute="display" Value="" />
            
 </Sequence>
            
 </OnShown>
            
 <OnHiding>
            
 <Sequence>
            
 <StyleAction AnimationTarget="CloseButton" Attribute="display" Value="none" />
            
<Parallel>
            
 <FadeOut />
            
 <Scale ScaleFactor="5" Center="True" />
            
 </Parallel>
            
 </Sequence>
            
 </OnHiding>
            
 </Animations>
 
            </asp:ModalPopupExtender>
        
               &nbsp;&nbsp;&nbsp;
                <br />
                <br />
                <asp:Label ID="Label2" runat="server" Text='<%# bind("description") %>' 
                Font-Bold="True" Font-Italic="True" Font-Names="Times New Roman" 
                Font-Size="Large" ForeColor="#006666"></asp:Label>
            </ItemTemplate>
            <SelectedItemStyle BackColor="#C5BBAF" Font-Bold="True" ForeColor="#333333" />
        </asp:DataList>
    <table id="tblPaging" runat="server">
    <tr>
    <td style="padding-right: 7px" valign="top">
    <asp:LinkButton ID="lnkbtnPrevious" runat="server" OnClick="lnkbtnPrevious_Click">Previous</asp:LinkButton>
    </td>
    <td valign="top">
    <asp:DataList ID="dlPaging" runat="server" OnItemCommand="dlPaging_ItemCommand" OnItemDataBound="dlPaging_ItemDataBound"
    RepeatDirection="Horizontal">
    <ItemTemplate>
    <asp:LinkButton ID="lnkbtnPaging" runat="server" CommandArgument='<%# Eval("PageIndex") %>'
    CommandName="lnkbtnPaging" Text='<%# Eval("PageText") %>'></asp:LinkButton>
    </ItemTemplate>
    </asp:DataList>
    </td>
    <td style="padding-left: 7px" valign="top">
    <asp:LinkButton ID="lnkbtnNext" runat="server" OnClick="lnkbtnNext_Click">Next</asp:LinkButton>
    </td>
    </tr>
    </table>
  
    </asp:Content>


