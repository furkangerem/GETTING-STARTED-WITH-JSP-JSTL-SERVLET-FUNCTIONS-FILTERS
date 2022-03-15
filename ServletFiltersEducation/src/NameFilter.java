import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.Filter;
import javax.servlet.FilterChain;
import javax.servlet.FilterConfig;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.annotation.WebFilter;
import javax.servlet.http.HttpServletRequest;

@WebFilter("/addAlien")
public class NameFilter implements Filter {

	public void destroy() {
		// TODO Auto-generated method stub
	}

	public void doFilter(ServletRequest request, ServletResponse response, FilterChain chain) 	throws IOException, ServletException {
		
		PrintWriter out = response.getWriter();
		HttpServletRequest req = (HttpServletRequest) request;
		String alienName = request.getParameter("alienName");
		
		
		if(alienName != "" ){
		chain.doFilter(request, response);
		}
		else{
			out.println("Please enter only String variable for Name attribute.");
			out.println("Name field can't be empty.");
		}
	}

	public void init(FilterConfig fConfig) throws ServletException {
		// TODO Auto-generated method stub
	}

}
