<%@ page language="java" contentType="text/html; charset=windows-1256"
         pageEncoding="windows-1256"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
  <meta http-equiv="Content-Type" content="text/html; charset=windows-1256">
  <title>Insert title here</title>
  <link href="css/bootstrap.min.css" rel="stylesheet" type="text/css" />
  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-GLhlTQ8iRABdZLl6O3oVMWSktQOp6b7In1Zl3/Jr59b6EGGoI1aFkw7cmDA6j6gD" crossorigin="anonymous">
  <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/js/bootstrap.bundle.min.js" integrity="sha384-w76AqPfDkMBDXo30jS1Sgez6pr3x5MlQ1ZAGC+nuZB+EYdgRZgiwxhTBTkF7CXvN" crossorigin="anonymous"></script>
</head>
<%@include file="header.jsp"%>
<body>
<p></p>
<div class="container">
  <div class="card">
    <div class="card-header">
      Recherche des Produits
    </div>
    <div class="card-body">
      <form action="chercher.do" method="get">
        <label>Mot Clé</label>
        <input type="text" name="motCle" value="${model.motCle}" />
        <button type="submit" class="btn btn-primary">Chercher</button>
      </form>
      <table class="table table-striped">
        <tr>
          <th>ID</th><th>Nom Produit</th><th>Prix</th>
        </tr>
        <c:forEach items="${model.produits}" var="p">
          <tr>
            <td>${p.idProduit }</td>
            <td>${p.nomProduit }</td>
            <td>${p.prix }</td>
            <td><a onclick="return confirm('Etes vous sur ?');"
                   href="supprimer.do?id=${p.idProduit }" >Supprimer</a></td>
            <td><a href="editer.do?id=${p.idProduit }">Edit</a></td>
          </tr>
        </c:forEach>
      </table>
    </div>
  </div>
</div>
</body>
</html>