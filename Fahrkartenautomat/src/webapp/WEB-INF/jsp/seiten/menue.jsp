<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %> 

<div>
	Willkommen!<br>Was moechten Sie tun?
</div>
<c:if test="${Untermenue != true}">
	<div>
		<form method="post">
			<table>
				<tr><td><button type="submit" name = "auswahl" value="4">1. Einzelfahrkarte kaufen</button></td></tr>
				<tr><td><button type="submit" name = "auswahl" value="5">2. 10er Streifenkarte kaufen</button></td></tr>
				<tr><td><button type="submit" name = "auswahl" value="6">3. TagesTicket Plus kaufen</button></td></tr>
				<tr><td><button type="submit" name = "auswahl" value="7">4. 4er Ticket kaufen</button></td></tr>
				<tr><td><button type="submit" name = "auswahl" value="9">5. Zeitkarte kaufen</button></td></tr>
				<tr><td><button type="submit" name = "auswahl" value="8">6. Ferienticket kaufen</button></td></tr>
			</table>
		</form>
	</div>
</c:if>
<c:if test="${Untermenue == true}">
	<div>
		<form method="post">
			<table>
				<tr><td><button type="submit" name = "auswahl" value="1">1. Wochenkarte</button></td></tr>
				<tr><td><button type="submit" name = "auswahl" value="2">2. Monatskarte</button></td></tr>
				<tr><td><button type="submit" name = "auswahl" value="3">3. Jahreskarte</button></td></tr>
			</table>
		</form>
	</div>
</c:if>
