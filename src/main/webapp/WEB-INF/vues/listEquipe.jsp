<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/css/bootstrap.min.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
</head>
<body>
  <div class="container">
    <nav class="navbar navbar-expand-lg navbar-light bg-light">
        <a class="navbar-brand" href="#">Appfoot</a>
        <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarNavAltMarkup" aria-controls="navbarNavAltMarkup" aria-expanded="false" aria-label="Toggle navigation">
          <span class="navbar-toggler-icon"></span>
        </button>
        <div class="collapse navbar-collapse" id="navbarNavAltMarkup">
          <div class="navbar-nav">
            <a class="nav-item nav-link" href="<%=request.getContextPath()%>/form">Ajouter </a>
            <a class="nav-item nav-link" href="<%=request.getContextPath()%>/">Liste equipe</a>
            <a class="nav-item nav-link" href="#">Modifier</a>
          </div>
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