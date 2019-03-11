<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
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
<form action="Controller" method="POST">
<div class="container">
<div class="card">
<div class="view" style="background-image: url('ManishDatt/Images/background.jpg'); background-repeat: no-repeat; background-size: cover; background-position: center center;">
      <div class="card-body">
        <h1 class="card-title">Multiple Align Show</h1>
        <p class="card-texts">Multiple Align Show accepts a group of aligned sequences (in FASTA or GDE format) and formats the alignment to your specifications. You can specify the number of residues per line, and the font size and font style. You can also set a consensus level, which specifies the fraction of residues that need to be identical or similar in a column of the alignment for highlighting to be added. Use Multiple Align Show to enhance the output of sequence alignment programs.</p>
      </div>
      </div>	
</div>
   		
<p>Paste the aligned sequences in FASTA or GDE format into the text area below. </p>
		    <textarea class="form-control" rows="7" name="txtData" placeholder="Enter Amino acid Sequence here...">>CremaneiFEM-2
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
    			<button class="btn"><i class="fa fa-check"></i>SUBMIT</button>
    			<button class="btn"><i class="fa fa-eraser"></i>CLEAR</button>
    		</div>
<div class="card1">
	<div class="card-body">
       <p class="card-text">
       		<div class="slidecontainer">
  					<p>Show residues per line
  					<input type="range" min="1" max="100" value="50" class="slider" id="myRange">
  					<output id="demo" class="out"></output></p>
			</div>
			<div class="slidecontainer">
  					<p>Select Font Size:
  					<input type="range" min="8" max="72" value="16" step="2" class="slider" id="myRange1">
  					<output id="demo1" class="out"></output> </p>
			</div>
					<p>Choose the colors you wish to use for highlighting. Identical amino acids have the highest priority for coloring, followed by similar amino acids. </p>
					<p>Color identical amino acids <input type="button" class="jscolor{valueElement:null,value:'66ccff'}" style="width:60px; height:30px;border-radius: 10px;padding:15px;">
					and similar amino acids <input type="button" class="jscolor{valueElement:null,value:'66ccff'}" style="width:60px; height:30px;border-radius: 10px;padding:15px;"></p>
					<div class="slidecontainer">
  					<p>Percentage of sequences that must agree for identity or similarity coloring to be added:  
  					<input type="range" min="10" max="100" value="50" step="10" class="slider" id="myRange2">
  					<output id="demo2" class="out"></output> </p>
					</div>
					<p>The color used if no identity or similarity coloring is added  <input type="button" class="jscolor{valueElement:null,value:'66ccff'}" style="width:60px; height:30px;border-radius: 10px;padding:15px;"></p>
					<p>The color of all gaps: <input type="button" class="jscolor{valueElement:null,value:'66ccff'}" style="width:60px; height:30px;border-radius: 10px;padding:15px;"></p>
					
			</p>
</div>
</div>
  			
</div>
		</form>
	<footer class="page-footer font-small blue">

  <!-- Copyright -->
  <div class="footer-copyright text-center py-3">© 2018 Copyright:
    <a href="">Manish Datt</a>
  </div>
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

var slider2 = document.getElementById("myRange2");
var output2 = document.getElementById("demo2");
output2.innerHTML = slider2.value;

slider2.oninput = function() {
  output2.innerHTML = this.value;
}

function setTextColor(picker) {
	document.getElementsByTagName('body')[0].style.color = '#' + picker.toString()
}
</script>

</html>