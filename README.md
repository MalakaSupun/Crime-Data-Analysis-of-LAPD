# LA Map
<iframe srcdoc="<!DOCTYPE html>
<html>
<head>
    
    <meta http-equiv="content-type" content="text/html; charset=UTF-8" />
    
        <script>
            L_NO_TOUCH = false;
            L_DISABLE_3D = false;
        </script>
    
    <style>html, body {width: 100%;height: 100%;margin: 0;padding: 0;}</style>
    <style>#map {position:absolute;top:0;bottom:0;right:0;left:0;}</style>
    <script src="https://cdn.jsdelivr.net/npm/leaflet@1.9.3/dist/leaflet.js"></script>
    <script src="https://code.jquery.com/jquery-3.7.1.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/js/bootstrap.bundle.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/Leaflet.awesome-markers/2.0.2/leaflet.awesome-markers.js"></script>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/leaflet@1.9.3/dist/leaflet.css"/>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/css/bootstrap.min.css"/>
    <link rel="stylesheet" href="https://netdna.bootstrapcdn.com/bootstrap/3.0.0/css/bootstrap-glyphicons.css"/>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/@fortawesome/fontawesome-free@6.2.0/css/all.min.css"/>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/Leaflet.awesome-markers/2.0.2/leaflet.awesome-markers.css"/>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/gh/python-visualization/folium/folium/templates/leaflet.awesome.rotate.min.css"/>
    
            <meta name="viewport" content="width=device-width,
                initial-scale=1.0, maximum-scale=1.0, user-scalable=no" />
            <style>
                #map_10c1c821655bee24077d02ed21fdab06 {
                    position: relative;
                    width: 100.0%;
                    height: 100.0%;
                    left: 0.0%;
                    top: 0.0%;
                }
                .leaflet-container { font-size: 1rem; }
            </style>
        
</head>
<body>
    
    
            <div class="folium-map" id="map_10c1c821655bee24077d02ed21fdab06" ></div>
        
</body>
<script>
    
    
            var map_10c1c821655bee24077d02ed21fdab06 = L.map(
                "map_10c1c821655bee24077d02ed21fdab06",
                {
                    center: [34.0522, -118.2437],
                    crs: L.CRS.EPSG3857,
                    ...{
  "zoom": 14,
  "zoomControl": true,
  "preferCanvas": false,
}

                }
            );

            

        
    
            var tile_layer_1a7a7f876613619ee9f715da92750b1e = L.tileLayer(
                "https://tile.openstreetmap.org/{z}/{x}/{y}.png",
                {
  "minZoom": 0,
  "maxZoom": 19,
  "maxNativeZoom": 19,
  "noWrap": false,
  "attribution": "\u0026copy; \u003ca href=\"https://www.openstreetmap.org/copyright\"\u003eOpenStreetMap\u003c/a\u003e contributors",
  "subdomains": "abc",
  "detectRetina": false,
  "tms": false,
  "opacity": 1,
}

            );
        
    
            tile_layer_1a7a7f876613619ee9f715da92750b1e.addTo(map_10c1c821655bee24077d02ed21fdab06);
        
    
            var marker_c421d57198e245b12e13dd331f4ad29c = L.marker(
                [34.0522, -118.2437],
                {
}
            ).addTo(map_10c1c821655bee24077d02ed21fdab06);
        
    
        var popup_5e743acaf54505f4f0ecd1c63616ae1a = L.popup({
  "maxWidth": "100%",
});

        
            
                var html_e86fd1c15e7ff199ad706f8f97649cf2 = $(`<div id="html_e86fd1c15e7ff199ad706f8f97649cf2" style="width: 100.0%; height: 100.0%;">Lat: 34.0522, Lon: -118.2437</div>`)[0];
                popup_5e743acaf54505f4f0ecd1c63616ae1a.setContent(html_e86fd1c15e7ff199ad706f8f97649cf2);
            
        

        marker_c421d57198e245b12e13dd331f4ad29c.bindPopup(popup_5e743acaf54505f4f0ecd1c63616ae1a)
        ;

        
    
    
            var marker_ae20799749669be396a2f8bcdd300e92 = L.marker(
                [34.0536, -118.2455],
                {
}
            ).addTo(map_10c1c821655bee24077d02ed21fdab06);
        
    
        var popup_ebf91ea463966dfce924cbef7cb29c6f = L.popup({
  "maxWidth": "100%",
});

        
            
                var html_1298e2f0f03c9436f164981aed834c74 = $(`<div id="html_1298e2f0f03c9436f164981aed834c74" style="width: 100.0%; height: 100.0%;">Lat: 34.0536, Lon: -118.2455</div>`)[0];
                popup_ebf91ea463966dfce924cbef7cb29c6f.setContent(html_1298e2f0f03c9436f164981aed834c74);
            
        

        marker_ae20799749669be396a2f8bcdd300e92.bindPopup(popup_ebf91ea463966dfce924cbef7cb29c6f)
        ;

        
    
    
            var marker_1d9907ea908f40340556eb8f3a7ef871 = L.marker(
                [34.054, -118.248],
                {
}
            ).addTo(map_10c1c821655bee24077d02ed21fdab06);
        
    
        var popup_2e666589a88f4b4b48db03897b6d9070 = L.popup({
  "maxWidth": "100%",
});

        
            
                var html_6cd2eefa6d9a7e3884f669f3528f0ea4 = $(`<div id="html_6cd2eefa6d9a7e3884f669f3528f0ea4" style="width: 100.0%; height: 100.0%;">Lat: 34.054, Lon: -118.248</div>`)[0];
                popup_2e666589a88f4b4b48db03897b6d9070.setContent(html_6cd2eefa6d9a7e3884f669f3528f0ea4);
            
        

        marker_1d9907ea908f40340556eb8f3a7ef871.bindPopup(popup_2e666589a88f4b4b48db03897b6d9070)
        ;

        
    
    
            var marker_6707d22a006ec050d7121bf1680a231b = L.marker(
                [34.05, -118.24],
                {
}
            ).addTo(map_10c1c821655bee24077d02ed21fdab06);
        
    
        var popup_fd09e3ea5ae600648f7b6cf99169bf33 = L.popup({
  "maxWidth": "100%",
});

        
            
                var html_34609f6ffc9469faf9e8c07786d78c61 = $(`<div id="html_34609f6ffc9469faf9e8c07786d78c61" style="width: 100.0%; height: 100.0%;">Lat: 34.05, Lon: -118.24</div>`)[0];
                popup_fd09e3ea5ae600648f7b6cf99169bf33.setContent(html_34609f6ffc9469faf9e8c07786d78c61);
            
        

        marker_6707d22a006ec050d7121bf1680a231b.bindPopup(popup_fd09e3ea5ae600648f7b6cf99169bf33)
        ;

        
    
    
            var marker_ab4390b471c1a24afed4ade1522c55a5 = L.marker(
                [34.055, -118.25],
                {
}
            ).addTo(map_10c1c821655bee24077d02ed21fdab06);
        
    
        var popup_5b05e7c1a09c8f4faa09566b95fc9f7d = L.popup({
  "maxWidth": "100%",
});

        
            
                var html_b8459b83e71d7dc2a2a13b0734c3d8ef = $(`<div id="html_b8459b83e71d7dc2a2a13b0734c3d8ef" style="width: 100.0%; height: 100.0%;">Lat: 34.055, Lon: -118.25</div>`)[0];
                popup_5b05e7c1a09c8f4faa09566b95fc9f7d.setContent(html_b8459b83e71d7dc2a2a13b0734c3d8ef);
            
        

        marker_ab4390b471c1a24afed4ade1522c55a5.bindPopup(popup_5b05e7c1a09c8f4faa09566b95fc9f7d)
        ;

        
    
</script>
</html>" width="100%" height="500"></iframe>