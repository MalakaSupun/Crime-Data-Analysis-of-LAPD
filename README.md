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
                #map_51bb9f596da5fd77f1bd05203030d2f9 {
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
    
    
            <div class="folium-map" id="map_51bb9f596da5fd77f1bd05203030d2f9" ></div>
        
</body>
<script>
    
    
            var map_51bb9f596da5fd77f1bd05203030d2f9 = L.map(
                "map_51bb9f596da5fd77f1bd05203030d2f9",
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

            

        
    
            var tile_layer_16afc3bf3de81801f28a7c2b1cfc5239 = L.tileLayer(
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
        
    
            tile_layer_16afc3bf3de81801f28a7c2b1cfc5239.addTo(map_51bb9f596da5fd77f1bd05203030d2f9);
        
    
            var marker_29b540a9fc86b55ce4ea8082b9848973 = L.marker(
                [34.0522, -118.2437],
                {
}
            ).addTo(map_51bb9f596da5fd77f1bd05203030d2f9);
        
    
        var popup_cbb0f5a47b3c3d6b7cc955a8462353a5 = L.popup({
  "maxWidth": "100%",
});

        
            
                var html_40e8a7b38a79810e1de24c33e752d5e3 = $(`<div id="html_40e8a7b38a79810e1de24c33e752d5e3" style="width: 100.0%; height: 100.0%;">Lat: 34.0522, Lon: -118.2437</div>`)[0];
                popup_cbb0f5a47b3c3d6b7cc955a8462353a5.setContent(html_40e8a7b38a79810e1de24c33e752d5e3);
            
        

        marker_29b540a9fc86b55ce4ea8082b9848973.bindPopup(popup_cbb0f5a47b3c3d6b7cc955a8462353a5)
        ;

        
    
    
            var marker_d218cc621d184f90a3f3b21ab22914db = L.marker(
                [34.0536, -118.2455],
                {
}
            ).addTo(map_51bb9f596da5fd77f1bd05203030d2f9);
        
    
        var popup_930aaa9b6e68e2e8bc958c9d21e190a4 = L.popup({
  "maxWidth": "100%",
});

        
            
                var html_494b30b548ab985ed8f7d0d85ab42e82 = $(`<div id="html_494b30b548ab985ed8f7d0d85ab42e82" style="width: 100.0%; height: 100.0%;">Lat: 34.0536, Lon: -118.2455</div>`)[0];
                popup_930aaa9b6e68e2e8bc958c9d21e190a4.setContent(html_494b30b548ab985ed8f7d0d85ab42e82);
            
        

        marker_d218cc621d184f90a3f3b21ab22914db.bindPopup(popup_930aaa9b6e68e2e8bc958c9d21e190a4)
        ;

        
    
    
            var marker_5953b11f3be4af8a09d0d442705a2ce4 = L.marker(
                [34.054, -118.248],
                {
}
            ).addTo(map_51bb9f596da5fd77f1bd05203030d2f9);
        
    
        var popup_19f65109a470527d13cdc8f4b63ab92b = L.popup({
  "maxWidth": "100%",
});

        
            
                var html_c73dfb6e166f6e3496abdd97b1aa970d = $(`<div id="html_c73dfb6e166f6e3496abdd97b1aa970d" style="width: 100.0%; height: 100.0%;">Lat: 34.054, Lon: -118.248</div>`)[0];
                popup_19f65109a470527d13cdc8f4b63ab92b.setContent(html_c73dfb6e166f6e3496abdd97b1aa970d);
            
        

        marker_5953b11f3be4af8a09d0d442705a2ce4.bindPopup(popup_19f65109a470527d13cdc8f4b63ab92b)
        ;

        
    
    
            var marker_9cbb09dc778916936040ed349c67d546 = L.marker(
                [34.05, -118.24],
                {
}
            ).addTo(map_51bb9f596da5fd77f1bd05203030d2f9);
        
    
        var popup_df9f612f11cca198c2da2ddd8daed12d = L.popup({
  "maxWidth": "100%",
});

        
            
                var html_afeeee14d2ebdf340cf27ecfd9f6091a = $(`<div id="html_afeeee14d2ebdf340cf27ecfd9f6091a" style="width: 100.0%; height: 100.0%;">Lat: 34.05, Lon: -118.24</div>`)[0];
                popup_df9f612f11cca198c2da2ddd8daed12d.setContent(html_afeeee14d2ebdf340cf27ecfd9f6091a);
            
        

        marker_9cbb09dc778916936040ed349c67d546.bindPopup(popup_df9f612f11cca198c2da2ddd8daed12d)
        ;

        
    
    
            var marker_59085834ecba040d4afb0eebc180f6d1 = L.marker(
                [34.055, -118.25],
                {
}
            ).addTo(map_51bb9f596da5fd77f1bd05203030d2f9);
        
    
        var popup_558462efbcd1efde4050652328e88905 = L.popup({
  "maxWidth": "100%",
});

        
            
                var html_1d0781a84ae3ba725a679dfbf07ca82b = $(`<div id="html_1d0781a84ae3ba725a679dfbf07ca82b" style="width: 100.0%; height: 100.0%;">Lat: 34.055, Lon: -118.25</div>`)[0];
                popup_558462efbcd1efde4050652328e88905.setContent(html_1d0781a84ae3ba725a679dfbf07ca82b);
            
        

        marker_59085834ecba040d4afb0eebc180f6d1.bindPopup(popup_558462efbcd1efde4050652328e88905)
        ;

        
    
</script>
</html>" width="100%" height="500"></iframe>