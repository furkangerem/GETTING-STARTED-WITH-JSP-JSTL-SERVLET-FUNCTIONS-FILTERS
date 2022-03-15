<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="core" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="function" uri="http://java.sun.com/jsp/jstl/functions"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Getting Started With Functions</title>
</head>
<body>

	<core:set var="exampleStringVar" value="Getting better in Functions." />
	Length: ${exampleStringVar} <br/> <!-- Direkt bize objemizin içeriğini döndü. -->
	Length: ${function: length(exampleStringVar)} <br/> <!-- Uzunluk fonksiyonun kullanımı -->
	
	<core:forEach items="${function:split(exampleStringVar, ' ')}" var="newSplittedStringVar"> <!-- exampleStringVar değişkeninde " " olan kısımları bölüp newSplittedStringVar parametresine attık.  -->
		<br/>
		${newSplittedStringVar}
	</core:forEach>
	<br/>
	<core:forEach items="${function:split(exampleStringVar, 'i')}" var="newSplittedStringVariable"> <!-- exampleStringVar değişkeninde "i" olan kısımları bölüp newSplittedStringVariable parametresine attık.  -->
		<br/>
		${newSplittedStringVariable}
	</core:forEach>
	<br/>
	<br/>
	
	Index number of given string input: ${function:indexOf(exampleStringVar, "in")} <br/> <!-- Girilen değerin index numarasını bulan fonksiyon. -->
	Is there "better" in the sentence?: ${function:contains(exampleStringVar, "better")} <br/> <!--  Girilen değerin cümle içerisinde bulunup bulunmadığını kontrol eden fonksiyon. -->
	Is there "JSP" in the sentence?: ${function:contains(exampleStringVar, "JSP")} <br/>
	
	<core:if test="${function:contains(exampleStringVar, 'is')}">
		The given input string "is" is there.
	</core:if>
	<br/>
	<core:if test="${function:contains(exampleStringVar, 'in')}">
		The given input string "in" is there.
	</core:if>
	<br/>
	
	<core:if test="${function:endsWith(exampleStringVar, 'Functions.')}">
		Yes. The string ends with "Functions".
	</core:if>
	<br/>
	<br/>
	
	${function:toLowerCase(exampleStringVar)} 
	<br/>
	${function:toUpperCase(exampleStringVar)}
	
</body>
</html>