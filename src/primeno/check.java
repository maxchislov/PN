//The function Primes(num)
//Input by using a Java servlet method doPost

package primeno;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;



@WebServlet(name = "check")
public class check extends HttpServlet {


    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        try {

            boolean isPrime = true;
            String input = request.getParameter("Yournumber");
            long number = Long.parseLong(input);
            long temp;


            if (number == 1) {  //#1 is not a prime number because it has only one divider
                isPrime = false;
            }

            if (number == 0) {
                {
                    request.setAttribute("ZEROMsg", "It's not a natural number");  //The message that zero is not prime number
                    request.getRequestDispatcher("/index.jsp").forward(request, response);
                }
            }



            for (long l = 2; l <= number / 2; l++) {
                temp = number % l;
                if (temp == 0) {
                    isPrime = false;
                    break;
                }
            }
            //If isPrime is true then the number is prime else not
            if (isPrime) {
                request.setAttribute("trueMsg", "This is a prime number"); //The message that the number is prime
                request.getRequestDispatcher("/index.jsp").forward(request, response);
            } else {
                request.setAttribute("falseMsg", "This is a composite number"); //The message that the number is composite
                request.getRequestDispatcher("/index.jsp").forward(request, response);

            }
        }

        catch(Exception e)
        {
            request.setAttribute("NullMsg", "Enter any value"); //The message that the field is empty
            request.getRequestDispatcher("/index.jsp").forward(request, response);
        }


    }

}







