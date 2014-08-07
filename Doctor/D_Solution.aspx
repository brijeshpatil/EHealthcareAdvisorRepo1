<%@ page title="" language="C#" masterpagefile="~/Doctor/DoctorMaster.master" autoeventwireup="true" inherits="Doctor_D_Solution, App_Web_g3fevbmj" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <script type ="text/javascript" >
    function validation() {
        if (document.getElementById("<%=tsolution.ClientID%>").value == "") {
            alert("Solution can not be blank");
            document.getElementById("<%=tsolution.ClientID%>").focus();
            return false;
        }
    }
        

  </script>
    <style type="text/css">
        .style1
        {
            height: 35px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    5&nbsp;
    <asp:Label ID="Label2" runat="server" 
        style="font-family: 'Times New Roman', Times, serif; font-size: small; font-style: italic; color: #006666" 
        Text="Welcome"></asp:Label>
&nbsp;<asp:Label ID="Label1" runat="server" Text="Label" 
        style="font-family: 'Times New Roman', Times, serif; font-size: small; font-style: italic; color: #CC0000"></asp:Label>
    <table align="center" frame="below" style="border: medium ridge #CCCCCC" >
<tr >
<td colspan="2">
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
        DataKeyNames="Que_id"  CellPadding="4" 
        GridLines="Vertical" Height="280px" Width="685px" BackColor="White" 
        BorderColor="#336666" BorderStyle="Double" BorderWidth="3px" CaptionAlign="Top">
        <Columns>
            <asp:BoundField DataField="Que_id" HeaderText="Question_ID" InsertVisible="False" 
                ReadOnly="True" SortExpression="Que_id" />
            <asp:BoundField DataField="Category" HeaderText="Category" 
                SortExpression="Category" />
            <asp:BoundField DataField="Question" HeaderText="Question of Patient" 
                SortExpression="Question" />
            <asp:BoundField DataField="Wnt_prscrptn" HeaderText="Does Patient wants Prescription?" 
                SortExpression="Wnt_prscrptn" />
            <asp:BoundField DataField="Checkbox" HeaderText="What Additional Information does Patient wants?" 
                SortExpression="Checkbox" />
            <asp:BoundField DataField="Wnt_DietRcmnd" HeaderText="Does Patient want Diet Plan?" 
                SortExpression="Wnt_DietRcmnd" />
            <asp:BoundField DataField="Medicine" HeaderText="Does Patient wants Medicine?" 
                SortExpression="Medicine" />
        </Columns>
        <FooterStyle BackColor="White" ForeColor="#333333" />
        <HeaderStyle BackColor="#336666" Font-Bold="True" ForeColor="White" />
        <PagerStyle BackColor="#336666" ForeColor="White" HorizontalAlign="Center" />
        <RowStyle BackColor="White" ForeColor="#333333" />
        <SelectedRowStyle BackColor="#339966" Font-Bold="True" ForeColor="White" />
        <SortedAscendingCellStyle BackColor="#F7F7F7" />
        <SortedAscendingHeaderStyle BackColor="#487575" />
        <SortedDescendingCellStyle BackColor="#E5E5E5" />
        <SortedDescendingHeaderStyle BackColor="#275353" />
    </asp:GridView>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
        ConnectionString="<%$ ConnectionStrings:HealthcareConnectionString %>">
    </asp:SqlDataSource>
    </td>
</tr>
<tr >
<td colspan="2">
    &nbsp;</td>
</tr>
<tr >
<td style="margin-left: 40px" valign="top" class="style1">
    
    <asp:Label ID="lblentrid" runat="server" Font-Size="X-Large" ForeColor="#204E57" 
        Text="Enter Symptom ID:" 
        style="font-size: large; font-family: 'Times New Roman', Times, serif; font-style: italic; color: #CC0000"></asp:Label>
</td>
<td valign="top" class="style1">
    
    <asp:TextBox ID="TxtBxID" runat="server" Height="22px" Width="370px"></asp:TextBox>

</td>
</tr>
<tr>
<td valign="top" align="left">
    <asp:Label ID="lsolution" runat="server" Font-Size="X-Large" ForeColor="#204E57" 
        Text="Solution:" 
        style="font-family: 'Times New Roman', Times, serif; font-style: italic; font-size: large; color: #006666"></asp:Label>

</td>
<td>
<asp:TextBox ID="tsolution" runat="server" Height="165px" Width="370px" 
        TextMode="MultiLine"></asp:TextBox>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
</td>
</tr>
<tr>

    <br />
    <br />
    <td colspan ="2" align="center" class="style2">
    &nbsp;&nbsp;&nbsp;&nbsp;
    <asp:ImageButton ID="Ibsubmit" runat="server" Height="35px" 
        ImageUrl="~/Images/s.jpg" Width="90px" OnClientClick=" return validation()" 
            onclick="Ibsubmit_Click"/>&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:ImageButton ID="Ibcancel" runat="server" Height="55px" Width ="50px" 
        ImageUrl="~/Images/images (2).jpg"/>
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:ImageButton ID="Ibreset" 
        runat="server"  Height="35px" Width ="90px" 
        ImageUrl="~/Images/images(6).jpg"  />
</td>

</tr>
<tr>
<td align="center">
    &nbsp;</td>
<td>
    &nbsp;</td>
</tr>
<tr>
<td align="center">
    &nbsp;</td>
<td>
    &nbsp;</td>
</tr>
</table>
</asp:Content>

