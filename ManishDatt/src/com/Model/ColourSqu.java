package com.Model;

import java.util.ArrayList;
import java.util.Iterator;

public class ColourSqu {

	public ArrayList<String[][]> colourDeco(ArrayList<String> heading, ArrayList<StringBuilder> sequence,
			int rowrange) {

		ArrayList<String[][]> alFinal = new ArrayList<String[][]>();

		char[] arr=null;
		int x = rowrange;
		int r = 0;
		int cnt = 0, cnt1 = 0;
		ArrayList<String> headings = heading;
		ArrayList<StringBuilder> sequences = sequence;
		ArrayList alSeq = new ArrayList<>();
		ArrayList alCol = new ArrayList<>();

		for (StringBuilder str : sequences) {
			str.toString().replaceAll("\\s", "");
		}

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

			alSeq.add(a);
			char[][] b = new char[r][x];
			alCol.add(b);
		}

//		for (int k = 0; k < alSeq.size(); k++) {
//			char[][] temp = (char[][]) alSeq.get(k);
//
//			for (int i = 0; i < r; i++) { // row
//
//				for (int j = 0; j < x; j++) { // col
//
//					System.out.print(temp[i][j]);
//				}
//
//				System.out.println("");
//			}
//
//			System.out.println("");
//			System.out.println("");
//			System.out.println("");
//		}

		//int lenth = sequences.get(0).length();
		int lenth=arr.length;
//		System.out.println(lenth);

		String[][] finalSeq = new String[sequences.size()][lenth];
		String[][] finalCol = new String[sequences.size()][lenth];
		
		for(int k=0; k<sequences.size(); k++) {
			char[] temp = sequences.get(k).toString().replaceAll("\\s", "").toCharArray();
			
			for (int i = 0; i < lenth; i++) { // row
				
				finalSeq[k][i]=temp[i]+"";
				finalCol[k][i]="transparent";
				

			}
			
		}
		
		
		
			

//			for (int i = 0; i < sequences.size(); i++) { // row
//
//				for (int j = 0; j < lenth; j++) { // col
//
//					System.out.print(finalSeq[i][j]);
//				}
//
//				System.out.println("");
//			}
		
		
		for (int i = 0; i < lenth; i++) { // row
			String str=finalSeq[0][i];

			for (int j = 0; j < sequences.size(); j++) { // col

				if(str.equals(finalSeq[j][i])) {
					
				}
			}

			
		}

			
		

		return alFinal;

	}

}
