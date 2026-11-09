import java.io.IOException;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/ProfileServlet")
public class ProfileServlet extends HttpServlet {

    // Process HTTP POST requests sent from index.html
    protected void doPost(HttpServletRequest request, HttpServletResponse response) 
            throws ServletException, IOException {
        
        // 1. Read input values from the HTML form using parameter names matching index.html
        String name = request.getParameter("name");
        String studentId = request.getParameter("studentId");
        String programme = request.getParameter("programme");
        String email = request.getParameter("email");
        String hobbies = request.getParameter("hobbies");
        String introduction = request.getParameter("introduction");

        // 2. Attach values to request attributes to pass them to profile.jsp
        request.setAttribute("userName", name);
        request.setAttribute("userStudentId", studentId);
        request.setAttribute("userProgramme", programme);
        request.setAttribute("userEmail", email);
        request.setAttribute("userHobbies", hobbies);
        request.setAttribute("userIntro", introduction);

        // 3. Forward the request and response to profile.jsp for display
        RequestDispatcher dispatcher = request.getRequestDispatcher("ProfileInfo.jsp");
        dispatcher.forward(request, response);
    }
}