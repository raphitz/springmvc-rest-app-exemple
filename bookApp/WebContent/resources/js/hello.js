

function Hello($scope, $http) {
    $http.get('http://localhost:8081/bookApp/Books').
        success(function(data) {
            $scope.books = data;
        });
}



function myController($scope, $http){
    $scope.submitMyForm= function(){
        /* while compiling form , angular created this object*/
        var data=$scope.book;  
        /* post to server*/
        $http.post('http://localhost:8081/bookApp/Book/add', data);        
    }

}

