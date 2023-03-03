<%@ page language="java" contentType="text/html; charset=windows-1256"
         pageEncoding="windows-1256"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
"http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=windows-1256">
    <title>Insert title here</title>
    <link href="css/bootstrap.min.css" rel="stylesheet" type="text/css" />
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-GLhlTQ8iRABdZLl6O3oVMWSktQOp6b7In1Zl3/Jr59b6EGGoI1aFkw7cmDA6j6gD" crossorigin="anonymous">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/js/bootstrap.bundle.min.js" integrity="sha384-w76AqPfDkMBDXo30jS1Sgez6pr3x5MlQ1ZAGC+nuZB+EYdgRZgiwxhTBTkF7CXvN" crossorigin="anonymous"></script>
</head>
<body>
<%@include file="header.jsp" %>
<p></p>
<div class="container">
    <div class="card">
        <div class="card-header">
            Modification des Produits
        </div>
        <div class="card-body">
            <form action="update.do" method="post">
                <div class="form-group">
                    <label class="control-label">ID Produit :</label>
                    <input type="text" name="id" class="form-control"
                           value="${produit.idProduit}"/>
                </div>
                <div class="form-group">
                    <label class="control-label">Nom Produit :</label>
                    <input type="text" name="nom" class="form-control"
                           value="${produit.nomProduit}"/>
                </div>
                <div class="form-group">
                    <label class="control-label">Prix :</label>
                    <input type="text" name="prix" class="form-control" value="${produit.prix}"/>
                </div>
                <div>
                    <button type="submit" class="btn btn-primary">Modifier</button>
                </div>
            </form>
        </div>
    </div>
</div>
</body>
</html>