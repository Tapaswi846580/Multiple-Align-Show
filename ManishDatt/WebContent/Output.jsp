<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>

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

<div class="container-fluid">
<div id="demo" class="collapse">
    <div class="card2">
		<div class="card-body">
       		<p class="card-text">
       		<div class="slidecontainer">
  					<p>Show residues per line
  					<input type="range" min="10" max="100" value="50" name="rowrange" step="10" class="slider" id="myRange3">
  					<output id="demo3" class="out"></output></p>
			</div>
			<div class="slidecontainer">
  					<p>Select Font Size:
  					<input type="range" min="8" max="72" value="16" step="2" class="slider" id="myRange4">
  					<output id="demo4" class="out"></output> </p>
			</div>
					
					<p>Color identical amino acids <input type="button" class="jscolor{valueElement:null,value:'66ccff'}" style="width:60px; height:30px;border-radius: 10px;padding:15px;"></p>
					<p>and similar amino acids <input type="button" class="jscolor{valueElement:null,value:'66ccff'}" style="width:60px; height:30px;border-radius: 10px;padding:15px;"></p>
					<div class="slidecontainer">
  					<p>Percentage of sequences that must agree for identity or similarity coloring to be added:  
  					<input type="range" min="10" max="100" value="50" step="10" class="slider" id="myRange5">
  					<output id="demo5" class="out"></output> </p>
					</div>
					<p>The color used if no identity or similarity coloring is added  <input type="button" class="jscolor{valueElement:null,value:'66ccff'}" style="width:60px; height:30px;border-radius: 10px;padding:15px;"></p>
					<p>The color of all gaps: <input type="button" class="jscolor{valueElement:null,value:'66ccff'}" style="width:60px; height:30px;border-radius: 10px;padding:15px;"></p>
					
			</p>
		</div>
	</div>
 </div>
 <button type="button" class="btn btn-primary" data-toggle="collapse" data-target="#demo" title="for Edit" data-placement="top"><i class="fa fa-pencil fa-2x" aria-hidden="true"></i></button>
  
</div>


	 <h1></h1>
	
		<%
			char[] arr;
			int x = Integer.parseInt(request.getAttribute("rowrange").toString());
			int r = 0;
			int cnt = 0, cnt1 = 0;
			ArrayList<String> headings = (ArrayList<String>) request.getAttribute("headings");
			ArrayList<StringBuilder> sequences = (ArrayList<StringBuilder>) request.getAttribute("sequences");
			ArrayList al = new ArrayList<>();

			for (StringBuilder str : sequences) {
				str.toString().replaceAll("\\s", "");
			}
		%>


<div class="table-responsive">
		<table style="text-align: center;">

			<%
				for (int m = 0; m < sequences.size(); m++) {

					int flag = 0;

					arr = sequences.get(m).toString().replaceAll("\\s", "").toCharArray();

					double d = Double.parseDouble("" + arr.length) / Double.parseDouble("" + x);
					r = (int) Math.ceil(d);
					char[][] a = new char[r][x];

					for (int j = 0; j < r; j++) {
						for (int k = 0; k < x; k++) {
							if (flag < arr.length) {
								if (!Character.isWhitespace(arr[flag])) {
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
				for (int m = 0; m < r; m++) {

					for (int n = 0; n < sequences.size(); n++) {

						char[][] temp = (char[][]) al.get(n);
			%>

			<tr>
				<td><%=headings.get(n).toString()%></td>
				<td>&nbsp;&nbsp;</td>

				<%
					for (int z = 0; z < x; z++) {
				%>
				<td><%=temp[cnt][z]%></td>
				<%
					}
				%>


			</tr>



			<%
				}
			%>
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
<script>
var slider = document.getElementById("myRange3");
var output = document.getElementById("demo3");
output.innerHTML = slider.value;

slider.oninput = function() {
  output.innerHTML = this.value;
}


var slider1 = document.getElementById("myRange4");
var output1 = document.getElementById("demo4");
output1.innerHTML = slider1.value;

slider1.oninput = function() {
  output1.innerHTML = this.value;
}

var slider2 = document.getElementById("myRange5");
var output2 = document.getElementById("demo5");
output2.innerHTML = slider2.value;

slider2.oninput = function() {
  output2.innerHTML = this.value;
}


function setTextColor(picker) {
	document.getElementsByTagName('body')[0].style.color = '#' + picker.toString()
}
</script>
</html>