
list = {}
list.all = []
list.percentages = []
list.comments = []
communityApp = angular.module "communityApp", []

communityApp.controller "projects", ($scope, $http) -> 
	$http.get('/dataset/projects.csv').success (data) ->
		list.all = d3.csv.parse data 
		$scope.list = list.all 


	$http.get('/dataset/comments.csv').success (data) ->
		list.comments = d3.csv.parse data  
		# inspectEmpty = ->
		$scope.comments = list.comments

	parsePercent = (data) ->
		# for i in data

	
	$scope.plusone = ($event) ->
		vote = $event.currentTarget.innerText
		log vote += 1
		if vote >= +vote
			return
		else
			$event.currentTarget.innerText++

	$scope.minusone = ($event) ->
		vote = $event.currentTarget.innerText
		log vote += 1
		if vote >= +vote
			return
		else
			$event.currentTarget.innerText++


	$scope.display = (comment) ->
		if typeof comment is undefined then log comment 			

		