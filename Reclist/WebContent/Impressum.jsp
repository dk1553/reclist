<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title></title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM" crossorigin="anonymous"></script>
<script src="jquery-3.6.0.js"></script>
<link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.11.2/css/all.css">
<link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Roboto:300,400,500,700&display=swap">
<link rel="stylesheet" href="node_modules/mdbootstrap/css/bootstrap.min.css">
<link rel="stylesheet" href="node_modules/mdbootstrap/css/mdb.min.css">
<link rel="stylesheet" href="node_modules/mdbootstrap/css/style.css">
<link rel="stylesheet" type="text/css" href="Impressum.css">
<script type="text/javascript" src="Impressum.js"></script>

 
 
</head>
<body>
    <nav class="navKat">
        <div class="container">
            <div class="logo">
                 <a href="IngredientsCalc?calc=false&goTo=%2FHomepageNew.jsp"><img src="images/logo.png"></a>
            </div>
            <div id="mainListDiv" class="main_list">
                <ul class="navlinks">
                          <li><a href="IngredientsCalc?search=Fleisch&calc=searchID&goTo=%2FKategorienNew.jsp">Fleisch</a></li>
                     <li><a href="IngredientsCalc?search=Vegetarisch&calc=searchID&goTo=%2FKategorienNew.jsp">Vegetarisch</a></li>
                     <li><a href="IngredientsCalc?search=Vegan&calc=searchID&goTo=%2FKategorienNew.jsp">Vegan</a></li>
                    <li><a href="IngredientsCalc?search=Nudeln&calc=searchID&goTo=%2FKategorienNew.jsp">Nudeln</a></li>
                     <li><a href="IngredientsCalc?search=Reis&calc=searchID&goTo=%2FKategorienNew.jsp">Reis</a></li>
                                         <li><a href="NewRecipe3.jsp">+Rezept</a></li>
                           
                    <li><form class="form-inline" action="IngredientsCalc" method="get">
                            <input class="form-control" type="search" placeholder="Search" name="search" id="search" aria-label="Search">
                            <input type="hidden" name="calc" value="searchID">
							<input type="hidden" name="goTo" value="/KategorienNew.jsp">
							 
                            </form>
                       
                    </li>
 
                     
                </ul>
            </div>
            <span class="navTriggerKat">
                <i></i>
                <i></i>
                <i></i>
            </span>
        </div>
    </nav>
 
    <section class="homeKat">
   
        
    </section>
        <!-- just to make scrolling effect possible -->
               <div style="padding-top: 6em; max-height: 100%; background-color:lightgrey">
           <div id="test">
                    <h1>Impressum</h1>
<p>Linus Pust<br/>
Hauptstra&#223;e 8<br/>
76137 Karlsruhe<br/>
Tel: 0171251238<br/>
<a href="mailto:pust.linus@gmail.com">pust.linus@gmail.com</a>
</p>
<meta name="generator" content="Impressum-Generator der Kanzlei Hensche Rechtsanwälte"/>
<p>&nbsp;</p>
<h1>Disclaimer - rechtliche Hinweise</h1>
<p><strong>Auskunfts- und Widerrufsrecht</strong></p>
<p>Sie haben jederzeit das Recht, sich unentgeltlich und unverz&#252;glich &#252;ber die zu Ihrer Person erhobenen Daten 
zu erkundigen. Ebenfalls k&#246;nnen Sie Ihre Zustimmung zur Verwendung Ihrer angegebenen pers&#246;nlichen Daten mit 
Wirkung f&#252;r die Zukunft widerrufen. Hierf&#252;r wenden Sie sich bitte an den im Impressum angegebenen 
Diensteanbieter.</p>
<P><STRONG>Datenschutz (allgemein)</STRONG></P>
<P>Beim Zugriff auf unsere Webseite werden automatisch allgemeine Informationen (sog. Server-Logfiles) erfasst. Diese 
beinhalten u.a. den von Ihnen verwendeten Webbrowser sowie Ihr Betriebssystem und Ihren Internet Service Provider. Diese 
Daten lassen keinerlei R&#252;ckschl&#252;sse auf Ihre Person zu und werden von uns statistisch ausgewertet, um unseren 
Internetauftritt technisch und inhaltlich zu verbessern. Das Erfassen dieser Informationen ist notwendig, um den Inhalt 
der Webseite korrekt ausliefern zu k&#246;nnen.</P>
<P>Die Nutzung der Webseite ist grunds&#228;tzlich ohne Angabe personenbezogener Daten m&#246;glich. Soweit 
personenbezogene Daten (beispielsweise Name, Anschrift oder E-Mail-Adressen) erhoben werden, erfolgt dies, soweit 
m&#246;glich, stets auf freiwilliger Basis. Diese Daten werden ohne Ihre ausdr&#252;ckliche Zustimmung nicht an Dritte 
weitergegeben.</P>
<P>Sofern ein Vertragsverh&#228;ltnis begr&#252;ndet, inhaltlich ausgestaltet oder ge&#228;ndert werden soll oder Sie an 
uns eine Anfrage stellen, erheben und verwenden wir personenbezogene Daten von Ihnen, soweit dies zu diesem Zwecke 
erforderlich ist (Bestandsdaten). Wir erheben, verarbeiten und nutzen personenbezogene Daten soweit dies erforderlich 
ist, um Ihnen die Inanspruchnahme des Webangebots zu erm&#246;glichen (Nutzungsdaten). S&#228;mtliche personenbezogenen 
Daten werden nur solange gespeichert wie dies f&#252;r den genannten Zweck (Bearbeitung Ihrer Anfrage oder Abwicklung 
eines Vertrags) erforderlich ist. Hierbei werden steuer- und handelsrechtliche Aufbewahrungsfristen von uns 
ber&#252;cksichtigt. Auf Anordnung der zust&#228;ndigen Stellen m&#252;ssen wir im Einzelfall Auskunft &#252;ber diese 
Daten (Bestandsdaten) erteilen, soweit dies f&#252;r Zwecke der Strafverfolgung, zur Gefahrenabwehr, zur Erf&#252;llung 
der gesetzlichen Aufgaben der Verfassungsschutzbeh&#246;rden oder des Milit&#228;rischen Abschirmdienstes oder zur 
Durchsetzung der Rechte am geistigen Eigentum erforderlich ist.</P>
<P>Wir weisen ausdr&#252;cklich darauf hin, dass die Daten&#252;bertragung im Internet (z. B. bei der Kommunikation per 
E-Mail) Sicherheitsl&#252;cken aufweisen kann. Vor dem Zugriff auf Daten kann nicht l&#252;ckenlos gesch&#252;tzt 
werden.</P>
<P>Die Nutzung von im Rahmen der Impressumspflicht ver&#246;ffentlichten Kontaktdaten durch Dritte zur &#220;bersendung 
von nicht ausdr&#252;cklich angeforderter Werbung und Informationsmaterialien wird hiermit ausdr&#252;cklich untersagt. 
Ausgenommen hiervon sind bestehende Gesch&#228;ftsbeziehungen bzw. es liegt Ihnen eine entsprechende Einwilligung von uns 
vor.</P>
<P>Die Anbieter und alle auf dieser Website genannten Dritten behalten sich ausdr&#252;cklich rechtliche Schritte im 
Falle der unverlangten Zusendung von Werbeinformationen vor. Gleiches gilt f&#252;r die kommerzielle Verwendung und 
Weitergabe der Daten.</P>
<p>&nbsp;</p>
<p><strong>Disclaimer (Haftungsausschluss)</strong></p>
<p><strong>1. Haftung f&#252;r Inhalte</strong></p>
<p>Als Diensteanbieter sind wir gem&#228;&#223; &#167; 7 Abs. 1 TMG f&#252;r eigene Inhalte auf diesen Seiten nach den 
allgemeinen Gesetzen verantwortlich. Nach &#167;&#167; 8 bis 10 TMG sind wir als Diensteanbieter jedoch nicht 
verpflichtet, &#252;bermittelte oder gespeicherte fremde Informationen zu &#252;berwachen oder nach Umst&#228;nden zu 
forschen, die auf eine rechtswidrige T&#228;tigkeit hinweisen. Verpflichtungen zur Entfernung oder Sperrung der Nutzung 
von Informationen nach den allgemeinen Gesetzen bleiben hiervon unber&#252;hrt. Eine diesbez&#252;gliche Haftung ist 
jedoch erst ab dem Zeitpunkt der Kenntnis einer konkreten Rechtsverletzung m&#246;glich. Bei Bekanntwerden von 
entsprechenden Rechtsverletzungen werden wir diese Inhalte umgehend entfernen.
</p>
<p><strong>2. Haftung f&#252;r Links</strong></p>
<p>Diese Website enth&#228;lt Links zu externen Webseiten Dritter, auf deren Inhalte kein Einfluss genommen werden kann. 
Deshalb kann f&#252;r diese fremden Inhalte auch keine Gew&#228;hr &#252;bernommen werden. F&#252;r die Inhalte der 
verlinkten Seiten ist stets der jeweilige Anbieter oder Betreiber der Seiten verantwortlich. Die verlinkten Seiten wurden 
zum Zeitpunkt der Verlinkung auf m&#246;gliche Rechtsverst&#246;&#223;e &#252;berpr&#252;ft. Rechtswidrige Inhalte waren 
zum Zeitpunkt der Verlinkung nicht erkennbar. Eine permanente inhaltliche Kontrolle der verlinkten Seiten ist jedoch ohne 
konkrete Anhaltspunkte einer Rechtsverletzung nicht zumutbar. Bei Bekanntwerden von Rechtsverletzungen werden derartige 
Links umgehend von dieser Website auf die rechtsverletzende Site entfernen.</p>
<p><strong>3. Urheberrecht</strong></p>
<p>Die durch die Diensteanbieter, deren Mitarbeiter und beauftragte Dritte erstellten Inhalte und Werke auf diesen Seiten 
unterliegen dem deutschen Urheberrecht. Die Vervielf&#228;ltigung, Bearbeitung, Verbreitung und jede Art der Verwertung 
au&#223;erhalb der Grenzen des Urheberrechtes bed&#252;rfen der vorherigen schriftlichen Zustimmung des jeweiligen Autors 
bzw. Erstellers. Downloads und Kopien dieser Seite sind nur f&#252;r den privaten, nicht kommerziellen Gebrauch 
gestattet. Soweit die Inhalte auf dieser Seite nicht vom Betreiber erstellt wurden, werden die Urheberrechte Dritter 
beachtet. Insbesondere werden Inhalte Dritter als solche gekennzeichnet. Sollten Sie trotzdem auf eine 
Urheberrechtsverletzung aufmerksam werden, bitten wir um einen entsprechenden Hinweis. Bei Bekanntwerden von 
Rechtsverletzungen werden derartige Inhalte umgehend entfernen.</p>  
 </div>   
 <footer class="bg-dark text-center text-white" style="bottom:0px; width:100%;">

 
  <!-- Copyright -->
  <div class="text-center p-3" style="background-color: rgba(0, 0, 0, 0.2)">
    
    		<ul class="list-unstyled mb-0">
            <li><a href="Hilfeseite.jsp" class="text-white">Hilfe</a></li>
                  
            <li><a href="Impressum.jsp" class="text-white">Impressum</a></li>
           </ul>
          2021 Reclist 
  </div>
  
 
</footer>

           
           </div>
          
</body>

 
  
 
<!-- Jquery needed -->
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
    <script src="js/scripts.js"></script>
 
<!-- Function used to shrink nav bar removing paddings and adding black background -->
    <script>
        $(window).scroll(function() {
            if ($(document).scrollTop() > 50) {
                $('.nav').addClass('affix');
                console.log("OK");
            } else {
                $('.nav').removeClass('affix');
            }
        });
     
 
    
    </script>
</body>
</html>