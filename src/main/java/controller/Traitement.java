package controller;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class Traitement
 */
@WebServlet("/Traitement")
public class Traitement extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private String nouvelleTache;
	private String trashTache;
	private List<String> toDo = new ArrayList<String>();

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public Traitement() {
		super();
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		trashTache = request.getParameter("trashTache");
		if (trashTache != null) {
			request.setAttribute("trashTache", trashTache);
			toDo.remove(toDo.indexOf(trashTache));
		} else {
			nouvelleTache = request.getParameter("tache");
			toDo.add(nouvelleTache);
		}
		request.setAttribute("nouvelleTache", nouvelleTache);
		request.setAttribute("toDo", toDo);
		request.getRequestDispatcher("/WEB-INF/index.jsp").forward(request, response);

	}
}
