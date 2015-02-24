$(document).ready(function(){
  
  function getData() {
    return $.ajax({
      type: "GET",
      contentType: "application/json; charset=utf-8",
      url: '/get_data.json',
      dataType: 'json',
    });
  }

  var promise = getData();

  promise.success(function (data) {
    // var div1=d3.select(document.getElementById('radial-1'));

    start();


    function start() {
      var rp1 = radialProgress(document.getElementById('radial-1'))
              .label("Outstanding Work Orders")
              .diameter(150)
              .value(data[0])
              .render();
      var rp2 = radialProgress(document.getElementById('radial-2'))
              .label("Properties Managed")
              .diameter(150)
              .value(data[1])
              .render();
    }
  });
})