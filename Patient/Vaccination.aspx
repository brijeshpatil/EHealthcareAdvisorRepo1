<%@ page title="" language="C#" masterpagefile="~/Patient/PatientSide.master" autoeventwireup="true" inherits="Patient_Vaccination, App_Web_qwoa1mme" %>

<%@ Register Assembly="FlashControl" Namespace="Bewise.Web.UI.WebControls" TagPrefix="Bewise" %>

<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="asp" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .demoheading
        {
            color: #CC0000;
            font-family: "Times New Roman", Times, serif;
            font-size: medium;
        }
       
       
        .style1
        {
            width: 318px;
        }
        .style2
        {
            width: 47px;
        }
       
       
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
   <asp:Label ID="Label2" runat="server" 
        style="color: #006666; font-family: 'Times New Roman', Times, serif; font-size: medium; font-style: italic" 
        Text="Welcome"></asp:Label>
&nbsp; <asp:Label ID="Label3" runat="server" Text="Label" style="color: #CC0000; font-family: 'Times New Roman', Times, serif; font-size: small; font-style: italic;" 
        ForeColor="#CC0000"></asp:Label>
    <table style="width: 525px; height: 238px">
<tr>
<td valign="top" class="style2">
    <Bewise:FlashControl ID="FlashControl1" runat="server" Width="245px" 
        Height="220px" MovieUrl="~/Files/vaccine.swf" />
</td>
<td valign="top" class="style1">
    <asp:Label ID="Label1" runat="server" style="font-family: 'Times New Roman', Times, serif; font-size: small; color: #666666; text-align: justify; margin-left: 0px;" 
        
        Text=" Vaccination is the most effective way to prevent infection and severe outcomes caused by influenza viruses.
        <br />
        <br />
    Safe and effective vaccines have been available and used for more than 60 years. Among healthy adults, influenza vaccine can prevent 70% to 90% of influenza-specific illness. Among the elderly, the vaccine reduces severe illness and complications by up to 60%, and deaths by 80%.
    <br />
    <br />
     Vaccination is especially important for people at higher risk of serious influenza complications, and for people who live with or care for high risk individuals." 
        BackColor="White" BorderColor="White" Height="240px" Width="290px" ></asp:Label>
</td>
<td valign="top">
    <asp:Image ID="Image2" runat="server" ImageUrl="~/Images/images66PE2AEQ.jpg" 
        Height="205px" Width="170px" style="margin-left: 3px" />
    <br />
</td>
</tr>
<tr>
<td colspan="2">
    <asp:ImageButton ID="btnInfo" runat="server" OnClientClick="return false;" ToolTip="More Vaccination Information" 
        ImageUrl="~/Images/download (14).jpg" Height="50px" Width="140px" />

    <asp:ScriptManager ID="ScriptManager1" runat="server">
    </asp:ScriptManager>
        <!-- "Wire frame" div used to transition from the button to the info panel -->
        <div id="flyout" style="display: block; overflow: hidden; z-index: 2; background-color: #FFFFFF; border: solid 1px #D0D0D0;"></div>
        
        <!-- Info panel to be displayed as a flyout when the button is clicked -->
        <div id="info" style="display: none; width: 700px; z-index: 2;  filter: progid:DXImageTransform.Microsoft.Alpha(opacity=0); font-size: 12px; border: solid 1px #CCCCCC; background-color: #FFFFFF;width:710px; height:725px" >
            <div id="btnCloseParent" style="float: right;  filter: progid:DXImageTransform.Microsoft.Alpha(opacity=0);">
                <asp:LinkButton id="btnClose" runat="server" OnClientClick="return false;" Text="Close" 
                    Style="background-color: #666666; color: #FFFFFF; font-weight: bold; text-decoration: none; border: outset thin #FFFFFF;" />
            </div>
            <div>
                <p>
                    <asp:Image ID="Image3" runat="server" ImageUrl="~/Images/v3.jpg" Height="690px" Width="700px" ImageAlign="Top" />  
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
    <asp:AnimationExtender ID="OpenAnimation" runat="server" TargetControlID="btnInfo">
    <Animations>
                <OnClick>
                    <Sequence>
                        <%-- Disable the button so it can't be clicked again --%>
                        <EnableAction Enabled="true" />
                        
                        <%-- Position the wire frame on top of the button and show it --%>
                        <ScriptAction Script="Cover($get('ctl00_SampleContent_btnInfo'), $get('flyout'));" />
                        <StyleAction AnimationTarget="flyout" Attribute="display" Value="block"/>
                        
                        <%-- Move the wire frame from the button's bounds to the info panel's bounds --%>
                        <Parallel AnimationTarget="flyout" Duration=".3" Fps="25">
                            <Move Horizontal="150" Vertical="-50" />
                            <Resize Width="700" Height="700" />
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
    <asp:AnimationExtender ID="CloseAnimation" runat="server" TargetControlID="btnClose">
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
                        <StyleAction Attribute="display" Value="none"/>
                        <StyleAction Attribute="width" Value="650px"/>
                        <StyleAction Attribute="height" Value="650px"/>
                        <StyleAction Attribute="fontSize" Value="12px"/>
                        <OpacityAction AnimationTarget="btnCloseParent"  />
                        
                        <%--  Enable the button so it can be played again --%>
                        <EnableAction AnimationTarget="btnInfo" Enabled="true" />
                    </Sequence>
                </OnClick>
                <OnMouseOver>
                    <Color Duration=".2" PropertyKey="color" StartValue="#FFFFFF" EndValue="#FF0000" />
                </OnMouseOver>
                <OnMouseOut>
                    <Color Duration=".2" PropertyKey="color" StartValue="#FF0000" EndValue="#FFFFFF" />
                </OnMouseOut>
             </Animations>
    </asp:AnimationExtender>  
<%--        <asp:Panel ID="xmlShow" runat="server" style="display: none; z-index: 3; background-color:#DDD; border: thin solid navy;">--%>
            <%--<pre style="margin: 5px">&lt;ajaxToolkit:AnimationExtender id="OpenAnimation" runat="server" TargetControlID="btnInfo"&gt;
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
       <%-- </asp:Panel>
        
        <asp:Panel ID="xmlClose" runat="server" style="display: none; z-index: 3; background-color: #DDD; border: thin solid navy;">--%>
           <%-- <pre style="margin: 5px" height="700px">&lt;ajaxToolkit:AnimationExtender id="CloseAnimation" runat="server" TargetControlID="btnClose"&gt;
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
                    AnimationTarget="btnInfo" /&gt;
        &lt;/Sequence&gt;
    &lt;/OnClick&gt;
&lt;/Animations&gt;
&lt;/ajaxToolkit:AnimationExtender&gt;
        </pre>--%>
       <%-- </asp:Panel>--%>
</td>
</tr>
</table>
<br />
<div class="demoarea">
        <div class="demoheading" dir="ltr">Vaccines recommended by Government and available at Government Hospitals
            <br />
            at reduced costs includes:</div>
    <asp:Accordion ID="Accordion1" runat="server" SelectedIndex="0"
            HeaderCssClass="accordionHeader" HeaderSelectedCssClass="accordionHeaderSelected"
            ContentCssClass="accordionContent" FadeTransitions="false" FramesPerSecond="40" 
            TransitionDuration="250" AutoSize="None" RequireOpenedPane="false" 
            SuppressHeaderPostbacks="true" Height="360px" Width="550px" 
            style="margin-left: 10px">
    <Panes>
        <asp:AccordionPane ID="AccordionPane1" runat="server">
        <Header><a href="" class="accordionLink">1. BCG Vaccine(mandatory)</a></Header>
                <Content>
                    It is given as an intradermal injection soon after birth; prevents TB. It can cause a raised area at the site of injection,do not apply any medicine to the site.
                     </Content>
        </asp:AccordionPane>
        <asp:AccordionPane ID="AccordionPane2" runat="server">
         <Header><a href="" class="accordionLink">2. OPV Vaccine(mandatory)</a></Header>
                <Content>
                   It is given as several doses till the age of five, this prevents polio.
                   Poliomyelitis is a disease which effects the nerves and paraylsis.
                   It is given free of cost to all children below five years of age under the Pulse Polio Programme.
                    </Content>
        </asp:AccordionPane>
        <asp:AccordionPane ID="AccordionPane3" runat="server">
        <Header><a href="" class="accordionLink">3. DPT Vaccine(mandatory)</a></Header>
                <Content>
                   It is given as an intradermal injection, it prevents three diseases(Diptheria,Pertrussis,Tetanus).
                   <br />
                   <br />
                   a.Diptheria :- it is an infection which starts with a "sore throat" but can rapidly lead to formation of toxins(poisons) causing life threatening complications.
                   <br />
                   <br />
                   b.Pertrussis :- It is an "whooping cough" which effects the lungs in children below 15 monts of age.
                   Starting with cold and cough, it progresses with episodes of cough with a "whoop".Complications include pnuemonia,brain damage and death.
                   <br />
                   <br />
                   c.Tetanus :- It starts when a wound is infected with bacteria found in soil, it affects the body's muscles and nerves.
                   The toxins produced by the bacteria causes muscle spasms,interferes with nerves, and can be fatal.  
                </Content>
        </asp:AccordionPane>
        <asp:AccordionPane ID="AccordionPane4" runat="server">
         <Header><a href="" class="accordionLink">4. Measles Vaccine(mandatory)</a></Header>
                <Content>
                    The vaccine is given subcutaneously(just below the skin) as the baby completes nine months.A very contagious viral infection,measles start as cold and cough with rashes progressing from the hairline downwards.
                    It can progress to diarrhoea,pnuemonia,infection of the brain leading to death, if untreated.
                </Content>
        </asp:AccordionPane>
          </Panes>
        </asp:Accordion>
        
        <script language="javascript" type="text/javascript">
            function toggleFade() {
                var behavior = $find('ctl00_SampleContent_MyAccordion_AccordionExtender');
                if (behavior) {
                    behavior.set_FadeTransitions(!behavior.get_FadeTransitions());
                }
            }
            function changeAutoSize() {
                var behavior = $find('ctl00_SampleContent_MyAccordion_AccordionExtender');
                var ctrl = $get('autosize');
                if (behavior) {
                    var size = 'None';
                    switch (ctrl.selectedIndex) {
                        case 0:
                            behavior.get_element().style.height = 'auto';
                            size = Sys.Extended.UI.AutoSize.None;
                            break;
                        case 1:
                            behavior.get_element().style.height = '400px';
                            size = Sys.Extended.UI.AutoSize.Limit;
                            break;
                        case 2:
                            behavior.get_element().style.height = '400px';
                            size = Sys.Extended.UI.AutoSize.Fill;
                            break;
                    }
                    behavior.set_AutoSize(size);
                }
                if (document.focus) {
                    document.focus();
                }
            }
        </script>
        </div>
    
   
</asp:Content>

