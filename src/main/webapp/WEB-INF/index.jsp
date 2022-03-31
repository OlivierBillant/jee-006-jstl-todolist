<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>To Do Listx</title>
</head>
<body>


	<form action="./Traitement" method="POST">
		<label>Nouvelle tâche</label> <input type="text" name="tache" />
		<button name="tache">Ajouter</button>
	</form>

	<%-- <h2>
		Affichage saisie : <span>${nouvelleTache}</span>
	</h2>
	<h2>
		Affichage index 0 : <span>${toDo.get(0)}</span>
	</h2> --%>

	<h1>Mes tâches en cours</h1>

	<h2>
		<span> <c:forEach var="nouvelleTache" items="${toDo}">
				<ul>
					<li>${nouvelleTache}
						<!-- <form action="./DeleteServlet" method="POST">
							<button name="nouvelleTache">DEL</button>
						</form> -->
					</li>
				</ul>
			</c:forEach>
		</span>
	</h2>
</body>
</html>