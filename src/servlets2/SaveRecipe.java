package servlets2;





import java.io.File;

import java.io.FileOutputStream;
import java.io.FileWriter;
import java.io.IOException;
import java.io.InputStream;
import java.io.PrintWriter;
import java.io.Writer;
import java.nio.file.Path;
import java.nio.file.Paths;
import java.util.Properties;
import java.util.Set;

import javax.servlet.ServletContext;
import javax.servlet.ServletContextEvent;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;

import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet("/SaveRecipe")
			
public class SaveRecipe extends HttpServlet {
	
	/**
	 * 
	 */
	private static final long serialVersionUID = 12L;
	 File update_log = null;
     final String fileName = "my_updates.html";

	public void init() {
		System.err.println("HalloDuDaServlet wurde initialisiert.");
		
		 String file_path = getServletContext().getRealPath(fileName);
         update_log = new File(file_path);
         if (!update_log.exists()) {
             try {
                 update_log.createNewFile();
             } catch (IOException e) {
                 e.printStackTrace();
                 System.out.println("Error while creating file : " + fileName);
             }
         }
	}
	
	int RezeptNr = 0;
	
	
	private void doGetOrPost(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {
		
		
		RezeptNr++;
		
		
		SpeicherBean bean = new SpeicherBean();
		
		bean.setRezeptNr(RezeptNr);
		bean.setName(request.getParameter("Rezeptname"));
		bean.setKategorie ( request.getParameter("Kategorie"));
		bean.setDauer ( request.getParameter("dauer"));
		bean.setMinSt ( request.getParameter("minSt"));
		bean.setBeschreibung ( request.getParameter("Beschreibung"));
		
		
		bean.setTag(request.getParameterValues("tag"));
		bean.setZutat(request.getParameterValues("Zutat"));
		bean.setMenge(request.getParameterValues("Menge"));
		bean.setEinheit(request.getParameterValues("Einheit")); 
		bean.setRezeptErstellen();
	            
		request.getServletContext().getRequestDispatcher("/SaveRecipeUmleitung.html").forward(request, response);         

  }


         
	protected void doGet(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {
		doGetOrPost(request, response);
	}
	


	protected void doPost(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {
		doGetOrPost(request, response);
	}





 
		
    
	
}
