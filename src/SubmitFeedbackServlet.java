import java.io.*;
import javax.servlet.*;
import javax.servlet.http.*;
import java.sql.*;

public class SubmitFeedbackServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
    throws ServletException, IOException {
        String name = request.getParameter("name");
        String subject = request.getParameter("subject");
        String rating = request.getParameter("rating");
        String comment = request.getParameter("comment");

        try {
            Connection con = DBConnect.getConnection();
            PreparedStatement ps = con.prepareStatement(
                "INSERT INTO feedback (name, subject, rating, comment) VALUES (?, ?, ?, ?)"
            );
            ps.setString(1, name);
            ps.setString(2, subject);
            ps.setString(3, rating);
            ps.setString(4, comment);
            ps.executeUpdate();
            con.close();

            // Show success alert
            response.setContentType("text/html");
            PrintWriter out = response.getWriter();
            out.println("<script>alert('Feedback submitted successfully!'); window.location.href='student_home.jsp';</script>");

        } catch (Exception e) {
            e.printStackTrace();
            response.sendRedirect("feedback.jsp?error=1");
        }
    }
}
