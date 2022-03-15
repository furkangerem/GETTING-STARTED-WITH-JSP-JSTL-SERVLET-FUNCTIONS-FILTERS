package com.mfg;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.annotation.WebServlet;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

@WebServlet ("/square")
public class SquareServlet extends HttpServlet {
	
	public void doGet(HttpServletRequest req, HttpServletResponse res) throws IOException {
		
		/*
		int square = (int) req.getAttribute("square"); // İletilen veriyi işlemek için burada çağırıyoruz.
		PrintWriter out = res.getWriter(); // Sayfaya bir şey yazdırmak istediğimizde bu fonksiyonu kullanırız.
		out.println("Result is: " + square);
		*/
		
		/* HTTP Session kullanımı
		HttpSession session = req.getSession();
		int square = (int) session.getAttribute("square");
		*/
		int square = 0;
		
		Cookie cookies[] = req.getCookies();
		for(Cookie cookie: cookies){
			if(cookie.getName().equals("square"))
				square = Integer.parseInt(cookie.getValue());
		}
		
		PrintWriter out = res.getWriter(); // Sayfaya bir şey yazdırmak istediğimizde bu fonksiyonu kullanırız.
		out.println("Result is: " + square);
	}
}
