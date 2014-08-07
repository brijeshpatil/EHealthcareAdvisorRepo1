<%@ page title="" language="C#" masterpagefile="~/Admin/AdminMaster.master" autoeventwireup="true" inherits="Admin_Recipe_admin, App_Web_3my4bwvi" %>

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
 <asp:Label ID="Label1" runat="server" Text="Welcome" 
        style="color: #006666; font-family: 'Times New Roman', Times, serif; font-size: small; font-style: italic"></asp:Label>
    &nbsp;&nbsp;&nbsp;
    <asp:Label ID="Label3" runat="server" Text="Label" 
        style="font-family: 'Times New Roman', Times, serif; font-size: small; font-style: italic; color: #CC0000"></asp:Label>
 <asp:GridView ID="GridView1"  runat="server" AutoGenerateColumns="False" 
            AllowPaging="True" CellPadding="15" onrowcancelingedit="GridView1_RowCancelingEdit" 
                        onrowdeleting="GridView1_RowDeleting" onrowediting="GridView1_RowEditing" 
                        onrowupdating="GridView1_RowUpdating" 
           CellSpacing="2"   Font-Italic="True" BackColor="White" BorderColor="#336666" 
           BorderStyle="Double" BorderWidth="3px" GridLines="Horizontal" 
           HorizontalAlign="Center" PageSize="2" Width="937px" AllowSorting="True"   
           DataKeyNames="ID" onpageindexchanging="GridView1_PageIndexChanging">
            <Columns>
                
                
                
                <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" 
                    ShowSelectButton="True" />
                
                
                <asp:TemplateField HeaderText="Image">
                     <EditItemTemplate>
                         <asp:Image ID="Image10" runat="server" Height="172px" Width="163px" ImageUrl='<%# bind("Image") %>' />
                         <br />
                         <br />
                         <asp:FileUpload ID="FileUpload1" runat="server" />
                     </EditItemTemplate>
                     <ItemTemplate>
                        <asp:Image ID="Image9" runat="server"  Height="172px" Width="163px"
                ImageUrl='<%# bind("Image") %>'  />
                            </ItemTemplate>
                
                </asp:TemplateField>
                <asp:TemplateField HeaderText="Description">
                    <EditItemTemplate>
                        <asp:TextBox ID="TextBox1" runat="server" Text='<%# bind("description") %>'></asp:TextBox>
                    </EditItemTemplate>
                <ItemTemplate>
                    <asp:Label ID="Label1" runat="server" Text='<%# bind("description") %>'></asp:Label>
                </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="More..">
                    <EditItemTemplate>
                        <asp:TextBox ID="TextBox2" runat="server" TextMode="MultiLine" Text='<%# bind("mored") %>'></asp:TextBox>
                    </EditItemTemplate>
                <ItemTemplate>
                    <asp:Label ID="Label2" runat="server" Text='<%# bind("mored") %>'></asp:Label>
                </ItemTemplate>
                </asp:TemplateField>
            </Columns>
            
                <FooterStyle BackColor="White" ForeColor="#333333" />
                <PagerStyle BackColor="#336666" ForeColor="White" 
                    HorizontalAlign="Center" />
                <RowStyle BackColor="White" ForeColor="#333333"  />
                <SelectedRowStyle BackColor="#339966" ForeColor="White" Font-Bold="True" />
                <HeaderStyle BackColor="#336666" Font-Bold="True" ForeColor="White" />
                <SortedAscendingCellStyle BackColor="#F7F7F7" />
            <SortedAscendingHeaderStyle BackColor="#487575" />
            <SortedDescendingCellStyle BackColor="#E5E5E5" />
            <SortedDescendingHeaderStyle BackColor="#275353" />
        </asp:GridView>
       <br />
       <br />
       <asp:Button ID="Button1" runat="server" BackColor="White" Font-Bold="True" 
           Font-Italic="False" Font-Names="Times New Roman" Font-Size="Large" 
           Text="Add Recipee ...."  ForeColor="#336666" />
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
            <asp:Image ID="i21" runat="server" Height="172px" Width="163px" />
                         <br />
                         <br />
                         <asp:FileUpload ID="File1" runat="server" />
</td>
<td>

    <asp:TextBox ID="des" runat="server" ></asp:TextBox>
</td>
<td>
</td>
<td></td>
<td>
 <asp:TextBox ID="mored" runat="server" TextMode="MultiLine" ></asp:TextBox>
</td>
</tr>             
<tr>
<td></td>
<td>
</td>
<td></td>
<td></td>
    <asp:Button ID="Button2" runat="server" Text="Add ......" OnClick="Button2_Click" />
</tr>
</table>
                 
        </asp:Panel>
 <asp:ToolkitScriptManager ID="ToolkitScriptManager1" runat="server">
                         </asp:ToolkitScriptManager>

              <asp:ModalPopupExtender ID="i1" runat="server" 
                PopupControlID="Panel1" Enabled="True" TargetControlID="Button1" CancelControlID="CloseButton" DropShadow="true" BackgroundCssClass="modalBackground">
                <Animations>
 <OnShowing>
            
 <Sequence>
            
 <StyleAction AnimationTarget="CloseButton" Attribute="display" Value="none" />
            
 <Resize Duration="0" Height="50px" Width="155px" />
            
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
</asp:Content>

