<!doctype html>
<html ng-app>
	<head>
		<title>CRUD App</title>
 <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/bootstrap.min.css">
 <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/css.css">
     	<script src="${pageContext.request.contextPath}/resources/js/jquery.js"></script>
 		<script src="https://ajax.googleapis.com/ajax/libs/angularjs/1.0.8/angular.min.js"></script>
    	<script src="${pageContext.request.contextPath}/resources/js/controller.js"></script>
    	<script src="${pageContext.request.contextPath}/resources/js/bootstrap.min.js"></script>


</head>

	<body data-ng-init="init()" ng-controller="Hello">
 <!-- Navigation -->
    <nav class="navbar navbar-inverse navbar-fixed-top" role="navigation">
        <div class="container">
            <!-- Brand and toggle get grouped for better mobile display -->
            <div class="navbar-header">
                <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1">
                    <span class="sr-only">Toggle navigation</span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                </button>
                <a class="navbar-brand" href="#">JPO</a>
            </div>
            <!-- Collect the nav links, forms, and other content for toggling -->
            <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
                <ul class="nav navbar-nav">
                    <li>
                        <a href="#">Initiation pour le développement d'une application en java</a>
                    </li>
                </ul>
            </div>
            <!-- /.navbar-collapse -->
        </div>
        <!-- /.container -->
    </nav>

    <!-- Page Content -->
    <div class="container">
<br/>
<br/>

        <!-- Portfolio Item Heading -->
        <div class="row">
            <div class="col-lg-12">
                <h3 class="page-header">Liste des livres
                    <small></small>
                </h3>
            </div>
        </div>
        <!-- /.row -->

        <!-- Portfolio Item Row -->
        <div class="row">

            <div class="col-md-12">
            
<a href="#" class="btn btn-lg btn-success"
   data-toggle="modal"
   data-target="#basicModal">Ajouter un livre</a>
   
   <div class="modal fade" id="basicModal" tabindex="-1" role="dialog" aria-labelledby="basicModal" aria-hidden="true">
    <div class="modal-dialog">
        <div class="modal-content">
            <div class="modal-header">
            <button type="button" class="close" data-dismiss="modal" aria-hidden="true"><span class="glyphicon glyphicon-remove" aria-hidden="true"></span></button>
            <h4 class="modal-title" id="myModalLabel">Ajout d'un livre</h4>
            </div>
            <div class="modal-body">
                <form ng-submit="addBook()" >
                    <div class="form-group">
                        <label for="username-email">Titre</label>
                        <input ng-model="book.title"  id="title" placeholder="Titre" type="text" class="form-control" />
                    </div>
                    <div class="form-group">
                        <label for="author">Auteur</label>
                        <input ng-model="book.author" placeholder="Auteur" type="text" class="form-control" />
                    </div>
                    <div class="form-group">
                        <label for="price">Prix</label>
                        <input ng-model="book.price" id="price" value='' placeholder="Prix" type="text" class="form-control" />
                    </div>
                    <div class="form-group">
                        <label for="qte">Quantite</label>
                        <input  ng-model="book.quantity" id="qte" value='' placeholder="quantité" type="text" class="form-control" />
                    </div>
                    <div class="modal-footer">
                        <button class="btn btn-danger btn-cancel-action" data-dismiss="modal">Quitter</button>
                        <input type="submit" class="btn btn-primary" value="Ajouter" />
                    </div>
                </form>
            </div>

    </div>
  </div>
</div>
     
        <div class="modal fade" id="basicModal2" tabindex="-1" role="dialog" aria-labelledby="basicModal" aria-hidden="true">
    <div class="modal-dialog">
        <div class="modal-content">
            <div class="modal-header">
            <button type="button" class="close" data-dismiss="modal" aria-hidden="true"><span class="glyphicon glyphicon-remove" aria-hidden="true"></span></button>
            <h4 class="modal-title" id="myModalLabel">Ajout d'un livre</h4>
            </div>
            <div class="modal-body">
                <form ng-submit="updateBook()" >
                    <div class="form-group">
                        <label for="username-email">Titre</label>
                        <input ng-model="book.title"  id="title" placeholder="Titre" type="text" class="form-control" />
                    </div>
                    <div class="form-group">
                        <label for="author">Auteur</label>
                        <input ng-model="book.author" placeholder="Auteur" type="text" class="form-control" />
                    </div>
                    <div class="form-group">
                        <label for="price">Prix</label>
                        <input ng-model="book.price" id="price" value='' placeholder="Prix" type="text" class="form-control" />
                    </div>
                    <div class="form-group">
                        <label for="qte">Quantite</label>
                        <input  ng-model="book.quantity" id="qte" value='' placeholder="quantité" type="text" class="form-control" />
                    </div>
                    <div class="modal-footer">
                        <button class="btn btn-danger btn-cancel-action" data-dismiss="modal" ng-click="init()">Quitter</button>
                        <input type="submit" class="btn btn-primary" value="Modifer" />
                    </div>
                </form>
            </div>

    </div>
  </div>
</div>
     </div>

        </div>
        <!-- /.row -->

        <!-- Related Projects Row -->
        <div class="row">

            <div class="col-lg-12">
                <h3 class="page-header">Liste des livres</h3>
              <div >
 <table class="table">
    <tr>
        <th width="120">Titre</th>
        <th width="120">Auteur</th>
        <th width="60">Prix</th>
        <th width="60">Quantité</th>
        <th width="60">Action</th>
    </tr>
        <tr ng-repeat="book in books">
            <td>{{book.title}}</td>
            <td>{{book.author}}</td>
            <td>{{book.price}}</td>
            <td>{{book.quantity}}</td>
            <td>
            <button class="btn btn-danger"  ng-click="removeBook(book.id)" >Supprimer</button>
        
            <button class="btn btn-danger"  ng-click="updateBookform(book)" >Modifier</button></td>
       </tr>
</table>
</div>  
                
            </div>

          

        </div>
        <!-- /.row -->

        <hr>



        <!-- Footer -->
        <footer>
            <div class="row">
                <div class="col-lg-12">
                    <p>CRUD Application</p>
                </div>
            </div>
            <!-- /.row -->
        </footer>

    </div>
    <!-- /.container -->
	</body>
</html>