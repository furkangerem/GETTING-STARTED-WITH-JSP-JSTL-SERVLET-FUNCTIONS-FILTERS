<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" isErrorPage="true"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Error Page</title>
</head>
<!-- 
	Herhangi bir hatada ekrana hata mesajı fırlatmak yerine direkt bu sayfaya gitmesini istediğimiz için oluşturuldu.
	"exception" bir objedir ve sadece isErrorPage = "true" sayfasında etkinleşir.
-->
<body bgcolor="red">
	Error!
	<%= exception.getMessage() %> <%-- "exception" bu sayfanın özel bir objesi olduğu için hata mesajını da alabilir ve ekrana yazdırtabiliriz. --%>
</body>
</html>