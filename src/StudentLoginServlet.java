import java.io.*;
import javax.servlet.*;
import javax.servlet.http.*;

public class StudentLoginServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
    throws ServletException, IOException {

        String username = request.getParameter("username");
        String password = request.getParameter("password");

        response.setContentType("text/html");
        PrintWriter out = response.getWriter();

        if ("student".equals(username) && "123".equals(password)) {
            response.sendRedirect("student_home.jsp");
        } else {
            out.println("<script>alert('Invalid student login!'); window.location.href='students_login.jsp';</script>");
        }
    }
}
