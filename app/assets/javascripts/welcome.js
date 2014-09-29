$(document).ready(function(e) {

  //http://www.paulund.co.uk/create-google-maps-with-gmaps-js
  handler = Gmaps.build('Google');  // handler - Gmaps.map

  all_points = get_all_points();
  //alert_json(all_points);

  handler.buildMap({ provider: {}, internal: {id: 'map'}}, function(){

    google.maps.event.addListener(handler.getMap(), 'click', function(event) {
        //alert("Координаты: "
            //+ "\nlat: " + event.latLng.lat()
            //+ "\nlng: " + event.latLng.lng());
        $.post("/show_table_distances",
        {
          v_lat: event.latLng.lat(),
          v_lng: event.latLng.lng()
        },
        function(data) {
          //$("#errors_show").html("");
          alert("Вы кликнули в координаты:" +
                "\nlat: " + event.latLng.lat() +
                "\nlng: " + event.latLng.lng()
            );
          handler.addMarker({
            "lat": event.latLng.lat(), //широта
            "lng": event.latLng.lng(), //долгота
            "title": "Вы сюда кликнули",
            "infowindow": "Вы сюда кликнули"
          });
        }, "json");
    });

    markers = handler.addMarkers([
      {
        "lat": 55.753508, //широта
        "lng": 37.623995, //долгота
        "title": "Центр города",
        "infowindow": "Центр города"
      }
    ]);

    handler.bounds.extendWith(markers);
    handler.fitMapToBounds();
    handler.getMap().setZoom(12);
  });

});

function get_all_points(){
  var res;
  $.get("/buildings",
    function(data) {
      res = new Array(data.length);
      //alert_json(data[0]);
      for (i = 0; i < data.length; i++) {
        jQuery.extend(res[i], data[i]);
      }
    }, "json");
  return res;
}

function alert_json(p_json_object){
  var str = JSON.stringify(p_json_object);
  alert(str);
}