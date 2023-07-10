document.addEventListener("turbo:load", function() {
    var mapContainer = document.getElementById('map');
    if(mapContainer === null) return;

    var map = L.map('map');

    L.tileLayer('https://{s}.tile.openstreetmap.org/{z}/{x}/{y}.png', {
        maxZoom: 19,
    }).addTo(map);

    const geojsonData = JSON.parse(mapContainer.dataset.geojson);
    var geoJsonLayer = L.geoJSON(geojsonData).addTo(map);

    map.fitBounds(geoJsonLayer.getBounds());
});