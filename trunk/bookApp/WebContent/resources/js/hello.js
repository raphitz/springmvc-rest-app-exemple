


function Hello($scope, $http) {
	
    $scope.init = function () {

    	console.log('init');
        $http.get('http://localhost:8080/bookApp/Books').
        success(function(data) {
            $scope.books = data;
            console.log(data);
        });

    }
	 
	 
    $scope.addBook = function () {
        var data=$scope.book;  
        $http.post('http://localhost:8080/bookApp/Book/add', data).success(function(data) {
   		 $scope.init();
        });
        $scope.book = {};
        $('#basicModal').modal('hide');
        
        }
    
    
    $scope.removeBook = function (id) {

    	 $http.post('http://localhost:8080/bookApp/Book/remove', id).success(function(data) {
    		 $scope.init();
         });  
	 
    }
    
    $scope.updateBookform = function (book) {
    	
    	$scope.book=book;
        $('#basicModal2').modal('show');
    	
    }
    
    $scope.updateBook = function (book) {
    	
    	 var data=$scope.book;  
         /* post to server*/
         $http.post('http://localhost:8080/bookApp/Book/update', data).success(function(data) {
    		 $scope.init();
         });
         $scope.book = {};
         $('#basicModal2').modal('hide');
    	
    }
}



