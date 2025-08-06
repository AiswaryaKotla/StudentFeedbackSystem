import java.io.*;
import javax.servlet.*;
import javax.servlet.http.*;

public class FacultyLoginServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
    throws ServletException, IOException {

        String username = request.getParameter("username");
        String password = request.getParameter("password");

        response.setContentType("text/html");
        PrintWriter out = response.getWriter();

        if ("faculty".equals(username) && "admin".equals(password)) {
            
            response.sendRedirect("view_feedback.jsp");
        } else {
            out.println("<script>alert('Invalid faculty login!'); window.location.href='faculty_login.jsp';</script>");
        }
    }
}
