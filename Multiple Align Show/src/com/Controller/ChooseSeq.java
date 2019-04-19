package com.Controller;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 * Servlet implementation class ChooseSeq
 */
@WebServlet("/ChooseSeq")
public class ChooseSeq extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ChooseSeq() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doPost(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		
		try {
			String data = request.getParameter("txtData");
			String[] splittedData = data.split("\n");
			ArrayList<String> headings = new ArrayList<>();
			StringBuilder sequence = new StringBuilder();
			ArrayList<StringBuilder> sequences = new ArrayList<>();
			for(int i=0; i<splittedData.length; i++){
				if(splittedData[i].startsWith(">")){
					sequence = new StringBuilder();
					splittedData[i]=splittedData[i].replace(">","");
					headings.add(splittedData[i]);
					sequences.add(sequence);
				}
				else if(splittedData[i].startsWith("%")) {
					sequence = new StringBuilder();
					splittedData[i]=splittedData[i].replace("%","");
					headings.add(splittedData[i]);
					sequences.add(sequence);
				}
				else{
					sequence.append(splittedData[i]);
				}  
			
			}
			
			int rowrange=Integer.parseInt(request.getParameter("rowrange").toString());
			String rowfsize=request.getParameter("rowfsize")+"px";
			
			String FirstColour="#"+request.getParameter("firstcolor");
			String SecondColour="#"+request.getParameter("secondcolor");
			String groups = request.getParameter("txtGroup");
			
			HttpSession hs=request.getSession();
			hs.setAttribute("data", data);
			hs.setAttribute("rowrange", rowrange);
			hs.setAttribute("rowfsize", rowfsize);
			hs.setAttribute("FirstColour", FirstColour);
			hs.setAttribute("SecondColour", SecondColour);
			hs.setAttribute("groups", groups);
			hs.setAttribute("head", headings);
			
			//request.setAttribute("head",headings);
			RequestDispatcher rd=request.getRequestDispatcher("Index.jsp");
			rd.forward(request, response);
		}
		catch (Exception e) {
			e.printStackTrace();
		}
	}

}
