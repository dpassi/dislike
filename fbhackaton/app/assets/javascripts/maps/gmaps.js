$(window).load(function() {

  /* Inserta un elemento <script></script> en el DOM
   * con el link a la API. Al insertar este elemento
   * se gatilla el llamado a initialize() */


  var map;
  var script = document.createElement('script');
  script.type = 'text/javascript';

  script.src = 'https://maps.googleapis.com/maps/api/js?v=3.exp' +
                '&key=AIzaSyAYqoYRnm8mJGDs3lR5E9jAOILhNSKhhAA' +
                '&libraries=drawing' +
                '&callback=initialize';

  document.body.appendChild(script);
});


function initialize() {

  /* Inicializa el mapa y lo inserta en divName dentro del DOM */

  divName = "map-canvas";

  var mapOptions = {
    center: new google.maps.LatLng(-33.455670, -70.668291),
    zoom: 11,
    mapTypeId: google.maps.MapTypeId.NORMAL,
    panControl: true,
    scaleControl: false,
    streetViewControl: true,
    overviewMapControl: true
  };

  map = new google.maps.Map(document.getElementById(divName), mapOptions);
  loadPins();
}

function createMarker(lat, long, title){

  /* Si se quieren implementar custom marks, hay que agregar
   * un cuarto parametro donde se reciba el tipo de incidente
   * y segun eso dibujar el pin correspondiente */

  coords = new google.maps.LatLng(lat, long);
  marker = new google.maps.Marker({
    position: coords,
    map: map,
    title: title
  });
}
