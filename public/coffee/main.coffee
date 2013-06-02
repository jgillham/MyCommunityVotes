$ ->
	$("#map").prop("onclick", false);
	denver = [39.7334624,-104.9924559]

	map = L.map('map').setView(denver, 14);

	L.tileLayer('http://{s}.tile.cloudmade.com/BC9A493B41014CAABB98F0471D759707/997/256/{z}/{x}/{y}.png',
		maxZoom: 18,
		attribution: 'Map data &copy; <a href="http://openstreetmap.org">OpenStreetMap</a> contributors, <a href="http://creativecommons.org/licenses/by-sa/2.0/">CC-BY-SA</a>, Imagery © <a href="http://cloudmade.com">CloudMade</a>')


	`
	L.tileLayer('http://{s}.tile.cloudmade.com/BC9A493B41014CAABB98F0471D759707/997/256/{z}/{x}/{y}.png', {
				
			}).addTo(map);


			L.marker(denver).addTo(map)
				.bindPopup("<b>Welcome to community votes!</b>").openPopup();

			L.circle(denver, 500, {
				color: 'red',
				fillColor: '#f03',
				fillOpacity: 0.5
			}).addTo(map).bindPopup("I am a circle.");

			 L.polygon([
			 	[51.509, -0.08],
			 	[51.503, -0.06],
			 	[51.51, -0.047]
			 ]).addTo(map).bindPopup("I am a polygon !!!.");


			var popup = L.popup();

			function onMapClick(e) {
				popup
					.setLatLng(e.latlng)
					.setContent("You clicked the map at " + e.latlng.toString())
					.openOn(map);
			}

			map.on('click', onMapClick);
	`
	L.circle(
		[
			denver[0] , 
			denver[1] + 0.010], 
			250, 
			{
				color: 'blue',
				fillColor: '#f03',
				fillOpacity: 0.5
			}
		).addTo(map).bindPopup("Housing Project");

	d3.csv "/dataset/data.csv", (err, data) -> 
		if err then throw(err)
		parseData(data)




	parseData = (dataset) ->
		for d in dataset
				if d["Map coordinates"] == undefined then continue 
				coor = d["Map coordinates"].split(",")		
				desc = d["description"]
				type = d["type"]
				link = d["link"]
				L.marker(coor).
					addTo(map).
					bindPopup(
						"<b>"+ desc + "</b><br>" + type + "<br>" + "<a href='" + link + "'>" + "Taken from" + "</a>"
					)
	denver = [39.7334624,-104.9924559]			
	
	# L.marker([denver[0] + 0.25 , 
	# 		denver[1] + 0.10]).addTo(map).bindPopup("<img id='logo' src='img/logo.png'>").openPopup()
					
	# map.panTo(new L.LatLng(40.737, -73.923));

# datapoints.datum = new Array datum["Map coordinates"].split(",")	
# console.dir(datapoints)
		


