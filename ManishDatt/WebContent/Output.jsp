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
		char[] arr;
		int x=Integer.parseInt(request.getAttribute("rowrange").toString());
		int r=0;
		int cnt=0,cnt1=0;
		ArrayList<String> headings = (ArrayList<String>)request.getAttribute("headings");
		ArrayList<StringBuilder> sequences = (ArrayList<StringBuilder>)request.getAttribute("sequences"); 
		ArrayList al=new ArrayList<>();
		
		
		
		
		for(StringBuilder str :sequences){
			str.toString().replaceAll("\\s","");
		}
	%>
	
	
	
	<table  style="text-align: center;">
	
		<%
		for(int m=0; m<sequences.size(); m++){
		
		int flag = 0;
		
		
		arr = sequences.get(m).toString().replaceAll("\\s","").toCharArray();
		
	
		double d= Double.parseDouble(""+arr.length)/Double.parseDouble(""+x);
		System.out.println(d);
		r=(int)Math.ceil(d);
		System.out.println(r);

		char[][] a = new char[r][x];
		
		for(int j=0; j<r; j++){
					for(int k=0; k<x; k++){
						if(flag<arr.length){
						if(!Character.isWhitespace(arr[flag])){
						a[j][k] = arr[flag];
						}
						flag++;
						}
				}
			}
		
		al.add(a);
		}
			
		%>
		
		
		
		
		<%
		for(int m=0 ;m<r ;m++){
			
			for(int n=0; n<sequences.size(); n++){
				
				char [][] temp=(char[][])al.get(n);
				
				
			%>
				
				<tr>
				<td>
				<%=headings.get(n).toString() %>
				</td>
				<td>&nbsp;&nbsp;</td>
				
				<%for(int z=0; z<x; z++){ %>
					<td><%=temp[cnt][z] %></td>
				<%
				
				} %>
				
				
				</tr>
				
		
		
		<%
		
			}%>
			<tr>
				<td>&nbsp;</td>
				</tr>
		<%
		
		cnt++;
		
		}
		 %>
	</table>
	
</div>
</body>
</html>