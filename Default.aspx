<%@ page language="C#" autoeventwireup="true" inherits="_Default, App_Web_bxv5vxh2" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <script type="text/javascript" src="http://maps.googleapis.com/maps/api/js?sensor=false"></script>
<script type="text/javascript">
    var directionsDisplay;
    var directionsService = new google.maps.DirectionsService();

    function InitializeMap() {
        directionsDisplay = new google.maps.DirectionsRenderer();
        var latlng = new google.maps.LatLng(23.2167, 72.6833);
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
   <h2>Google Map Search  </h2>
<table>
<tr>
<td>
    <input id="addressinput" type="text" style="width: 447px" />  
</td>
<td>
    <input id="Button1" type="button" value="Find" onclick="return Button1_onclick()" /><br />
    </td>
</tr>
<tr>
<td colspan ="2">
<div id ="map" style="height: 390px; width: 489px" > </div>
</td>
</tr>
</table>
</body>
</html>
