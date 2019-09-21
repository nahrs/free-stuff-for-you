import java.io.*;
import static java.lang.System.*;
import java.util.Scanner;
import java.lang.Math;

class Lesson_10_Activity{
    public static void main(String[] args){
        Scanner s = new Scanner(System.in);
        System.out.println("Please enter two decimal values:");
        double a = s.nextDouble();
        double b = s.nextDouble();
        double tempa = a * 1000;
        double tempb = b * 1000;
	int da = (int)tempa;
	int db = (int)tempb;


	int diff = (da - db);
	double fin = (double)diff/1000;
	
        System.out.println("The difference is: " + fin);
        
        
    }   
    
    
}
