package forms;

import java.io.IOException;
import java.util.Objects;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class ConfirmServlet  extends HttpServlet {
		public void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
			
			request.setCharacterEncoding("UTF-8");
			response.setContentType("text/html; charset=UTF-8");
			
			String userName = request.getParameter("name");
			String userEmail = request.getParameter("email");
			String userAddress = request.getParameter("address");
			String userPhoneNumber = request.getParameter("phone_number");
			
			userName = Objects.toString(userName, "");
			userEmail = Objects.toString(userEmail, "");
			userAddress = Objects.toString(userAddress, "");
			userPhoneNumber = Objects.toString(userPhoneNumber, "");
			
			request.setAttribute("name", userName);
			request.setAttribute("email", userEmail);
			request.setAttribute("address", userAddress);
			request.setAttribute("phoneNumber", userPhoneNumber);
			
			RequestDispatcher dispatcher = request.getRequestDispatcher("/WEB-INF/pages/confirmPage.jsp");
			dispatcher.forward(request, response);
		}
	}
