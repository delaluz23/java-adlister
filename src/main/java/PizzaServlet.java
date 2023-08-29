import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.Arrays;

@WebServlet("/pizza-order")
public class PizzaServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        req.getRequestDispatcher("pizzaOrder.jsp").forward(req, resp);
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String crust = req.getParameter("crust");
        String sauce = req.getParameter("sauce");
        String size = req.getParameter("size");
        String[] toppings = req.getParameterValues("toppings");
        String addy = req.getParameter("addy");
        System.out.println(crust);
        System.out.println(sauce);
        System.out.println(size);
        for(String top : toppings){
            System.out.println(top);
        }
        System.out.println(addy);
        req.setAttribute(crust, "crust");
        req.setAttribute(sauce, "sauce");
        req.setAttribute(size, "size");
        req.setAttribute(Arrays.toString(toppings), "toppings");
        req.setAttribute(addy, "addy");
        req.getRequestDispatcher("pizzaOrder.jsp").forward(req, resp);

    }
}
