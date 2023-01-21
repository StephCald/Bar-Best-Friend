document.getElementById("nav-button").addEventListener("click", function(event){
  event.preventDefault()
  var mapboxClient = mapboxSdk({ accessToken: MAPBOX_API_KEY });
  const btn = event.currentTarget;
  var locationName = btn.dataset.locationName;
  console.log(locationName);
  const url = `https://www.mapbox.com/contribute/#/details?utm_source=http%3A%2F%2Flocalhost%3A3000%2F&utm_medium=attribution_link&utm_campaign=referrer&q=${locationName}`
  // window.location.href = url

  // mapboxClient.geocoding.forwardGeocode({
  //     query: locationName,
  //     limit: 1
  // })
  // .send()
  // .then(function (response) {
  //     if (response && response.body && response.body.features && response.body.features.length) {
  //         var feature = response.body.features[0];
  //         const url = `https://www.mapbox.com/contribute/#/details?utm_source=http%3A%2F%2Flocalhost%3A3000%2F&utm_medium=attribution_link&utm_campaign=referrer&q=${locationName}&l=17%2F-37.7979%2F144.9692`
  //         window.location.href = url
  //         // window.location.href = "https://api.mapbox.com/styles/v1/mapbox/streets-v11/static/" + feature.center[0] + "," + feature.center[1] + ",17,0,0/800x800?access_token=" + mapboxClient.accessToken;
  //     } else {
  //         alert('Geocode was not successful for the following reason: ' + status);
  //     }
  // });
});
