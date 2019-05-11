<!DOCTYPE html>
<html lang="ru">
<head>
	<meta charset="UTF-8">
	<title>Гороскоп на сегодня</title>
	<link
	    rel="stylesheet"
	    href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css"
	    integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO"
	    crossorigin="anonymous"
	  />
	<link rel="stylesheet" type="text/css" href="/css/styles.css">
	<script src="http://code.jquery.com/jquery-3.3.1.min.js"></script>

</head>
<body>
	<div class="container">
			
      <h2 id="main-header">Что день <span id="cur_date"></span> готовит </h2>

      <div class="row">
        <div class="col colortext" id="p-0">
          
        </div>
        <div class="col colortext" id="p-1">
          
        </div>
        <div class="col colortext" id="p-2">
          
        </div>
      </div>
      <div class="row">
        <div class="col colortext" id="p-3">
          
        </div>
        <div class="col colortext" id="p-4">
          
        </div>
        <div class="col colortext" id="p-5">
          
        </div>
      </div>
    </div>
</body>
<script type="text/javascript">
	var today = new Date();
	var dd = String(today.getDate()).padStart(2, '0');
	var mm = String(today.getMonth() + 1).padStart(2, '0'); //January is 0!
	var yyyy = today.getFullYear();
	today = yyyy + '-' + mm + '-' + dd;
	document.getElementById("cur_date").innerHTML = today;

	advice_url = "http://localhost:8080/api/forecast"

         $.getJSON(advice_url, function(data) {
         advice = data ["prophecies"]
         set_content_in_divs(advice)
         });
    $("#main-header").click(function() {
      
         $.getJSON(advice_url, function(data) {
         advice = data ["prophecies"]
         set_content_in_divs(advice)
         });


    });  


    function set_content_in_divs(paragraphs) {
      $.each(paragraphs, function(i, d) {
        p = $("#p-" + i)
        p.html("<p>" + d + "</p>")
      })
    }


</script>
</html>