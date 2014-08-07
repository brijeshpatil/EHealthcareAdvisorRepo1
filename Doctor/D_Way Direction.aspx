<%@ page title="" language="C#" masterpagefile="~/Doctor/DoctorMaster.master" autoeventwireup="true" inherits="Doctor_D_Way_Direction, App_Web_g3fevbmj" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
 <script type="text/javascript" src="http://maps.googleapis.com/maps/api/js?sensor=false"></script>
<script language="javascript" type="text/javascript">
    var directionsDisplay;
    var directionsService = new google.maps.DirectionsService();

    function InitializeMap() {
        directionsDisplay = new google.maps.DirectionsRenderer();
        var latlng = new google.maps.LatLng(17.425503, 78.47497);
        var myOptions =
        {
            zoom: 13,
            center: latlng,
            mapTypeId: google.maps.MapTypeId.ROADMAP
        };
        var map = new google.maps.Map(document.getElementById("Gmap"), myOptions);

        directionsDisplay.setMap(map);
        directionsDisplay.setPanel(document.getElementById('directionpanel'));

        var control = document.getElementById('control');
        control.style.display = 'block';


    }



    function calcRoute() {

        var start = document.getElementById('startvalue').value;
        var end = document.getElementById('endvalue').value;
        var request = {
            origin: start,
            destination: end,
            travelMode: google.maps.DirectionsTravelMode.DRIVING
        };
        directionsService.route(request, function (response, status) {
            if (status == google.maps.DirectionsStatus.OK) {
                directionsDisplay.setDirections(response);
            }
        });

    }



    function btnDirections_onclick() {
        calcRoute();
    }

    window.onload = InitializeMap;
    </script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
&nbsp;
    <asp:Label ID="Label3" runat="server" 
        style="font-family: 'Times New Roman', Times, serif; font-size: small; font-style: italic; color: #006666" 
        Text="Welcome"></asp:Label>
&nbsp;<asp:Label ID="Label4" runat="server" Text="Label" 
        style="font-family: 'Times New Roman', Times, serif; font-size: small; font-style: italic; color: #CC0000"></asp:Label>
<table id ="control">
<tr>
<td class="style1">
<table>
<tr>
<td><asp:Label ID="Label1" runat="server" Text="From:" 
        style="font-family: 'Times New Roman', Times, serif; font-size: medium; font-style: italic; color: #006666"></asp:Label></td>
<td>
    <input id="startvalue" type="text" style="width: 305px; height: 25px;" /></td>
</tr>
<tr>
<td>

    <asp:Label ID="Label2" runat="server" Text="To:" 
        style="font-family: 'Times New Roman', Times, serif; font-size: medium; font-style: italic; color: #CC0000"></asp:Label></td>
<td><input id="endvalue" type="text" style="width: 305px; height: 25px;" /></td>
</tr>
<tr>
<td align ="right">
    <input id="btnDirections" type="button" value="Get Direction"
        onclick="return btnDirections_onclick()" /></td>
</tr>
</table>
</td>
</tr>
<tr>
<td valign ="top">
<div id ="directionpanel"  style="height: 435px; overflow: auto; width: 445px;" ></div>
</td>
<td valign ="top">
<div id ="Gmap" style="height: 435px; width: 490px"></div>
</td>
</tr>
</table>
</asp:Content>

