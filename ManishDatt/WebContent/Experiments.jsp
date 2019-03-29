<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<script>
$(function () {
	  var isMouseDown = false,
	    isHighlighted;
	  $("#our_table td")
	    .mousedown(function () {
	      isMouseDown = true;
	      $(this).toggleClass("highlighted");
	      isHighlighted = $(this).hasClass("highlighted");
	      return false; // prevent text selection
	    })
	    .mouseover(function () {
	      if (isMouseDown) {
	        $(this).toggleClass("highlighted", isHighlighted);
	      }
	    });

	  $(document)
	    .mouseup(function () {
	      isMouseDown = false;
	    });
	});
</script>
<style>
	table td {
  width:50px;
  height:50px;
  text-align:center;
  vertical-align:middle;
  /*background-color:#ccc;*/
  border:1px solid #fff;
}

table td.highlighted {
  background-color:#4286f4;
}
</style>
</head>
<body>
<center>
	<table cellpadding="0" cellspacing="0" id="our_table">
  <tr>
    <td>a</td>
    <td>b</td>
    <td>c</td>
    <td>a</td>
    <td>b</td>
    <td>c</td>
    <td>a</td>
    <td>b</td>
    <td>c</td>
    <td>a</td>
    <td>b</td>
    <td>c</td>
  </tr>
  <tr>
    <td>a</td>
    <td>b</td>
    <td>c</td>
    <td>a</td>
    <td>b</td>
    <td>c</td>
    <td>a</td>
    <td>b</td>
    <td>c</td>
    <td>a</td>
    <td>b</td>
    <td>c</td>
  </tr>
  <tr>
    <td>a</td>
    <td>b</td>
    <td>c</td>
    <td>a</td>
    <td>b</td>
    <td>c</td>
    <td>a</td>
    <td>b</td>
    <td>c</td>
    <td>a</td>
    <td>b</td>
    <td>c</td>
  </tr>
  <tr>
    <td>a</td>
    <td>b</td>
    <td>c</td>
    <td>a</td>
    <td>b</td>
    <td>c</td>
    <td>a</td>
    <td>b</td>
    <td>c</td>
    <td>a</td>
    <td>b</td>
    <td>c</td>
  </tr>
  <tr>
    <td>a</td>
    <td>b</td>
    <td>c</td>
    <td>a</td>
    <td>b</td>
    <td>c</td>
    <td>a</td>
    <td>b</td>
    <td>c</td>
    <td>a</td>
    <td>b</td>
    <td>c</td>
  </tr>
</table>
</center>
</body>
</html>