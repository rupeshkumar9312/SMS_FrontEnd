package com.sms.controllers;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.json.JSONException;

import com.sms.model.LoginCredentials;
import com.sms.restclient.RestClient;

/**
 * Servlet implementation class Controller
 */
@WebServlet("/Controller")
public class Controller extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		
		String query = request.getParameter("st");
		System.out.println(query);
		RestClient rc = new RestClient();
		String page = null;
		try {
			//rc.loadHistory(request,query);
			page = rc.processRequest(request,query);
			
		} catch (JSONException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		RequestDispatcher rd = request.getRequestDispatcher(page);
		rd.forward(request, response);
		//response.getWriter().append("Served at: ").append(request.getContextPath());
		
		/*String page ="";
		String purpose = request.getParameter("purpose");
		System.out.println(purpose);
		if(purpose.equals("all"))
		{
			RestClient rc = new RestClient();
			try {
				page = rc.getStudents(request,"all");
				System.out.println(page);
				
			} catch (JSONException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			
		}
		
		RequestDispatcher rd = request.getRequestDispatcher(page);
		rd.forward(request,response);*/
		//response.sendRedirect(page);
	
	//	System.out.println("Inside Controller Servlet" + purpose);
		
	}

	
	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub

//		WORKING CODE
		/*
		String page = "";
		System.out.println("Inside Controller Servlet");
		RestClient rc = new RestClient();
		try {
			page = rc.getStudents(request);
		} catch (JSONException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		System.out.println("Inside Controller Servlet");
		request.setAttribute("k1", "test");
		RequestDispatcher rd = request.getRequestDispatcher(page);
		rd.forward(request, response);
		*/
		
		String purpose = request.getParameter("purpose");
		System.out.println("Purpose " + purpose);
		String redirectPage = "";
		switch(purpose)
		{
		case "login":
			String username = request.getParameter("username");
			String password = request.getParameter("password");
			LoginCredentials credentials = new LoginCredentials(username, password);
			RestClient rc = new RestClient();
			try {
			   redirectPage = rc.processLogin(credentials, request);
			   
				System.out.println("Redirect Page" + redirectPage);
			} catch (JSONException e1) {
				// TODO Auto-generated catch block
				e1.printStackTrace();
			}
			
			//response.sendRedirect(redirectPage);
			RequestDispatcher rd = request.getRequestDispatcher(redirectPage);
			rd.forward(request, response);
		
		//	break;
		}
		
		
		/*LoginCredentials credentials = new LoginCredentials("180851920077", "12345");
		
		RestClient rc = new RestClient();
		try {
			rc.processLogin(credentials,request);
		} catch (JSONException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}*/
		
		
		
		
		
		
		
		
		
		
		
/*		String purpose = request.getParameter("purpose");
		System.out.println(purpose);
		if(purpose.equals("p_login"))
		{
			String username = request.getParameter("username");
			String password = request.getParameter("password");
					
			LoginCredentials credentials = new LoginCredentials(username,password);
			RestClient rc = new RestClient();
			rc.processLogin(credentials);
		}
*///		
//		doGet(request, response);
	}

}
