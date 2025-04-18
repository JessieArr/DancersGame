document.addEventListener("DOMContentLoaded", function () {
  console.log("start map");
  const imageWidth = 1686;
  const imageHeight = 2270;

  const imageBounds = [
    [0, 0],
    [imageHeight, imageWidth],
  ];

  // Create the map
  const map = L.map("game-map", {
    crs: L.CRS.Simple,
    minZoom: -2,
    maxZoom: 4,
    zoomSnap: 0.5,
  });

  const coffeeIcon = L.icon({
    iconUrl: "/images/abiotic-factor/icons/coffee.png",
    iconSize: [30, 30],
    iconAnchor: [15, 15],
    popupAnchor: [0, -30],
  });
  const chargerIcon = L.icon({
    iconUrl: "/images/abiotic-factor/icons/charger.png",
    iconSize: [30, 30],
    iconAnchor: [16, 16],
    popupAnchor: [0, -30],
  });

  L.imageOverlay("/images/abiotic-factor/abiotic-factor-map.png", imageBounds).addTo(
    map
  );

  const coffee = L.layerGroup();
  const chargers = L.layerGroup();

  const coffeeLocations = [[308, 274]];
  const chargerLocations = [[2129, 216]];

  coffeeLocations.forEach((location) => {
    const marker = L.marker(location, { icon: coffeeIcon })
      .addTo(coffee)
      .bindTooltip("Coffee");
  });
  chargerLocations.forEach((location) => {
    const marker = L.marker(location, { icon: chargerIcon })
      .addTo(chargers)
      .bindTooltip("Charger");
  });

  coffee.addTo(map);
  chargers.addTo(map);

  const overlayMaps = {
    Coffee: coffee,
    Chargers: chargers,
  };

  L.control.layers(null, overlayMaps, { collapsed: false }).addTo(map);

  map.fitBounds(imageBounds);

  map.on("click", function (e) {
    // For CRS.Simple or other projected systems, e.latlng is not "latitude/longitude"
    const x = Math.floor(e.latlng.lng); // In Leaflet, 'lng' becomes the X coordinate
    const y = Math.floor(e.latlng.lat); // and 'lat' becomes the Y coordinate
    console.log("clicked [" + y + ", " + x + "]");
  });

  console.log("map done");
});
