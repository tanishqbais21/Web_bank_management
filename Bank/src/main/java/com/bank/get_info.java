package com.bank;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

import java.io.IOException;
import java.sql.SQLException;
@WebServlet("/getInfo")
public class get_info extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
   
    

	javachk  chk=new javachk();
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException
	{
		HttpSession session=request.getSession();
		int acc_no1=(int)(session.getAttribute("Accountno"));
		System.out.println(acc_no1);
		String sur_name=null;
		String addr=null;
		String email=null;
		String mobno=null;
		try {
			sur_name=chk.sur(acc_no1);
			
		} catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		session.setAttribute("SurName", sur_name);
		try {
			addr=chk.add(acc_no1);
			
		} catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		session.setAttribute("Address", addr);
		try {
			email=chk.Email(acc_no1);
			
		} catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		session.setAttribute("Email", email);
		try {
			mobno=String.valueOf(chk.mono(acc_no1));
			
		} catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		session.setAttribute("Mobno", mobno);
		response.sendRedirect("getinfo.jsp");
		
		
	}

}
