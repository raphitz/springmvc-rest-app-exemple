<!doctype html>
<html ng-app>
	<head>
		<title>as</title>
		<script src="https://ajax.googleapis.com/ajax/libs/angularjs/1.0.8/angular.min.js"></script>
    	<script src="${pageContext.request.contextPath}/resources/js/hello.js"></script>
	</head>

	<body>
		<div ng-controller="Hello">
			<p>The ID is {{book.id}}</p>
			<p>The content is {{book.title}}</p>
		</div>
	</body>
</html>