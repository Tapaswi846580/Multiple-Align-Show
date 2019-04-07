<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
	<title>Index</title>
	<meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"></script>
  <link rel="stylesheet" href="IndexCssFile.css">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
  <script src="jscolor.js"></script>
 
  <script>
  $(document).ready(function(){
	    $("#x").fadeIn(1500);
	    $("#y").fadeIn(2000);
		
	});
  </script>
  <style type="text/css">
 .btnsubmit{
		margin-top:20px;
	  background-color: white;
	  border: none;
	  color: Green;
	  padding: 5px 10px;
	  font-size: 16px;
	  cursor: pointer;
	  border:1px solid; 
	}


	.btnsubmit:hover {
	  background-color: green;
	  color:white;
	} 
	.btnclear {
	margin-top:20px;
  background-color: white;
  border: none;
  color: red;
  padding: 5px 10px;
  font-size: 16px;
  cursor: pointer;
  border:1px solid; 
}


.btnclear:hover {
  background-color: red;
  color:white;
} 
 </style>
 
</head>


<body>

<div class="col-md-12 div1">

        <h1 id="x" style="display:none">Multiple Align Show</h1>
        <p id="y" style="display:none">Multiple Align Show accepts a group of aligned sequences (in FASTA or GDE format) and formats the alignment to your specifications. You can specify the number of residues per line, and the font size and font style. You can also set a consensus level, which specifies the fraction of residues that need to be identical or similar in a column of the alignment for highlighting to be added. Use Multiple Align Show to enhance the output of sequence alignment programs.</p>
      
</div>

<form action="Controller" method="POST">
<div class="col-md-12 div2">



   		
<b>Paste the aligned sequences in FASTA or GDE format into the text area below. </b>
		    <textarea class="form-control " rows="7" name="txtData" id="Data" placeholder="Enter Amino acid Sequence here...">
>CremaneiFEM-2
-------------------MSDSLNHPSSSTVHADDGFEPPTSPEDNNKK
PSLEQIKQEREALFTDLFADRRRSARSVIEEAFQNELMSAEPVQPNVPN-
-PHSIPIRFRHQPVAGPAHDVFGDAVHSIFQKIMSRGVNADYSHWMSYWI
ALGIDKKT-QMNYHMKPFCKDTYATEGSLEAKQTFTDKIRSAVEEIIWKS
AEYCDILSEKWTGIHVSADQLKGQRNKQEDRFVAYPNGQYMNRGQ-SDIS
LLAVFDGHGGHECSQYAAAHFWEAWSDAQHHHSQDMKLDELLEKALETLD
ERMTVRSVRESWKGGTTAVCCAVDLNTNQIAFAWLGDSPGYIMSNLEFRK
FTTEHSPSDPEECRRVEEVGGQIFVIGGELRVNGVLNLTRALGDVPGRPM
ISNKPDTLLKTIEPADYLVLLACDGISDVFNTSDLYNLVQAFVNEYDVED
YHELARYICNQAVSAGSADNVTVVIGFLRPPEDVWRVMKTDSDDEESELE
EEDDNE
>CelegansFEM-2
--------------------------------------------------
--MEKVNEERDAVFEDHIGDRRRSVRSLLEEAFADEMEKTSYDVEVADTP
-QPHIPIRFRHPPIAGPVHDVFGDAIHDIFQKMMKRGQAVDFCHWVSHLI
ATEIDEKFSEVAFRDVQYNPDIYVTDSTTEAKKLFNDKIWPAIDKILQQN
AETCPILSEKWSGIHVSGDQLKGQRHKQEDRFLAYPNGQYMDRGE-DPIS
VLAVFDGHGGHECSQYAAGHLWETWLEVRKSRDPSDSLEDQLRKSLELLD
ERMTVRSVKECWKGGSTAVCCAIDMDQKLMALAWLGDSPGYVMSNIEFRQ
LTRGHSPSDEREARRVEEAGGQLFVIGGELRVNGVLNLTRALGDVPGRPM
ISNEPETCQVPIESSDYLVLLACDGISDVFNERDLYQLVEAFANDYPVED
YAELSRFICTKAIEAGSADNVSVVIGFLRPPQDVWKLMKHESDDEDSDVT
DEE---
>CbriggsaeFEM-2
MSGPPPPKTNEKSSQPVTGRSQEPTRKGQLGPNYLRIIEEDEEYGHALLE
PSEEQIKFEREALFEDLHLDRQRSARSFIEETFEEEMLGPQNGIPPTTES
PQSYIPIRYRNPPAAAPVHDVFGDAVHAIFQKLMTRGPPVEYCHWMSYWI
AKQIDKDS-PVKYHECRFTPDQYVTENTAEAKKTYMDNMWKAAEKNLWMY
TYNSPLLRTKWTGIHVSAEQIKGQRHKQEDRFVAYPNSLYMDTSRSDHIA
LLGVFDGHGGHECSQYAAGHMWETWIETRASHFEEP-LEKQLKTSLDLLD
ERMTVRSTKECWKGGTTAVCCAIDMNKKELAFAWLGDSPGYIMDNLEVRK
VTRDHSPSDPEEGRRVEEAGGQLFVIGGELRVNGVLNLTRALGDVPGRPM
ISNQAETCQRDIEVGDYLVILACDGISDVFNTSDLYNLVQAYVNENPVEE
YNDLAHYICHEAIAHGSTDNVTVVIGFLRPPQDLWRMMKIDEESDEEEDE
VDDE--</textarea>
    		<div class="col-md-12 text-center"> 
    			<button class="btnsubmit"><i class="fa fa-check"></i>SUBMIT</button>
    			
    			<button class="btnclear" type="button"  onclick="document.getElementById('Data').value=''"><i class="fa fa-eraser"></i>CLEAR</button>
    		</div>
    		
</div>	


<div class="col-md-12 div3">		
<div class="card1">
	<div class="card-body">
       <p class="card-text">
       		<div class="slidecontainer">
  					<p>Show residues per line

  					<input type="range" min="10" max="100" value="50" name="rowrange" step="10" class="slider" id="myRange">

  					<output id="demo" class="out"></output></p>
			</div>
			<div class="slidecontainer">
  					<p>Select Font Size:
  					<input type="range" min="8" max="72" value="16" step="2" name="rowfsize" class="slider" id="myRange1">
  					<output id="demo1" class="out"></output> </p>
			</div>
					<p>Choose the colors you wish to use for highlighting. Identical amino acids have the highest priority for coloring, followed by similar amino acids. </p>
					<p>Color identical amino acids <input type="button" id="colourPicker1" class="jscolor{valueElement:'chosen-value',value:'000000'}" style="width:60px; height:10px;border-radius: 10px;padding:9px;" >
					and similar amino acids <input type="button" class="jscolor{valueElement:'chosen-value1',value:'D3D3D3'}" style="width:60px; height:10px;border-radius: 10px;padding:9px;"></p>
					<input type="hidden" id="chosen-value" name="firstcolor">
					<input type="hidden" id="chosen-value1" name="secondcolor">
					<p>Enter the groups of similar amino acids separated by commas</p>
					<center><input type="text" size="30" name="txtGroup" style="border: 1px solid;border-radius: 5px;text-align:center;" value="ILV,FWY,KRH,DE,GAS,P,C,TNQM"></center>
       </p>
       		
			
	</div>
</div>
</div>

</form>
  			
<!-- </div> -->
		<p></p>
	<footer class="page-footer font-small blue">

  <!-- Copyright -->
  <div class="footer-copyright text-center py-3">© 2019 Copyright:
    <a href="">Ahmedabad University</a>
  </div>
  <!-- Copyright -->
   <!-- Copyright -->

</footer>

</body>	
<script>

var slider = document.getElementById("myRange");
var output = document.getElementById("demo");
output.innerHTML = slider.value;

slider.oninput = function() {
  output.innerHTML = this.value;
}

var slider1 = document.getElementById("myRange1");
var output1 = document.getElementById("demo1");
output1.innerHTML = slider1.value;

slider1.oninput = function() {
  output1.innerHTML = this.value;
 }

/* var slider2 = document.getElementById("myRange2");
var output2 = document.getElementById("demo2");
output2.innerHTML = slider2.value;

slider2.oninput = function() {
  output2.innerHTML = this.value;
} */


/* function setTextColor(picker) {
	//document.getElementsByTagName('body')[0].style.color = '#' + picker.toString()
	selectColour();
} */






</script>




</html>