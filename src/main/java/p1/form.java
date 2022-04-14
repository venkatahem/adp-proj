package p1;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class form
 */
@WebServlet(asyncSupported = true, urlPatterns = { "/form" })
public class form extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public form() {
        super();
        // TODO Auto-generated constructor stub
    }

    public void doPost(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException {
        res.setContentType("text/html");
        PrintWriter out = res.getWriter();
        out.println("<html>\n" + "<head><title>" + "DONATION" + "</title></head>\n" + "<body>\n" + "Name: "
                + req.getParameter("uname") + "\n<br>" +"\n<br>" + "Email: " + req.getParameter("uemail") + "\n<br>" +"\n<br>" + "Mobile No: "
                + req.getParameter("phno") + "\n<br>" +"\n<br>" + "Item-1: " + req.getParameter("item1") + " ----- Quantity: "
                + req.getParameter("quan1") + "\n<br>" +"\n<br>" + "Item-2: " + req.getParameter("item2") + " ----- Quantity: "
                + req.getParameter("quan3") + "\n<br>" +"\n<br>" + "Item-3: " + req.getParameter("item3") + " ----- Quantity: "
                + req.getParameter("quan3") + "\n<br>" +"\n<br>" + "Item-4: " + req.getParameter("item4") + " ----- Quantity: "
                + req.getParameter("quan4") + "\n<br>" +"\n<br>" + "Item-5: " + req.getParameter("item5") + " ----- Quantity: "
                + req.getParameter("quan5") + "</body></html>");

        out.close();

    }

}
