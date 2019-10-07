/************************
** Not written by raul **
************************/
import java.io.*;
import static java.lang.System.*;
import java.lang.Math;
import java.util.Scanner;

class Main{


     public static void main (String str[]) throws IOException {
         Scanner scann = new Scanner(System.in);
         System.out.println ("Please enter ratings from the movie review website.");
         int webR1 = scann.nextInt();
         int webR2 = scann.nextInt();
         int webR3 = scann.nextInt();
         System.out.println("Please enter ratings from the focus group.");
         double focusGr1 = scann.nextDouble();
         double focusGr2 = scann.nextDouble();
         System.out.println("Please enter the average movie critic rating.");
         double avgCritR = scann.nextDouble();
         double avgWebR = 1.0 * (((double)webR1 + (double)webR2 + (double)webR3)/3);
         System.out.println("Average website rating: " + avgWebR);
         double avgFcsGR = ((focusGr1 + focusGr2)/2);
         System.out.println("Average focus group rating: " + avgFcsGR);
         System.out.println("Average movie critic rating: " + avgCritR);
         double movieR = ((avgCritR * 0.5) + (avgWebR * 0.2) + (avgFcsGR * 0.3));
         System.out.println("Overall movie rating: " + movieR);
     }

}
