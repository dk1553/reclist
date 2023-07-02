package servlets2;

import java.io.File;
import java.io.FileWriter;
import java.io.IOException;
import java.io.Writer;

public class SpeicherBean {

	private String name;
	private String kategorie;
	private String dauer;
	private String minSt;
	private String beschreibung;
	
	
	private String[] tag;
	private String[] Zutat;
	private String[] Menge;
	private String[] Einheit; 
	
	private int RezeptNr;
	private String allTag;
	private String allIngredients;
	private String allEinheiten;
	private String allMengen;
	
	private boolean RezeptErstellen;
	
	public SpeicherBean() {
		 String name= "";
		 String kategorie= "";
		 String dauer= "";
		 String minSt= "";
		 String beschreibung= "";
		
		
		 String[] tag= new String[0];
		 String[] Zutat= new String[0];
		 String[] Menge= new String[0];
		 String[] Einheit= new String[0]; 
		
		 int RezeptNr= 0;
		
		RezeptErstellen= false;
		
	}
	
	public void setRezeptErstellen() throws IOException {
		
		
		
		
		
		String idForDb=(kategorie+name+allTag).toLowerCase();
		
		File DB;
		File file = new File("D:\\RezeptDB.html");
	     if(!file.exists()){
	    	try{
	    		file.createNewFile();
	    	}
	    	catch(IOException e){
	    	}
	     }
		
	
		Writer writer = new FileWriter(file, true);
		
		
	
		writer.write("\n\n<table id=\"@"+idForDb+"\">\r\n"
				+"<tr><td class=\"rezeptID\">@"+idForDb+"</td><td></td></tr>\r\n"
				+ "<tr><td class=\"ee\">"+name+"</td><td></td></tr>\r\n"
				
				+ "<tr><td>Zubereitungsdauer</td><td>"+dauer+" Min </td></tr>\r\n"
				+ "<tr><td  colspan=\"2\" class= \"zu\"><table>\r\n"
				+ "							<tr><td width=\"100\" colspan=\"2\">Zutaten A</td></tr>\r\n");
		
		
		for (int i=0;i<Zutat.length;i++) {
		writer.write(                       "<tr><td>"+Zutat[i]+"</td><td>"+Menge[i]+" "+Einheit[i]+"</td></tr>\r\n");
		}
		
		
			
				
				
				writer.write( "					</table>\r\n"
				+ "									</td></tr>\r\n"
				+ "<tr><td class=\"tag\" colspan=\"2\"><table>\r\n");
				for (int i=0;i<tag.length;i++) {
				
		writer.write( "										<tr><td>"+tag[i]+"</td>\r\n");
		}
		writer.write("										</tr>\r\n"
				+ "								</table>\r\n"
				+ "</td></tr>\r\n"
				+ "<tr><td colspan=\"2\"  class= \"be\" id=\"about\"> <h1>Beschreibung</h1>"+beschreibung+"</td></tr>\r\n");
				
		for (int i=0;i<Zutat.length;i++) {
		writer.write(                       "<tr><td class=\"ser\"><input type=\"hidden\"   name=\"newIngr\" value=\""+Zutat[i]+"\"></td></tr>\r\n"
				+"<tr><td class=\"ser\" ><input type=\"hidden\"  name=\"newMenge\" value=\""+Menge[i]+"\"></td></tr>\r\n"
				+"<tr><td class=\"ser\" ><input type=\"hidden\"  name=\"newEinheit\" value=\""+Einheit[i]+"\"></td></tr>\r\n");
		}
	
				
		writer.write(  	 "</table> \r\n\n\n");
		 
		writer.close();
	}

	
	
	
	
	
	
	public int getRezeptNr() {
		return RezeptNr;
	}

	public void setRezeptNr(int rezeptNr) {
		RezeptNr = rezeptNr;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getKategorie() {
		return kategorie;
	}

	public void setKategorie(String kategorie) {
		this.kategorie = kategorie;
	}

	public String getDauer() {
		return dauer;
	}

	public void setDauer(String dauer) {
		this.dauer = dauer;
	}

	public String getMinSt() {
		return minSt;
	}

	public void setMinSt(String minSt) {
		this.minSt = minSt;
	}

	public String getBeschreibung() {
		return beschreibung;
	}

	public void setBeschreibung(String beschreibung) {
		this.beschreibung = beschreibung;
	}

	public String[] getTag() {
		return tag;
	}

	public void setTag(String[] tag) {
		this.tag = tag;
	if(tag.length>1) {
			for(int i=0;i<tag.length;i++) {
				allTag=allTag+tag[i];
			}
			}
		
	}

	public String[] getZutat() {
		return Zutat;
	}

	public void setZutat(String[] zutat) {
		this.Zutat = zutat;
	if(Zutat.length>1) {
			for(int i=0;i<Zutat.length;i++) {
				allIngredients=allIngredients+Menge[i];
			}
		}
	}

	public String[] getMenge() {
		return Menge;
	}

	public void setMenge(String[] menge) {
		this.Menge = menge;
		if(Menge.length>1) {
				for(int i=0;i<Menge.length;i++) {
					allMengen=allMengen+menge[i];
				}
			}
	}

	

	public String[] getEinheit() {
		return Einheit;
	}

	public void setEinheit(String[] einheit) {
		this.Einheit = einheit;
		if(Einheit.length>1) {
				for(int i=0;i<Einheit.length;i++) {
					allEinheiten=allEinheiten+einheit[i];
				}
			}
	}

	public String getAllTag() {
		return allTag;
	}

	public void setAllTag(String allTag) {
		this.allTag = allTag;
	}
	
	public String getAllIngredients() {
		return allIngredients;
	}

	public void setAllIngredients(String allIngredients) {
		this.allIngredients = allIngredients;
	}

	public String getAllEinheiten() {
		return allEinheiten;
	}

	public void setAllEinheiten(String allEinheiten) {
		this.allEinheiten = allEinheiten;
	}

	public String getAllMengen() {
		return allMengen;
	}

	public void setAllMengen(String allMengen) {
		this.allMengen = allMengen;
	}
	
	
	
	
	
}
