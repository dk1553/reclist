package servlets;

import java.io.IOException;


import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import beans.Einkaufsliste;
import beans.RezeptVorschau;

/**
 * Servlet implementation class DoCalculation
 */
@WebServlet("/IngredientsCalc")
public class IngredientsCalc extends HttpServlet {
    private static final long serialVersionUID = 1L;
    
    
    
    Einkaufsliste liste= new Einkaufsliste();
    RezeptVorschau rezept=new RezeptVorschau();
    int sort=0;
    
    

    private void doGetOrPost(HttpServletRequest request,
            HttpServletResponse response) throws ServletException, IOException {
        
    	
    	//Neue Session wird mit einer neue, leere Einkaufsliste gestartet
        HttpSession session = request.getSession();
        if(session.isNew()) {
            Einkaufsliste liste= new Einkaufsliste();
            RezeptVorschau rezept=new RezeptVorschau();
        }
        
            
            
            

        
        
        
        request.setAttribute("rezept", rezept);
        request.setAttribute("liste", liste);
    
        
        
        String goTo=request.getParameter("goTo");
        
        //Bearbeitung unterschiedlichen Anfragen

        //Neue Zutaten werden zur Einkaufliste hingugefügt
        if((request.getParameter("calc").equals("true"))&&(request.getParameterMap().containsKey("newIngr")) ){
            liste.setNewIngr(request.getParameterValues("newIngr"));
            liste.setNewMenge(request.getParameterValues("newMenge"));
            liste.setNewEinheit(request.getParameterValues("newEinheit"));
            
            }
            
        
      //Bereits bestehende Einkaufliste wird geändert: alte Zutaten löschen, neue Zutaten hinzufügen
        else if(request.getParameter("calc").equals("change")) {
            if(request.getParameterMap().containsKey("alteIngr")) {
            liste.setLeerResult();
            liste.setAlteIngr(request.getParameterValues("alteIngr"));
            liste.setAlteMenge(request.getParameterValues("alteMenge"));
            liste.setAlteEinheit(request.getParameterValues("alteEinheit"));}
            
            if(request.getParameterMap().containsKey("newIngr")) {
                liste.setNewIngr(request.getParameterValues("newIngr"));
                liste.setNewMenge(request.getParameterValues("newMenge"));
                liste.setNewEinheit(request.getParameterValues("newEinheit"));}
            
            }
        
        //Allen in der Einkaufsliste wird gelöscht, in den die Einkaufsliste neu erstellt wird
        else if(request.getParameter("calc").equals("deleteAll")) {
            
             liste.setLeerResult();
             liste = new Einkaufsliste();
            }
        
        
        //Sortierung auf der Kategorien-Seite wird geändert: Alte->Neue oder Neue->Alte
        else if(request.getParameter("calc").equals("changeSort")) {
            
            if(sort==0) {
                rezept.setSortData("newFirst");
                sort=1;
            }else {
                rezept.setSortData("oldFirst");
                sort=0;    
            }
        
         }
        
        
        //Suchfunktion
        else if(request.getParameter("calc").equals("searchID")) {
            rezept.setSearchID(request.getParameter("search").toLowerCase());
        
            }
        
        
        
        //Umleitung auf der RezeptVorschau-Seite, ID von dem gewünschten Rezept wird in Beans RezeptVorschau gespeichert
        else if(goTo.equals("/RezeptVorschauNew.jsp")) { //request.getParameter("calc") ist immer FALSE, wenn ein User auf RezeptVorschau-Seite umgeleitet werden muss
                
            rezept.setRezeptID(request.getParameter("vorschau"));
            }
        

        
        
        //Before der Servlet verlassen wird, sollte die Einkaufsliste nabhängig von der Anfrage neu berechnet werden, damit dem User immer aktuellste Version der Liste auf allen Seiten dargestellt wird
        liste.setNewResult(); 
        
        
        //Verlassen des Servlets
        request.getServletContext().getRequestDispatcher(goTo).forward(request, response);
        
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