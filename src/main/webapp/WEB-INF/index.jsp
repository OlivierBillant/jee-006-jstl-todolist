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
	<%-- <h2>
		Test affichage trashTache : <span>${trashTache}</span>
	</h2> --%>
	<h2>
		<span> <c:forEach var="nouvelleTache" items="${toDo}">
				<form action="./Traitement" method="POST">
					<ul>
						<li>${nouvelleTache}
							<button name="trashTache" value="${nouvelleTache}">DEL</button>
						</li>
					</ul>
				</form>

			</c:forEach>
		</span>
	</h2>
</body>
</html>