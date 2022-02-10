<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/css/bootstrap.min.css">
    
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
            <a class="nav-item nav-link" href="#">Ajouter </a>
            <a class="nav-item nav-link" href="#">Supprimer</a>
            <a class="nav-item nav-link" href="#">Modifier</a>
          </div>
        </div>
      </nav>
    <table class="table mt-2">
        <h1>Liste des joueurs</h1>
        <thead>
          <tr>
            <th scope="col">NOM</th>
            <th scope="col">PRENOM</th>
            <th scope="col">AGE</th>
          </tr>
        </thead>
        <tbody >
        <c:forEach items="${lesjoueurs}" var="joueur">
          <tr>
             <td scope="col">${joueur.nom}</td>
            <td scope="col">${joueur.prenom}</td>
            <td scope="col">${joueur.age}</td>
   

          </tr>
        </c:forEach> 
        </tbody>
      </table>
  </div>

</body>
</html>