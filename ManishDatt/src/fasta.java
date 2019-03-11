import java.io.BufferedInputStream;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.util.NoSuchElementException;

import org.biojava.bio.*;
import org.biojava.bio.seq.db.*;
import org.biojava.bio.seq.io.*;
import org.biojava.bio.symbol.*;

public class fasta {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		
		 try {
		     //setup file input
		    // String filename = args[0];
//		     FileInputStream fs=new FileInputStream(">CremaneiFEM-2\r\n" + 
//		     		"-------------------MSDSLNHPSSSTVHADDGFEPPTSPEDNNKK\r\n" + 
//		     		"PSLEQIKQEREALFTDLFADRRRSARSVIEEAFQNELMSAEPVQPNVPN-\r\n" + 
//		     		"-PHSIPIRFRHQPVAGPAHDVFGDAVHSIFQKIMSRGVNADYSHWMSYWI\r\n" + 
//		     		"ALGIDKKT-QMNYHMKPFCKDTYATEGSLEAKQTFTDKIRSAVEEIIWKS\r\n" + 
//		     		"AEYCDILSEKWTGIHVSADQLKGQRNKQEDRFVAYPNGQYMNRGQ-SDIS\r\n" + 
//		     		"LLAVFDGHGGHECSQYAAAHFWEAWSDAQHHHSQDMKLDELLEKALETLD\r\n" + 
//		     		"ERMTVRSVRESWKGGTTAVCCAVDLNTNQIAFAWLGDSPGYIMSNLEFRK\r\n" + 
//		     		"FTTEHSPSDPEECRRVEEVGGQIFVIGGELRVNGVLNLTRALGDVPGRPM\r\n" + 
//		     		"ISNKPDTLLKTIEPADYLVLLACDGISDVFNTSDLYNLVQAFVNEYDVED\r\n" + 
//		     		"YHELARYICNQAVSAGSADNVTVVIGFLRPPEDVWRVMKTDSDDEESELE\r\n" + 
//		     		"EEDDNE\r\n" + 
//		     		">CelegansFEM-2\r\n" + 
//		     		"--------------------------------------------------\r\n" + 
//		     		"--MEKVNEERDAVFEDHIGDRRRSVRSLLEEAFADEMEKTSYDVEVADTP\r\n" + 
//		     		"-QPHIPIRFRHPPIAGPVHDVFGDAIHDIFQKMMKRGQAVDFCHWVSHLI\r\n" + 
//		     		"ATEIDEKFSEVAFRDVQYNPDIYVTDSTTEAKKLFNDKIWPAIDKILQQN\r\n" + 
//		     		"AETCPILSEKWSGIHVSGDQLKGQRHKQEDRFLAYPNGQYMDRGE-DPIS\r\n" + 
//		     		"VLAVFDGHGGHECSQYAAGHLWETWLEVRKSRDPSDSLEDQLRKSLELLD\r\n" + 
//		     		"ERMTVRSVKECWKGGSTAVCCAIDMDQKLMALAWLGDSPGYVMSNIEFRQ\r\n" + 
//		     		"LTRGHSPSDEREARRVEEAGGQLFVIGGELRVNGVLNLTRALGDVPGRPM\r\n" + 
//		     		"ISNEPETCQVPIESSDYLVLLACDGISDVFNERDLYQLVEAFANDYPVED\r\n" + 
//		     		"YAELSRFICTKAIEAGSADNVSVVIGFLRPPQDVWKLMKHESDDEDSDVT\r\n" + 
//		     		"DEE---\r\n" + 
//		     		">CbriggsaeFEM-2\r\n" + 
//		     		"MSGPPPPKTNEKSSQPVTGRSQEPTRKGQLGPNYLRIIEEDEEYGHALLE\r\n" + 
//		     		"PSEEQIKFEREALFEDLHLDRQRSARSFIEETFEEEMLGPQNGIPPTTES\r\n" + 
//		     		"PQSYIPIRYRNPPAAAPVHDVFGDAVHAIFQKLMTRGPPVEYCHWMSYWI\r\n" + 
//		     		"AKQIDKDS-PVKYHECRFTPDQYVTENTAEAKKTYMDNMWKAAEKNLWMY\r\n" + 
//		     		"TYNSPLLRTKWTGIHVSAEQIKGQRHKQEDRFVAYPNSLYMDTSRSDHIA\r\n" + 
//		     		"LLGVFDGHGGHECSQYAAGHMWETWIETRASHFEEP-LEKQLKTSLDLLD\r\n" + 
//		     		"ERMTVRSTKECWKGGTTAVCCAIDMNKKELAFAWLGDSPGYIMDNLEVRK\r\n" + 
//		     		"VTRDHSPSDPEEGRRVEEAGGQLFVIGGELRVNGVLNLTRALGDVPGRPM\r\n" + 
//		     		"ISNQAETCQRDIEVGDYLVILACDGISDVFNTSDLYNLVQAYVNENPVEE\r\n" + 
//		     		"YNDLAHYICHEAIAHGSTDNVTVVIGFLRPPQDLWRMMKIDEESDEEEDE\r\n" + 
//		     		"VDDE--\r\n" + 
//		     		"");
//		     BufferedInputStream is =
//		         new BufferedInputStream(fs);
		     
		     BufferedInputStream is =
		             new BufferedInputStream(new FileInputStream("E:\\first.txt"));

		     //get the appropriate Alphabet
		     Alphabet alpha = AlphabetManager.alphabetForName("PROTEIN");

		     //get a SequenceDB of all sequences in the file
		     SequenceDB db = SeqIOTools.readFasta(is, alpha);
		   }
		   catch (BioException ex) {
		     //not in fasta format or wrong alphabet
		     ex.printStackTrace();
		   }catch (NoSuchElementException ex) {
		     //no fasta sequences in the file
		     ex.printStackTrace();
		   }catch (FileNotFoundException ex) {
		     //problem reading file
		     ex.printStackTrace();
		   }

	}

}
