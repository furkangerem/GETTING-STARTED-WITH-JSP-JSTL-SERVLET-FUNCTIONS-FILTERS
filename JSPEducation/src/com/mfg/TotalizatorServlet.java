package com.mfg;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

@WebServlet ("/add")
// Servlet aslında bir classdır. Extends "HTTPServlet" diyerek Servlet oluşturulmaktadır.
public class TotalizatorServlet extends HttpServlet {
	// public void service(HttpServletRequest req, HttpServletResponse res) throws IOException { 
	// "Post/Get" fark etmeksizin fonksiyon çağırırken bu şekilde çağırırız.
	public void doGet(HttpServletRequest req, HttpServletResponse res) throws IOException, ServletException { 
		// "Post" için "doPost" "Get" için "doGet" kullanılır.
		int i = Integer.parseInt(req.getParameter("number1"));
		int j = Integer.parseInt(req.getParameter("number2"));

		int total = i + j;
		int square = total*total;
		
		Cookie cookie = new Cookie("square", square + ""); // İkinci "square" parametresini string türünde istiyor.
		res.addCookie(cookie);							  // Bunu yapmak için square + "" eklememiz yeterli olacaktır.

		//res.sendRedirect("square?square=" +square);
	
		/*
		HTTP Session kullanımı
		HttpSession session = req.getSession();
		session.setAttribute("square", square);
		*/

		/*
		PrintWriter out = res.getWriter();

		System.out.println("Result is: " + total);
		out.println("Result is: " + total);
		*/
		
		/* İki Servlet arasında veri iletişimi için "Session Management" kullanırız.
		req.setAttribute("square", square); // Veriyi iletiyoruz.
		
		RequestDispatcher RD = req.getRequestDispatcher("square");
		RD.forward(req, res);
		*/
		
	}
}
