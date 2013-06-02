

communityApp = angular.module "communityApp", []
communityApp.controller "comments", 
	($scope, $http) -> 
		d3.csv "/dataset/comments.csv", (err, data) -> 
			if err then throw(err)
			log data

		