
log = console.log
set  = {}


d3.csv "/dataset/set.csv", (error, data) ->
	if error then throw Error(error)
	@set = data
	log @set



	