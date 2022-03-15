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
public class IdFilter implements Filter {

	public void destroy() {
		// TODO Auto-generated method stub
	}

	public void doFilter(ServletRequest request, ServletResponse response, FilterChain chain) 	throws IOException, ServletException {
		
		PrintWriter out = response.getWriter(); // Ekrana bir şey yazacağımız zaman bu objeyi yaratmamız gereklidir.
		HttpServletRequest req = (HttpServletRequest) request; // Sayfanın Request parametresini almamız gerekmektedir.
		int alienID = Integer.parseInt(request.getParameter("alienID")); // Üzerinde işlem yapacağımız parametrenin çağrılışıdır.
	
		if(alienID>1){
		chain.doFilter(request, response);
		}
		else{
			out.println("Please enter the ID greater than zero.");
		}
	}

	public void init(FilterConfig fConfig) throws ServletException {
		// TODO Auto-generated method stub
	}

}
