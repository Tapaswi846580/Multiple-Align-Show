<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title>JAVA</title>
	<meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"></script>
  <link rel="stylesheet" href="IndexCssFile.css">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
  <script src="jscolor.js"></script>
</head>
<body>
<h1>This is output page</h1>
<div class="">
	<%
		ArrayList<String> headings = (ArrayList<String>)request.getAttribute("headings");
		ArrayList<StringBuilder> sequences = (ArrayList<StringBuilder>)request.getAttribute("sequences"); 
		
		for(StringBuilder str :sequences){
			str.toString().replaceAll("\\s","");
		}
	%>
	
	<table  style="text-align: center;">
		<%
		
		int flag = 0;
		int x=20;
		
		char[] arr = sequences.get(0).toString().replaceAll("\\s","").toCharArray();
		char[][] a = new char[arr.length/x][x];
		for(int j=0; j<arr.length/x; j++){
					for(int k=0; k<x; k++){
						if(!Character.isWhitespace(arr[flag])){
						a[j][k] = arr[flag];
						}
						flag++;
				}
			}
			
		%>
		
		<%for(int i=0;i<arr.length/x;i++){ %>
			<tr>
			<%for(int j=0; j<x; j++){ %>
			
			<td>
			<%=a[i][j] %>
			<%//System.out.println(a[i][j]); %>
			</td>
			<%} %>
			
			</tr>
		<%} %>
	</table>
	
</div>
</body>
</html>