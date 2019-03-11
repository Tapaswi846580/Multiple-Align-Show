package com.Controller;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class Controller
 */
@WebServlet("/Controller")
public class Controller extends HttpServlet {
	private static final long serialVersionUID = 1L;

    /**
     * Default constructor. 
     */
    public Controller() {
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		requestHandler(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		requestHandler(request, response);
	}
	
	protected void requestHandler(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		try{
			String data = request.getParameter("txtData");
			String[] splittedData = data.split("\n");
			ArrayList<String> headings = new ArrayList<>();
			StringBuilder sequence = new StringBuilder();
			ArrayList<StringBuilder> sequences = new ArrayList<>();
			for(int i=0; i<splittedData.length; i++){
				if(splittedData[i].startsWith(">")){
					sequence = new StringBuilder();
					headings.add(splittedData[i]);
					sequences.add(sequence);
				}else{
					sequence.append(splittedData[i]);
				}
			}
			
			System.out.println("Headings");
			for(String s : headings)
				System.out.println(s);
			
			
			System.out.println("\nSequences");
			
			for(StringBuilder sqs : sequences){
				System.out.println(sqs.toString());
			}
		}catch(Exception e){
			e.printStackTrace();
		}
	}
	

}
