package com.bank;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

import java.io.IOException;

@WebServlet("/chk_balance")
public class check_balance extends HttpServlet {
	private static final long serialVersionUID = 1L;


	fetch_balance bal=new fetch_balance();
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException 
	{
		HttpSession session=request.getSession();
		int acc_no=(int)(session.getAttribute("Accountno"));
		try {
			long balance=bal.return_fund(acc_no);
			session.setAttribute("FUND",balance);
			response.sendRedirect("check_balance.jsp");
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
	
	}

	

}
