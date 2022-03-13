package com.bank;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

import java.io.IOException;
import java.sql.SQLException;

/**
 * Servlet implementation class debit_money
 */
@WebServlet("/add_money2")
public class debit_money extends HttpServlet {
	private static final long serialVersionUID = 1L;

	  credit cid=new credit();
	  fetch_balance bal=new fetch_balance();
	  add_history his=new add_history();

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException 
	{
		if((String)(request.getParameter("fund_debit"))!="")
		{
		HttpSession session=request.getSession();
		 long money2=Long.parseLong(request.getParameter("fund_debit"));
		int acc_no=(int)(session.getAttribute("Accountno"));
		System.out.println("accno"+acc_no);
		
			try {
				long balance=bal.return_fund(acc_no);
				long money3=money2;
				money2=balance-money2;
				if(money2>0)
				{
				session.setAttribute("new balance",money2);
				cid.add_money(acc_no,money2);
				String mode="DEBIT";
				his.add(acc_no,money3 ,mode, acc_no);
				response.sendRedirect("final_money.jsp");
				}
				else
				{
					
					session.setAttribute("new balance",balance);
					response.sendRedirect("go_back_debit.jsp");
				}
			} catch (Exception e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
				
			}
			
		
		
		}
		else
		{
			response.sendRedirect("Debit_money.jsp");
		}
	}



}
