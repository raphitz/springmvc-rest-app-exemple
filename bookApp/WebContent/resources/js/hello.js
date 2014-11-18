


function Hello($scope, $http) {
	
    $scope.init = function () {

    	console.log('init');
        $http.get('http://localhost:8081/bookApp/Books').
        success(function(data) {
            $scope.books = data;
        });

    }
	 
	 
    $scope.addBook = function () {
        /* while compiling form , angular created this object*/
        var data=$scope.book;  
        /* post to server*/
        $http.post('http://localhost:8081/bookApp/Book/add', data);  
        $('#basicModal').modal('hide');
       $scope.init();
        
        }
    
    
    $scope.removeBook = function (id) {

    	 $http.post('http://localhost:8081/bookApp/Book/remove', id);  
    	 $scope.init();
    }
}



