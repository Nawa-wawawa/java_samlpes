package controllers;

import java.io.IOException;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class BmiServlet
 */

@WebServlet("/BmiServlet")
public class BmiServlet extends HttpServlet {

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		double h = Double.parseDouble(request.getParameter("height"));
		double w = Double.parseDouble(request.getParameter("weight"));

		double bmi = w / (h * h);

		request.setAttribute("bmi", bmi);

		if (bmi < 18.5) {
			request.setAttribute("rank", "痩せ気味");
		} else if (bmi < 25) {
			request.setAttribute("rank", "標準");
		} else {
			request.setAttribute("rank", "肥満気味");
		}
		request.getRequestDispatcher("/bmi_result.jsp").forward(request, response);
	}

}
