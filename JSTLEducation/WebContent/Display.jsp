<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="core"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Getting Started With JSTL</title>
</head>
<body>

	<%-- Veriyi bağlamak için Java kodu kullanılabilmektedir. --%>
	<%
		String myName = request.getAttribute("label").toString();
		out.println(myName);
	%>

	<%-- Ayrıca veriyi bağlamanın başka bir yolu da Expression Language'dir. --%>
	${label} <br>
	${studentInfo.studentName}<br> <%-- Veriyi bu şekilde alamayız. Öncelikle Student classını içerisine "Getter&Setter" entegre etmeliyiz. --%>
	${studentInfo}<br> <%-- ToString komutunu Student Classına entegre ettikten sonra tüm verilerine rahatlıkla ulaşabilmekteyiz. --%>

	<%-- JSTL'in kendine has yazdırma komutları da bulunmaktadır. Öncelikle bu kütüphaneyi başlangıçta implemente etmemiz gerekmektedir. --%>
	<core:out value="${label}" />
	<%-- <core:import url="http://www.google.com"></core:import> Sayfanın public kod bileşenlerini ekrana yansıtır. --%>


</body>
</html>