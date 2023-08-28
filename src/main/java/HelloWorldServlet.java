import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.swing.text.Document;
import java.io.IOException;
import java.io.PrintWriter;

@WebServlet("/HelloWorld")
public class HelloWorldServlet extends HttpServlet {
    public int hitcount;

    public void counter() {
        hitcount = 0;
    }

    protected void doGet(HttpServletRequest req, HttpServletResponse res) throws IOException {
        String name = req.getParameter("name");
        PrintWriter out = res.getWriter();
        if (name != null) {
            res.getWriter().println("<h1>Hello " + name + "!</h1>");
        } else {
            res.getWriter().println("<h1>Hello World</h1>");
            String reset = req.getParameter("reset");
            hitcount++;
            out.println(hitcount);
            if (reset != null) {
                hitcount = 0;
                out.println(hitcount);
                res.sendRedirect(getServletContext().getContextPath() + "/HelloWorld");
            }

        }

    }
}
