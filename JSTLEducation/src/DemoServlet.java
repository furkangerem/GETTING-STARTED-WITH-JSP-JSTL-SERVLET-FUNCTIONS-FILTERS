import java.io.IOException;
import java.util.Arrays;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/DemoServlet")
public class DemoServlet extends HttpServlet {
	protected void doGet(HttpServletRequest request, HttpServletResponse response)throws ServletException, IOException {
		
		Student student = new Student(0, "MFG");
		request.setAttribute("studentInfo", student);

		String myName = "Furkan";
		request.setAttribute("label", myName);
		RequestDispatcher requestDispatcher = request.getRequestDispatcher("Display.jsp");
		requestDispatcher.forward(request, response);
	}
}
