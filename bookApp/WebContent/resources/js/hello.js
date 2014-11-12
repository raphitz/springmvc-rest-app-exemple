function Hello($scope, $http) {
    $http.get('http://localhost:8081/bookApp/Books').
        success(function(data) {
            $scope.book = data;
        });
}