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
	<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
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
    <table class="table mt-2">
        <h1>Liste des equipes</h1>
        <thead>
          <tr>
            <th scope="col">indicatif</th>
            <th scope="col">pays</th>
            <th scope="col">entraineur</th>
            <th scope="col">date de creation</th>
            <th scope="col">Action<th>
          </tr>
        </thead>
        <tbody >
				<c:forEach items="${lesequipes}" var="equipe">
					<tr>
						<td scope="col">${equipe.indicatif}</td>
						<td scope="col">${equipe.nom_pays}</td>
						<td scope="col">${equipe.nom_entraineur}</td>
						<td scope="col">${equipe.dateCreation}</td>
						<td scope="col"><a
							href="<%=request.getContextPath()%>/delete/${equipe.indicatif}"> 
							<i style="font-size: 24px" class="fa">&#xf2d3;</i></a></td>

					</tr>
				</c:forEach>
			</tbody>
      </table>
  </div>

</body>
</html>