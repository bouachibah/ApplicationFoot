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
               <a class="nav-item nav-link" href="<%=request.getContextPath()%>/equipes">Liste equipe</a>
            <a class="nav-item nav-link" href="#">Modifier</a>
          </div>
        </div>
      </nav>
<body>
    <form action="<%=request.getContextPath()%>/save"method="post">
        <h1 style="text-align: center;"> Fiche de l'équipe</h1>
        <br>
        <br>
        <label>L'indicatif</label>
        <input type="text"  name="indicatif" id="indicatif">
        <br>
        <br>
        <label>Nom de l'entraineur</label>
        <input type="text"  name="nom_entraineur" id="nom_entraineur">
        <br>
        <br>
        <label>Nom de l'équipe</label>
        <input type="text"  name="nom_pays" id="nom_pays">
        <br>
        <br>
        <input type="submit" value="Valider" /> 
    </form>
  
</body>
</html>