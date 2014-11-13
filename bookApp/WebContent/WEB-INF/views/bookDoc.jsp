<!doctype html>
<html ng-app>
	<head>
		<title>as</title>
 <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/css.css">
 		<script src="https://ajax.googleapis.com/ajax/libs/angularjs/1.0.8/angular.min.js"></script>
    	<script src="${pageContext.request.contextPath}/resources/js/hello.js"></script>
	</head>

	<body>


<form  ng-controller="myController" ng-submit="submitMyForm()">
    <input ng-model="book.id"  />
    <input ng-model="book.title"  />
    <input ng-model="book.author"  />
    <input ng-model="book.price"  />
    <input ng-model="book.quantity"  />
	 <input type="submit" id="submit" value="Submit" />
 </form>
 
<hr/>
<div ng-controller="Hello">
 <table class="tg">
    <tr>
        <th width="80">book ID</th>
        <th width="120">book Title</th>
        <th width="120">book Author</th>
        <th width="60">Price</th>
        <th width="60">Quantity</th>
    </tr>
        <tr ng-repeat="book in books">
            <td>{{book.id}}</td>
            <td>{{book.title}}</td>
            <td>{{book.author}}</td>
            <td>{{book.price}}</td>
            <td>{{book.quantity}}</td>
       </tr>
</table>
</div>
	</body>
</html>