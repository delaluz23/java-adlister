import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
@WebServlet("/guess")
public class guess extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        req.getRequestDispatcher("guessing.jsp").forward(req, resp);
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String guessedNumString = req.getParameter("num");
        System.out.println("Guessed Number: " + guessedNumString);

        req.setAttribute("num", guessedNumString);
        int guessedNum = Integer.parseInt(guessedNumString);

        int randomNum = (int) (Math.random() * 3) + 1;
        System.out.println("Random Number: " + randomNum);
        req.setAttribute("randomnum", randomNum);

        if (guessedNum != randomNum) {
            resp.sendRedirect("guessLose?num="+guessedNum+"&randomnum="+randomNum);
        } else {
            resp.sendRedirect("guessWin?num="+guessedNum+"&randomnum="+randomNum);
        }
    }
}
