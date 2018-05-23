package servlets;

import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import javax.annotation.Resource;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.sql.DataSource;

import beans.RegiBean;;

/**
 * Servlet implementation class Demo07Servlet
 */
@WebServlet("/regServlet")
public class RegiServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	@Resource(lookup="jdbc/MyTHIPool")
	private DataSource ds;

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// Servlet zur Entgegennahme von Formularinhalten, Speicherung der Daten in einer DB und Generierung
		// eines Beans zur Weitergabe der Formulardaten an eine JSP
		request.setCharacterEncoding("UTF-8");	// In diesem Format erwartet das Servlet jetzt die Formulardaten
		RegiBean form = new RegiBean();
		form.setAnrede(request.getParameter("anrede"));
		form.setTitel(request.getParameter("titel"));
		form.setVorname(request.getParameter("vorname"));
		form.setName(request.getParameter("name"));
		form.setEmail(request.getParameter("email"));
		form.setStrasse(request.getParameter("strasse"));
		form.setPlz(request.getParameter("plz"));
		form.setStadt(request.getParameter("stadt"));
		form.setLand(request.getParameter("land"));
		form.setTelnr(request.getParameter("telnr"));
		form.setPw(request.getParameter("pw"));
		form.setAdmin(0);
		
		// DB-Zugriff
		persist(form);
		
		// Scope "Request
		HttpSession session = request.getSession();
		session.setAttribute("form", form);
		
		// Weiterleiten an JSP
		final RequestDispatcher dispatcher = request.getRequestDispatcher("jsp/regiErfolgreich.jsp");
		dispatcher.forward(request, response);
	}

	private void persist(RegiBean form) throws ServletException {
		// DB-Zugriff
		String[] generatedKeys = new String[] {"id"};	// Name der Spalte(n), die automatisch generiert wird(werden)
		
		try (Connection con = ds.getConnection();
			 /*final Statement stmt = con.createStatement()*/
			PreparedStatement pstmt = con.prepareStatement(
					"INSERT INTO thidb.Kunde (Anrede,Titel,Vorname,Name,Email,Strasse,PLZ,Stadt,Land,TelNr,Passwort,Admin) VALUES (?,?,?,?,?,?,?,?,?,?,?,?)", 
					generatedKeys)){
	
			// Zugriff über Klasse java.sql.PreparedStatement
			pstmt.setString(1, form.getAnrede());
			pstmt.setString(2, form.getTitel());
			pstmt.setString(3, form.getVorname());
			pstmt.setString(4, form.getName());
			pstmt.setString(5, form.getEmail());
			pstmt.setString(6, form.getStrasse());
			pstmt.setString(7, form.getPlz());
			pstmt.setString(8, form.getStadt());
			pstmt.setString(9, form.getLand());
			pstmt.setString(10, form.getTelnr());
			pstmt.setString(11, form.getPw());
			pstmt.setInt(12, form.getAdmin());
			pstmt.executeUpdate();
			
			// Generierte(n) Schlüssel auslesen (funktioniert nur mit PreparedStatement)
			try (ResultSet rs = pstmt.getGeneratedKeys()) {
				while (rs.next()) {
					form.setId(rs.getInt(1));
				}
			}
		} catch (Exception ex) {
			throw new ServletException(ex.getMessage());
		}
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
