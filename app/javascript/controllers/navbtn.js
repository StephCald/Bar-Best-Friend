document.getElementById("nav-button").addEventListener("click", function(){
  var mapboxClient = mapboxSdk({ accessToken: MAPBOX_API_KEY });
  var location = "<%= establishment.name %>, <%= establishment.address %>";
  mapboxClient.geocoding.forwardGeocode({
      query: location,
      limit: 1
  })
  .send()
  .then(function (response) {
      if (response && response.body && response.body.features && response.body.features.length) {
          var feature = response.body.features[0];
          window.location.href = "https://api.mapbox.com/styles/v1/mapbox/streets-v11/static/" + feature.center[0] + "," + feature.center[1] + ",17,0,0/800x800?access_token=" + mapboxClient.accessToken;
      } else {
          alert('Geocode was not successful for the following reason: ' + status);
      }
  });
});
