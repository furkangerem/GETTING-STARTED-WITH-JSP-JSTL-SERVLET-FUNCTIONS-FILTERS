<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" errorPage="ErrorPage.jsp"%>
<%@ page import="java.util.ArrayList" %>
<%@ include file="Header.jsp" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<!-- Normalde Servlet'te "req, res" değişkenlerini tanımlamak zorunluydu ama JSP'de default olarak "request, response" şeklinde vermektedir. -->
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>

<!-- 
	JSP'nin 4 temel fonksiyonu vardır. Bunlar; Declaration, Directive, Scriplet, Expression
	Scriplet <yüzdeİşareti ile başlayıp biten kısma,
	Decleration ise <yüzdeİşareti! ile başlayıp yüzdeİşareti> ile biten kısma denmektedir. Bunun arasındaki kodları servisin içerisine dahil edilmemesi için koyarız.
	Directive, <yüzdeİşareti@ ile başlayan kod satırları için kullanılmaktadır. Örneğin bir paketi import ettiğimizde directive yapısını kullanmaktayız.
	Expression, normalde bir değer yazdırmak istediğimizde,
	My Lucky Number is: <yüzdeİsareti out.println(paramName); yüzdeİsareti> yazmamız gerekmektedir ama JSP'deki Expression sayesinde,
	My Lucky Number is: <yüzdeİsareti= paramName yüzdeİsareti> ile işlemi gerçekleştirebiliriz.
-->

<!-- 
	JSP Directives - @page @include @taglib
	@page: Sayfada spesifik bir işlemler yapılacağı zaman kullanılır. Kullanımı,
	<yüzdeİsareti@ page attribute="value" attribute="value" yüzdeİsareti>
	@include: Her sayfa bir başlığa, fotoğrafa... sahiptir. Her JSP için Header kodu yazmak yerine birine yazıp diğerlerine ekleyebiliriz.
	@taglib: External tags kullanılmak istenildiğinde kullanılmaktadır. External tags kullanılacaksa URI belirtilmek zorundadır. Ayrıca, Prefix de belirtilmelidir.
	<yüzdeİsareti@ taglib uri="pathOfYourLibrary" prefix="yourPrefixTagName" yüzdeİsareti>
-->
 
<!-- 
 	JSP'de bazı objeleri tanımlamaya gerek kalmamaktadır. Kendisi, bizim yerimize oluşturulduğunda tanımlamaktadır. Bunları şu ana kadar kullandık fakat hangileri dersek,
 	request (HttpServletRequest), response (HttpServletResponse), pageContext (PageContext), out (JspWriter - PrintWriter), session (HttpSession), application (ServletContext), config (ServletConfig)
 	Örneğin, pageContext.setAttribute("name", "Furkan"); kodu ile "name" objesine "Furkan" String değerini atadık. Bunun açılan tüm sayfalarda tutulması için Session, sadece talep edilen sayfada tutulması için de Request olarak işlememiz gerekmektedir.
 	pageContext.setAttribute("name", "Furkan", PageContext.SESSION_SCOPE);
 	NOT: pageContext objesi ile verileri hangi scopede tutacağımızı belirtebiliriz. Örnekteki gibi, "name" objesi açılan tüm sayfalarda tutulabilir. Bu ayarlamayı da PageContext.SESSION_SCOPE ile gerçekleştirmiş bulunmaktayız.
-->

<body bgcolor="cyan">
	<%
		int i = Integer.parseInt(request.getParameter("number1"));
		int j = Integer.parseInt(request.getParameter("number2"));

		int total = i + j;
		out.println("Result is: " + total);
		
		/* JSP Error Handling Try-Catch Method */
		/*	int tryCatchParam = 9/0; Bu direkt olarak hata fırlatacağı için programı sonlandıracaktır ama bunu istemiyoruz. Bunun için Try/Catch yapısı kullanacağız. */
		/*	
		try {
			int tryCatchParam = 9/0;
		}
		catch(Exception exception){
			out.println("Error: " + exception.getMessage()); // Bu yapı sayesinde, hataya düşüp terminate olmasını engelledik ve ekrana hatayı yazdırtıp işlemlere devam ettirebildik.
		}
		*/
		/* JSP Error Handling Try-Catch Method */
		int tryCatchParam = 9/0;
	%>
</body>
</html>