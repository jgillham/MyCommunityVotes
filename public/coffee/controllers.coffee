
list = {}
list.all = []
communityApp = angular.module "communityApp", []

communityApp.controller "comments", ($scope, $http) -> 
	$http.get('/dataset/comments.csv').success (data) ->
		list.all = d3.csv.parse data 
		$scope.list = list.all 



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