import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet("/Coffee")
public class CoffeeExampleServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        req.getRequestDispatcher("CoffeeExample.jsp").forward(req, resp);

    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String CoffeeName = req.getParameter("CoffeeName");
        String Username = req.getParameter("Username");
        String[] addon = req.getParameterValues("addon");
        System.out.println(CoffeeName);
        System.out.println(Username);
        System.out.println(addon);
        req.setAttribute("CoffeeName", CoffeeName);
        req.setAttribute("Username", Username);
        req.setAttribute("addon", addon);
    }
}
