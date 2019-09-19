import java.util.Scanner;
import java.lang.Math;

class Lesson_6_Activity_Three {
    public static void main(String[] args) {
Scanner s = new Scanner(System.in);
System.out.println("Please imput a decimal number:");
double a = s.nextDouble();
int whole = (int) a;
whole *= 100;
a *= 100;
a -= whole;
whole = (int) a;
System.out.println("Answer: " + whole);

    }
} 
