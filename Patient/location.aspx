<%@ page language="C#" masterpagefile="~/Patient/PatientSide.master" autoeventwireup="true" inherits="_Default, App_Web_qwoa1mme" %>



<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <script type="text/javascript" src="http://maps.googleapis.com/maps/api/js?sensor=false"></script>
<script language="javascript" type="text/javascript">

    var map;
    var geocoder;
    function InitializeMap() {

        var latlng = new google.maps.LatLng(17.425503, 78.47497);
        var myOptions =
        {
            zoom: 13,
            center: latlng,
            mapTypeId: google.maps.MapTypeId.ROADMAP,
            disableDefaultUI: true
        };
        map = new google.maps.Map(document.getElementById("map"), myOptions);
    }

    function FindLocaiton() {
        geocoder = new google.maps.Geocoder();
        InitializeMap();

        var address = document.getElementById("addressinput").value;
        geocoder.geocode({ 'address': address }, function (results, status) {
            if (status == google.maps.GeocoderStatus.OK) {
                map.setCenter(results[0].geometry.location);
                var marker = new google.maps.Marker({
                    map: map,
                    position: results[0].geometry.location
                });

            }
            else {
                alert("Geocode was not successful for the following reason: " + status);
            }
        });

    }


    function Button1_onclick() {
        FindLocaiton();
    }

    window.onload = InitializeMap;

</script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
 <asp:Label ID="Label2" runat="server" 
        style="color: #006666; font-family: 'Times New Roman', Times, serif; font-size: medium; font-style: italic" 
        Text="Welcome"></asp:Label>
&nbsp; <asp:Label ID="Label1" runat="server" Text="Label" style="color: #CC0000; font-family: 'Times New Roman', Times, serif; font-size: small; font-style: italic;" 
        ForeColor="#CC0000"></asp:Label>
<h2> Map Search  </h2>
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
</asp:Content>
