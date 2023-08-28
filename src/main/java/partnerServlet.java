import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet("/partner")
public class partnerServlet extends HttpServlet{
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws IOException {
        String name = req.getParameter("name");
        if (name != null) {
            resp.getWriter().println("<h1>" + name + "</h1>");
        } else {
            resp.getWriter().println("<h1>partner</h1><break><a href='/adlister_war_exploded/howdy'>partner?</a>");
        }
    }
}
