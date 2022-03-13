package com.bank;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

import java.io.IOException;

@WebServlet("/generate_pass")
public class generatepass extends HttpServlet {
	private static final long serialVersionUID = 1L;
       

  

	setpass pass=new setpass();
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException 
	{
		
		if(request.getParameter("pass")!=""&& request.getParameter("pass").length()==8)
		{
			
		
		String password=request.getParameter("pass");
		
		
		try {
			pass.genpass(password);
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		HttpSession session=request.getSession();
		session.setAttribute("pass", password);
		response.sendRedirect("finals.jsp");
		}
		else
		{
			response.sendRedirect("new_pass.jsp");
		}
	}

	
	

}
