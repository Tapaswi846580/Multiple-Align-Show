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

<style>
</style>
</head>
<body>
<div >
<div class="container col-md-12">
<div class="pos-f-t ">
  <div class="collapse" id="navbarToggleExternalContent">
    <div class="bg-dark">
 <div class="card1">
	<div class="card-body">
       <p class="card-text">
       		<div class="slidecontainer">
  					<p>Show residues per line
  					<input type="range" min="10" max="100" value="50"step="10" class="slider" id="myRange">
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
  </div>
  <nav class="navbar navbar-dark bg-dark">
    <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarToggleExternalContent" aria-controls="navbarToggleExternalContent" aria-expanded="false" aria-label="Toggle navigation">
      <span class="navbar-toggler-icon"></span>
    </button>
  </nav>
</div>
</div>
<div class="container col-md-12">
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
AKQIDK
</div>
</body>
</html>