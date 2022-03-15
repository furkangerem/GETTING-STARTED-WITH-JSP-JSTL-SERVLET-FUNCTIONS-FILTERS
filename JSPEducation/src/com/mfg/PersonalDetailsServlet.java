package com.mfg;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet ("/info")
public class PersonalDetailsServlet extends HttpServlet {

	protected void doGet(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException {
		
		PrintWriter out = res.getWriter();
		out.println("Servlet Config and Servlet Context Education");
		
		ServiceContext serviceContext = getServletContext();
		String name = serviceContext.getInitParameter("Name");
		out.println(name);
		
		String surname = serviceContext.getInitParameter("Surname");
		out.println(surname);
		
		String age = serviceContext.getInitParameter("Age");
		out.println(age);
	}

}
