<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>


<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"></script>
<link rel="stylesheet" href="IndexCssFile.css">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
<script src="jscolor.js"></script>

<script>
	$(function() {
		var isMouseDown = false, isHighlighted;
		$("#our_table td").mousedown(function() {
			isMouseDown = true;
			$(this).toggleClass("highlighted");
			isHighlighted = $(this).hasClass("highlighted");
			return false; // prevent text selection
		}).mouseover(function() {
			if (isMouseDown) {
				$(this).toggleClass("highlighted", isHighlighted);
			}
		});

		$(document).mouseup(function() {
			isMouseDown = false;
		});
	});

	$(document).ready(function() {
		var name="tapaswi";
		$("#btnReset").click(function() {
			$("#our_table td").toggleClass("highlighted", false);
		});
		$("#chosen-value2").change(function() {
			var color = "#"+$("#chosen-value2").val();
			$(".highlighted").css("background-color",""+color+"");
		});
	});
</script>


<style type="text/css">

/*  .table td, .table th {
    padding: 0 !important;
    vertical-align: top;
    border-top: 0px !important;
} */
.tdcolour {
	color: #ffffff;
}

.divPadding {
	padding-left: 2%;
	padding-right: 2% !important;
	padding-bottom: 2%;
	padding-top: 2%;
}

.tableFormate {
	text-align: center;
}

.btnsubmit {
	margin-top: 20px;
	background-color: white;
	border: none;
	color: Green;
	padding: 5px 10px;
	font-size: 16px;
	cursor: pointer;
	border: 1px solid;
}

.btnsubmit:hover {
	background-color: green;
	color: white;
}

.btnclear {
float:right;
	margin-top: 30px;
	background-color: white;
	border: none;
	color: red;
	padding: 5px 10px;
	font-size: 16px;
	cursor: pointer;
	border: 1px solid;
}

.btnclear:hover {
	background-color: red;
	color: white;
}


.btn {
  margin-top:20px;
  background-color: white;
  border: none;
  color: Green;
  padding: 5px 10px;
  font-size: 16px;
  cursor: pointer;
  border:1px solid; 
}


.btn:hover {
  background-color: green;
  color:white;
} 

table td {
	text-align: center;
	vertical-align: middle;
}

td.highlighted {
	<%String c = "#4286f4";%>
	background-color: <%=c%> !important;
	color: #fff !important;
	
}
</style>

</head>
<body>

	<%
		String rowfsize = request.getAttribute("rowfsize").toString();
	%>
	<div class="container-fluid">
		<div id="demo" class="collapse">
			<div class="card2">
				<div class="card-body">
					<p class="card-text">
					<div class="slidecontainer">
						<p>
							Show residues per line <input type="range" min="10" max="100"
								value="50" name="rowrange" step="10" class="slider"
								id="myRange3">
							<output id="demo3" class="out"></output>
						</p>
					</div>
					<div class="slidecontainer">
						<p>
							Select Font Size: <input type="range" min="8" max="72" value="16"
								step="2" class="slider" id="myRange4">
							<output id="demo4" class="out"></output>
						</p>
					</div>

					<p>
						Color identical amino acids <input type="button"
							class="jscolor{valueElement:'chosen-value',value:'000000'}"
							style="width: 60px; height: 10px; border-radius: 10px; padding: 9px;">
						and similar amino acids <input type="button"
							class="jscolor{valueElement:'chosen-value1',value:'D3D3D3'}"
							style="width: 60px; height: 10px; border-radius: 10px; padding: 9px;">
					</p>
					<input type="hidden" />
					<input type="hidden" id="chosen-value" name="firstcolor"> <input
						type="hidden" id="chosen-value1" name="secondcolor">
					
					<p>
						Select Custom Color <input type="button"
							class="jscolor{valueElement:'chosen-value2',value:'000'}"
							style="width: 60px; height: 10px; border-radius: 10px; padding: 9px;">
							<input type="hidden" id="chosen-value2" value="000" name="customcolor">
					</p>
					<p>Enter the groups of similar amino acids separated by commas</p>
					<center>
						<input type="text" size="30"
							style="border: 1px solid; border-radius: 5px; text-align: center;"
							value="ILV,FWY,KRH,DE,GAS,P,C,TNQM">
					</center>
					<div class="d-flex justify-content-center">
						<button class="btnsubmit">
							<i class="fa fa-check"></i>Apply
						</button>
					</div>

					</p>
				</div>
			</div>
		</div>
		<button type="button" class="btn btn-primary" data-toggle="collapse"
			data-target="#demo" title="Edit" data-placement="top">
			<i class="fa fa-pencil fa-2x" aria-hidden="true"></i>
		</button>
		<button class="btnclear" id="btnReset">
			<i class="fa fa-eraser"></i>Clear Selection
		</button>
	</div>

	<p></p>
	<h1></h1>

	<%
		/* char[] arr;
		int x = Integer.parseInt(request.getAttribute("rowrange").toString());
		int r = 0;
		int cnt = 0, cnt1 = 0;
		ArrayList<String> headings = (ArrayList<String>) request.getAttribute("headings");
		ArrayList<StringBuilder> sequences = (ArrayList<StringBuilder>) request.getAttribute("sequences");
		ArrayList al = new ArrayList<>();
		
		for (StringBuilder str : sequences) {
			str.toString().replaceAll("\\s", "");
		} */
	%>

	<%
		System.out.println("Val: "+request.getParameter("chosen-value2"));
		ArrayList<String> headings = (ArrayList<String>) request.getAttribute("headings");
		String[][] finalSeq = (String[][]) request.getAttribute("sequences");
		int rowrange = Integer.parseInt(request.getAttribute("rowrange").toString());
		int cnt = 0;
		int row = headings.size();
		double d = Double.parseDouble("" + finalSeq[0].length) / Double.parseDouble("" + rowrange);
		/* System.out.println(finalSeq[0].length);
		System.out.println(d); */
		int r = (int) Math.ceil(d);
		int col = rowrange;
		int colCnt = 0, colprv = 0;
		/* System.out.println(r); */
		String[] finalCol = (String[]) request.getAttribute("finalCol");
	%>


	<div class="divPadding">
		<!-- <button id="btnReset">Clear Selection</button> -->


		<table class="tableFormate" id="our_table"
			style="font-size:<%=rowfsize%>"
			summary="Table selection with plugin" id="tablecellsselection"
			border="0" cellspacing="0" cellpadding="1">

			<%
				for (int k = 0; k < r; k++) {
					colprv = colCnt;
					//System.out.println(colprv);
					for (int i = 0; i < row; i++) {
						colCnt = colprv;
			%>
			<tr>
				<td><%=headings.get(i).toString()%></td>
				<td>&nbsp;</td>
				<%
					for (int j = 0; j < col; j++) {
				%>

				<%
					if (colCnt < finalSeq[0].length) {
				%>

				<%
					if (finalCol[colCnt] != "transparent") {
				%>

				<td class="tdcolour"
					style="background-color: <%=finalCol[colCnt]%>"><%=finalSeq[i][colCnt]%></td>
				<%
					} else {
				%>
				<td style="background-color: <%=finalCol[colCnt]%>"><%=finalSeq[i][colCnt]%></td>
				<%
					}
								}
				%>

				<%
					colCnt++;
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
		document.getElementsByTagName('body')[0].style.color = '#'
				+ picker.toString()
	}
</script>
</html>