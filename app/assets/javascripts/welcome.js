$.ajax({
  type: "GET",
  contentType: "application/json; charset=utf-8",
  url: '/get_data.json',
  dataType: 'json',
  success: function (received_data) {
    console.log(received_data);
     // var div_where_to_draw = "div.mygraph";
     // your_d3_function(div_where_to_draw, received_data);
  },
  error: function (result) {
    console.log("error");
  }
})

