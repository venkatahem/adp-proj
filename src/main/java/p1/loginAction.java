package p1;

import java.io.*;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.login.dao.LoginDao;



@WebServlet(asyncSupported = true, urlPatterns = { "/loginAction" })
public class loginAction extends HttpServlet {
	private static final long serialVersionUID = 1L;
	
       
  
    public loginAction() {
        super();
        // TODO Auto-generated constructor stub
    }

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		
		
		String uname = request.getParameter("uname");
		String upass = request.getParameter("upass");
		String str;
		int i;
		int len;
		
		len = upass.length();
		len = len + 8;
		char[] ch = new char[len];
		for (i = 0; i < upass.length(); i++) {
		    ch[i] = upass.charAt(i);

		}
		i = (upass.length());
		ch[i] = 's';
		ch[i + 1] = 'u';
		ch[i + 2] = 'r';
		ch[i + 3] = 'a';
		ch[i + 4] = 'k';
		ch[i + 5] = 's';
		ch[i + 6] = 'h';
		ch[i + 7] = 'a';

		for (i = 0; i < len; i++) {
		    if (ch[i] >= 33 && ch[i] < 45) {
		        ch[i] += 7;
		    } else if (ch[i] >= 45 && ch[i] < 54) {
		        ch[i] -= 7;
		    } else if (ch[i] >= 54 && ch[i] < 65) {
		        ch[i] += 7;
		    } else if (ch[i] >= 65 && ch[i] < 80) {
		        ch[i] -= 7;
		    } else if (ch[i] >= 80 && ch[i] < 100) {
		        ch[i] += 7;
		    } else if (ch[i] >= 100 && ch[i] < 110) {
		        ch[i] -= 7;
		    } else if (ch[i] >= 110 && ch[i] < 119) {
		        ch[i] += 7;
		    } else if (ch[i] >= 119) {
		        ch[i] -= 7;
		    }

		}

		str = String.valueOf(ch);
		
		LoginDao dao = new LoginDao();
		
		if(dao.checkLogin(uname, str))
		{
			HttpSession session = request.getSession();
			session.setAttribute("username", uname);
			response.sendRedirect("welcome.jsp");
		}
		else
		{
			response.sendRedirect("login.jsp");
		}
		
	}

}
