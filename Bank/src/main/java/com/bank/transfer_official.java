package com.bank;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

import java.io.IOException;

@WebServlet("/transfer_money1")
public class transfer_official extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
	add_history his=new add_history();
    transfer_backend trans=new transfer_backend();
	fetch_balance bal=new fetch_balance();
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException
	{
		if(request.getParameter("ac_no")!=""&&request.getParameter("mone")!="")
		{
		HttpSession session=request.getSession();
		int ac_no2=Integer.parseInt(request.getParameter("ac_no"));
		long transfer_money=Long.parseLong(request.getParameter("mone"));
		int acc_no=(int)(session.getAttribute("Accountno"));
		try {
			if(acc_no==ac_no2)
			{
				response.sendRedirect("transfer_select.jsp");
			}
			long money1=bal.return_fund(acc_no);
			long money2=bal.return_fund(ac_no2);
			money1=money1-transfer_money;
			if(money1>0)
			{
			money2=money2+transfer_money;
			trans.transfer(acc_no,ac_no2,money1,money2);
			String mode="DEBIT (TRANSFER)";
			his.add(acc_no, transfer_money,mode, ac_no2);
			mode="CREDIT(TRANSFER)";
			his.add(ac_no2, transfer_money, mode, acc_no);
			session.setAttribute("new balance", money1);
			response.sendRedirect("final_transfer.jsp");
			}
			else
			{
				session.setAttribute("new balance", money1+transfer_money);
				response.sendRedirect("go_back_transfer.jsp");
			}
			
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		}
		else
		{
			response.sendRedirect("transfer_select.jsp");
		}
		
	}



}
