<%@ page title="" language="C#" masterpagefile="~/Patient/PatientSide.master" autoeventwireup="true" inherits="Patient_Submit_Symptoms, App_Web_qwoa1mme" %>

<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="asp" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
<script type ="text/javascript" >
    function validation()
    {
        if (document.getElementById("<%=tqstn.ClientID%>").value == "")
             {
                 alert("Please Enter your Sympptoms");
                 document.getElementById("<%=tqstn.ClientID%>").focus();
                 return false;
             }
             if (document.getElementById("<%=tqstn.ClientID%>").value == "") {
                 alert("Please Enter your Sympptoms");
                 document.getElementById("<%=tqstn.ClientID%>").focus();
                 return false;
             }
         }
        

  </script>
    <style type="text/css">
        .style1
        {
            width: 325px;
        }
        .style2
        {
            width: 316px;
            height: 35px;
        }
        .style3
        {
            height: 35px;
        }
        .style4
        {
            width: 325px;
            height: 59px;
        }
        .style5
        {
            height: 59px;
        }
        .style6
        {
            width: 325px;
            height: 150px;
        }
        .style7
        {
            height: 150px;
        }
        .style8
        {
            width: 325px;
            height: 35px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
   <asp:Label ID="Label2" runat="server" 
        style="color: #006666; font-family: 'Times New Roman', Times, serif; font-size: medium; font-style: italic" 
        Text="Welcome"></asp:Label>
&nbsp; <asp:Label ID="Label1" runat="server" Text="Label" style="color: #CC0000; font-family: 'Times New Roman', Times, serif; font-size: small; font-style: italic;" 
        ForeColor="#CC0000"></asp:Label>

    <table align="center" frame="below" 
        style="border: medium ridge #CCCCCC; width: 710px;" >
        <tr >
            <td style="margin-left: 40px" class="style1">
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr >
            <td style="margin-left: 40px" class="style1">
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr >
            <td style="margin-left: 40px" class="style8">
                <asp:Label ID="lquery" runat="server" Font-Size="X-Large" ForeColor="#204E57" 
        Text="Category:" 
                    style="font-size: large; font-family: 'Times New Roman', Times, serif; font-style: italic; color: #CC0000;"></asp:Label>
            </td>
            <td class="style3">
                <asp:DropDownList ID="DDC" runat="server" Height="25px" Width="275px" 
                    ForeColor="#CC0000">
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
            <td class="style6" valign="top">
                <br />
                <asp:Label ID="lsolution" runat="server" Font-Size="X-Large" ForeColor="#204E57" 
        Text="Question/Symptoms:" 
                    style="font-size: large; font-family: 'Times New Roman', Times, serif; font-style: italic; color: #006666;"></asp:Label>
            </td>
            <td class="style7">
                <asp:TextBox ID="tqstn" runat="server" Height="140px" Width="275px" 
        TextMode="MultiLine"></asp:TextBox>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            </td>
        </tr>
        <tr>
            <td class="style4" valign="top">
&nbsp;<asp:Label ID="lsolution0" runat="server" Font-Size="X-Large" ForeColor="#204E57" 
        Text="Do You Want Prescription from doctor ?:" 
                    style="font-size: large; font-family: 'Times New Roman', Times, serif; font-style: italic; color: #CC0000;"></asp:Label>
            </td>
           <td align="left" class="style5" valign="top">
               <asp:ScriptManager ID="ScriptManager1" runat="server">
               </asp:ScriptManager>
        <p>
            <!-- Button used to launch the animation -->
            
           <asp:RadioButton ID="RDBY" runat="server" Text="Yes" GroupName="rd1" 
                style="color: #CC0000" AutoPostBack="True"  />
&nbsp;
                <asp:RadioButton ID="RDBN" runat="server" Text="No" 
                GroupName="rd1" style="color: #CC0000" AutoPostBack="True" />
        </p>
       

        
        <!-- "Wire frame" div used to transition from the button to the info panel -->
        <div id="flyout" style="display: none; overflow: hidden; z-index: 2; background-color: #FFFFFF; border: solid 1px #D0D0D0;"></div>
        
        <!-- Info panel to be displayed as a flyout when the button is clicked -->

        <div id="info" style="display: none; width: 250px; z-index: 2; opacity: 0; filter: progid:DXImageTransform.Microsoft.Alpha(opacity=0); font-size: 16px; border: solid 1px #CCCCCC; background-color: #FFFFFF; padding: 8px;">
            <div id="btnCloseParent" style="float: right; opacity: 0; filter: progid:DXImageTransform.Microsoft.Alpha(opacity=0);">
                <asp:LinkButton id="btnClose" runat="server" OnClientClick="return true;" Text="X" ToolTip="Close"
                    Style="background-color: #666666; color: #FFFFFF; text-align: center; font-weight: bold; text-decoration: none; border: outset thin #FFFFFF; padding: 5px;" />
            </div>
            <div>
            <p>
                <asp:CheckBoxList ID="CheckBoxList1" runat="server">
                <asp:ListItem>Medicine</asp:ListItem>
                <asp:ListItem>Chemist</asp:ListItem>
                <asp:ListItem>Hospital</asp:ListItem>
                <asp:ListItem>Blood Bank</asp:ListItem>
                </asp:CheckBoxList>
            </p>
            </div>
           
        </div>
        
        <script type="text/javascript" language="javascript">
            // Move an element directly on top of another element (and optionally
            // make it the same size)
            function Cover(bottom, top, ignoreSize) {
                var location = Sys.UI.DomElement.getLocation(bottom);
                top.style.position = 'absolute';
                top.style.top = location.y + 'px';
                top.style.left = location.x + 'px';
                if (!ignoreSize) {
                    top.style.height = bottom.offsetHeight + 'px';
                    top.style.width = bottom.offsetWidth + 'px';
                }
            }
        </script>
  
               <%-- Position the wire frame on top of the button and show it --%>
        <asp:AnimationExtender id="OpenAnimation" runat="server" TargetControlID="RDBY">
            <Animations>
                <OnClick>
                    <Sequence>
                        <%-- Disable the button so it can't be clicked again --%>
                        <EnableAction Enabled="true" />
                        
                        <%-- Position the wire frame on top of the button and show it --%>
                        <ScriptAction Script="Cover($get('ctl00_SampleContent_RadioButton1'), $get('flyout'));" />
                        <StyleAction AnimationTarget="flyout" Attribute="display" Value="block"/>
                        
                        <%-- Move the wire frame from the button's bounds to the info panel's bounds --%>
                        <Parallel AnimationTarget="flyout" Duration=".3" Fps="25">
                            <Move Horizontal="150" Vertical="-50" />
                            <Resize Width="260" Height="280" />
                            <Color PropertyKey="backgroundColor" StartValue="#AAAAAA" EndValue="#FFFFFF" />
                        </Parallel>
                        
                        <%-- Move the info panel on top of the wire frame, fade it in, and hide the frame --%>
                        <ScriptAction Script="Cover($get('flyout'), $get('info'), true);" />
                        <StyleAction AnimationTarget="info" Attribute="display" Value="block"/>
                        <FadeIn AnimationTarget="info" Duration=".2"/>
                        <StyleAction AnimationTarget="flyout" Attribute="display" Value="none"/>
                        
                        <%-- Flash the text/border red and fade in the "close" button --%>
                        <Parallel AnimationTarget="info" Duration=".5">
                            <Color PropertyKey="color" StartValue="#666666" EndValue="#FF0000" />
                            <Color PropertyKey="borderColor" StartValue="#666666" EndValue="#FF0000" />
                        </Parallel>
                        <Parallel AnimationTarget="info" Duration=".5">
                            <Color PropertyKey="color" StartValue="#FF0000" EndValue="#666666" />
                            <Color PropertyKey="borderColor" StartValue="#FF0000" EndValue="#666666" />
                            <FadeIn AnimationTarget="btnCloseParent" MaximumOpacity=".9" />
                        </Parallel>
                    </Sequence>
                </OnClick>
            </Animations>
        </asp:AnimationExtender>
        <asp:animationextender id="CloseAnimation" runat="server" 
            TargetControlID="btnClose">
            <Animations>
                <OnClick>
                    <Sequence AnimationTarget="info">
                        <%--  Shrink the info panel out of view --%>
                        <StyleAction Attribute="overflow" Value="hidden"/>
                        <Parallel Duration=".3" Fps="15">
                            <Scale ScaleFactor="0.05" Center="true" ScaleFont="true" FontUnit="px" />
                            <FadeOut />
                        </Parallel>
                        
                        <%--  Reset the sample so it can be played again --%>
                        <StyleAction Attribute="display" Value="100px"/>
                        <StyleAction Attribute="width" Value="250px"/>
                        <StyleAction Attribute="height" Value="50px"/>
                        <StyleAction Attribute="fontSize" Value="12px"/>
                        <OpacityAction AnimationTarget="btnCloseParent" Opacity="0" />
                        
                        <%--  Enable the button so it can be played again --%>
                        <EnableAction AnimationTarget="RadioButton1" Enabled="true" />
                    </Sequence>
                </OnClick>
                <OnMouseOver>
                    <Color Duration=".1" PropertyKey="color" StartValue="#FFFFFF" EndValue="#FF0000" />
                </OnMouseOver>
                <OnMouseOut>
                    <Color Duration=".1" PropertyKey="color" StartValue="#FF0000" EndValue="#FFFFFF" />
                </OnMouseOut>
             </Animations>
        </asp:animationextender>
        
        <asp:Panel ID="xmlShow" runat="server" style="display: none; z-index: 3; background-color:#DDD; border: thin solid navy;">
           <%-- <pre style="margin: 5px">&lt;
            <ajaxToolkit:AnimationExtender id="OpenAnimation" runat="server" TargetControlID="RadioButton1"&gt;
&lt;Animations&gt;
    &lt;OnClick&gt;
        &lt;Sequence&gt;
           <em>&lt;%-- Disable the button --%&gt;</em>
            &lt;EnableAction Enabled="false" /&gt; 
           <em>&lt;%-- Show the flyout --%&gt;</em>
            &lt;Parallel AnimationTarget="flyout" Duration=".3" Fps="25"&gt;
                &lt;Move Horizontal="150" Vertical="-50" /&gt;
                &lt;Resize Height="260" Width="280" /&gt;
                &lt;Color AnimationTarget="flyout" PropertyKey="backgroundColor"
                        StartValue="#AAAAAA" EndValue="#FFFFFF" /&gt;
            &lt;/Parallel&gt;
          <em>&lt;%-- Fade in the text --%&gt; </em>
            &lt;FadeIn AnimationTarget="info" Duration=".2"/&gt;
          <em>&lt;%-- Cycle the text and border color to red and back --%&gt;</em>
            &lt;Parallel AnimationTarget="info" Duration=".5"&gt;
                &lt;Color PropertyKey="color"
                        StartValue="#666666" EndValue="#FF0000" /&gt;
                &lt;Color PropertyKey="borderColor"
                        StartValue="#666666" EndValue="#FF0000" /&gt;
            &lt;/Parallel&gt;
            &lt;Parallel AnimationTarget="info" Duration=".5"&gt;
                &lt;Color PropertyKey="color"
                        StartValue="#FF0000" EndValue="#666666" /&gt;
                &lt;Color PropertyKey="borderColor"
                        StartValue="#FF0000" EndValue="#666666" /&gt;
                &lt;FadeIn AnimationTarget="btnCloseParent" MaximumOpacity=".9" /&gt;
            &lt;/Parallel&gt;
        &lt;/Sequence&gt;
    &lt;/OnClick&gt;
&lt;/Animations&gt;
&lt;/ajaxToolkit:AnimationExtender&gt;</pre>--%>
        </asp:Panel>
        
        <asp:Panel ID="xmlClose" runat="server" style="display: none; z-index: 3; background-color: #DDD; border: thin solid navy;">
          <%--  <pre style="margin: 5px">&lt;<ajaxToolkit:AnimationExtender id="CloseAnimation" runat="server" TargetControlID="btnClose"&gt;
&lt;Animations&gt;
    &lt;OnClick&gt;
        &lt;Sequence AnimationTarget="info"&gt;
          <em>&lt;%-- Scale the flyout down to 5% to make it disappear --%&gt;</em>
            &lt;Parallel Duration=".3" Fps="15"&gt;
                &lt;Scale ScaleFactor="0.05" Center="true"
                        ScaleFont="true" FontUnit="px" /&gt;
                &lt;FadeOut /&gt;
            &lt;/Parallel&gt;
          <em>&lt;%-- Reset the styles on the info box --%&gt;</em>
            &lt;StyleAction Attribute="display" Value="none"/&gt;
            &lt;StyleAction Attribute="width" Value="250px"/&gt;
            &lt;StyleAction Attribute="height" Value=""/&gt;
            &lt;StyleAction Attribute="fontSize" Value="12px"/&gt;
          <em>&lt;%-- Re-enable the button --%&gt;</em>
            &lt;EnableAction Enabled="true"
                    AnimationTarget="RadioButton1" /&gt;
        &lt;</Sequence>&gt;
    &lt;</OnClick>&gt;
&lt;</Animations>&gt;
&lt;</ajaxToolkit:AnimationExtender>&gt;
        </pre>--%>
        </asp:Panel>
        
        <%-- Flash the text/border red and fade in the "close" button --%>
    

         </td>
        </tr>
        <tr>
            <td class="style8" valign="top">
                <asp:Label ID="lsolution1" runat="server" Font-Size="X-Large" ForeColor="#204E57" 
        Text="Do you want Diet Recommendation ?:" 
                    style="font-size: large; font-family: 'Times New Roman', Times, serif; font-style: italic; color: #006666;"></asp:Label>
            </td>
            <td class="style3" valign="top">
                <asp:RadioButton ID="RBY" runat="server" Text="Yes" GroupName="rd2" 
                    ForeColor="#006666" />
&nbsp;<asp:RadioButton ID="RBN" runat="server" Text="No" GroupName="rd2" ForeColor="#006666" />
            </td>
        </tr>
        <tr>
        <td colspan ="2" align="center" class="style2">
    &nbsp;&nbsp;&nbsp;&nbsp;
    <asp:ImageButton ID="Ibsubmit" runat="server" Height="35px" 
        ImageUrl="~/Images/s.jpg" Width="90px" onclick="Ibsubmit_Click" OnClientClick=" return validation()" />&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:ImageButton ID="Ibcancel" runat="server" Height="60px" Width ="55px" 
        ImageUrl="~/Images/images (2).jpg" onclick="Ibcancel_Click"/>
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:ImageButton ID="Ibreset" 
        runat="server"  Height="35px" Width ="90px" 
        ImageUrl="~/Images/images(6).jpg" onclick="Ibreset_Click"  />
</td>
        </tr>
        <tr>
            <td align="center" class="style1">
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td align="center" class="style1">
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
    </table>
</asp:Content>

