import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;

@WebServlet("/guessWin")
public class guessWin extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String guessednum = req.getParameter("num");
        String randomnum = req.getParameter("randomnum");

        String message = String.format("You win! You guessed %s and the random number was %s!", guessednum, randomnum);
        req.setAttribute("message", message);
        req.getRequestDispatcher("guessingOutcome.jsp").forward(req, resp);
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

    }
}
