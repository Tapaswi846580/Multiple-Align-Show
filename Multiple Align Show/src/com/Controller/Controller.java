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
//import javax.websocket.Session;

import com.Model.ColourSqu;

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
//		HttpSession hs=request.getSession();
//		
//		request.setAttribute("error", true);
		RequestDispatcher rd=request.getRequestDispatcher("Index.jsp");
		rd.forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		requestHandler(request, response);
	}
	
	protected void requestHandler(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		HttpSession hs=request.getSession();
		
		
		try{
			String[] chk=request.getParameterValues("chk");
			
		
			
			String data = hs.getAttribute("data").toString();
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
			
			ArrayList<String> headingsFinal = new ArrayList<>();
			ArrayList<StringBuilder> sequencesFinal = new ArrayList<>();
			
			for(String str:chk) {
				int i=Integer.parseInt(str);
				System.out.println(i);
				headingsFinal.add(headings.get(i));
				sequencesFinal.add(sequences.get(i));
			}
			
			
			
			
//			for(int i=0;i<headings.size();i++) {
//				
//				if(headings.get(i) != chk[i]) {
//					headings.remove(i);
//					sequences.remove(i);
//				}
//			}
			
			
			int rowrange=Integer.parseInt(hs.getAttribute("rowrange").toString());
			String rowfsize=hs.getAttribute("rowfsize").toString();
			
			String FirstColour=hs.getAttribute("FirstColour").toString();
			String SecondColour=hs.getAttribute("SecondColour").toString();
			
			//System.out.println(FirstColour);
			//System.out.println(FirstColour);
			String groups = hs.getAttribute("groups").toString();
			ColourSqu cs=new ColourSqu();
			ArrayList al=cs.colourDeco(headingsFinal, sequencesFinal, rowrange,FirstColour,SecondColour,groups);
			String[][] finalSeq=(String[][]) al.get(0);
			String[] finalCol=(String[]) al.get(1);
			String[] finalColColourNo=(String[]) al.get(2);
			
			request.setAttribute("finalColColourNo", finalColColourNo);
			request.setAttribute("finalCol",finalCol);
			request.setAttribute("headings",headingsFinal);
			request.setAttribute("sequences",finalSeq);
			request.setAttribute("rowrange", rowrange);
			request.setAttribute("rowfsize", rowfsize);
			RequestDispatcher rd = request.getRequestDispatcher("Output.jsp");
			rd.forward(request, response);
			
			
		}catch(Exception e){
			e.printStackTrace();
		}
	}
	

}
