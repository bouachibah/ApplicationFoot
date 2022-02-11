<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
</head>
<body>
	<div class="container">
		<nav class="navbar navbar-inverse">
			<div class="container-fluid">
				<div class="navbar-header">
					<a class="navbar-brand" href="#">AppFoot</a>
				</div>
				<ul class="nav navbar-nav">
					<li class="active"><a href="#">Accueil</a></li>
					<li class="dropdown"><a class="dropdown-toggle"
						data-toggle="dropdown" href="#">Equipe <span class="caret"></span></a>
						<ul class="dropdown-menu">
							<li><a class="nav-item nav-link"
								href="<%=request.getContextPath()%>/form">Ajouter </a></li>
							<li><a class="nav-item nav-link"
								href="<%=request.getContextPath()%>/equipes">Liste equipe</a></li>
							<li><a class="nav-item nav-link" href="#">Modifier</a></li>
						</ul></li>
					<li class="dropdown"><a class="dropdown-toggle"
						data-toggle="dropdown" href="#">Joueur <span class="caret"></span></a>
						<ul class="dropdown-menu">
							<li><a class="nav-item nav-link"
								href="<%=request.getContextPath()%>/formJoueur">Ajouter </a></li>
							<li><a class="nav-item nav-link"
								href="<%=request.getContextPath()%>/joueurs">Liste joueur</a></li>
							<li><a class="nav-item nav-link" href="#">Modifier</a></li>
						</ul></li>
				</ul>
			</div>
		</nav>
		
		  <form action="<%=request.getContextPath()%>/add" method="post">
			
				<h3>My form</h3>
				<div class="form-row">
					<div class="form-group col-md-6">
						<label for="nom">Nom</label> <input type="text"
							class="form-control" id="nom" name="nom" placeholder="Nom">
					</div>
				</div>
				<div class="form-row">
					<div class="form-group col-md-6">
						<label for="prenom">Prenom</label> <input type="text"
							class="form-control" id="prenom" name="prenom"
							placeholder="Prenom">
					</div>
				</div>

				<div class="form-row">
					<div class="form-group col-md-6">
						<div class="form-group">
							<label for="age">Age</label> <input type="text" name="age"
								class="form-control" id="age" placeholder="25 ans">
						</div>
						<div class="form-group">
							<label for="inputState">State</label> <select id="equipe"
								name="equipe" class="form-control">
								<c:forEach items="${lesequipes}" var="equipe">
									<option value="${equipe.indicatif}">${equipe.nom_pays}</option>
								</c:forEach>
							</select>
						</div>
					</div>
				</div>
			<input type="submit" class="btn btn-primary" value="valider">
		</form>
	</div>
</body>
</html>