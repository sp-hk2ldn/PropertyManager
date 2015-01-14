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
  var div1=d3.select(document.getElementById('mygraph'));

  start();


  function start() {
    var rp1 = radialProgress(document.getElementById('mygraph'))
            .label("Outstanding Work Orders")
            .diameter(150)
            .value(data)
            .render();
  }
});