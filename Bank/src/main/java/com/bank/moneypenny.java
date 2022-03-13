package com.bank;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

import java.io.IOException;
import java.sql.SQLException;

@WebServlet("/add_money1")
public class moneypenny extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
   
    credit cid=new credit();
    fetch_balance bal=new fetch_balance();
    add_history his=new add_history();
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException
	{
		if((String)(request.getParameter("funds"))!="")
		{
		
		HttpSession session=request.getSession();
		long money1=Long.parseLong(request.getParameter("funds"));
		int acc_no=(int)(session.getAttribute("Accountno"));
		System.out.println("accno"+acc_no);
		
			try {
				long balance=bal.return_fund(acc_no);
				long money2=money1;
				money1=balance+money1;
				session.setAttribute("new balance",money1);
				String mode="CREDIT";
				his.add(acc_no,money2,mode, acc_no);
			} catch (Exception e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		
		
		try {
			cid.add_money(acc_no,money1);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		response.sendRedirect("final_money.jsp");
		}
		else
		{
			response.sendRedirect("add_official_money.jsp");
		}
		
	}

	
}
