<!doctype html>
<html ng-app>
	<head>
		<title>as</title>
 <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/css.css">
 		<script src="https://ajax.googleapis.com/ajax/libs/angularjs/1.0.8/angular.min.js"></script>
    	<script src="${pageContext.request.contextPath}/resources/js/hello.js"></script>
	</head>

	<body>

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