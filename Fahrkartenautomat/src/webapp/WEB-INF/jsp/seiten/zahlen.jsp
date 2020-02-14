<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %> 

<div>
	<c:out value="${name}"></c:out>
	<c:out value="${preis}"></c:out>
	<button type="submit">Bezahlen</button>
</div>
