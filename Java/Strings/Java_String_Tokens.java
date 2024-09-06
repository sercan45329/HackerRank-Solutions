import java.util.*;

public class Solution {
    public static void main(String[] args) {
        String regex = "[ !,?._'@]+";
        Scanner scan = new Scanner(System.in);
        String input = scan.nextLine();
        input = input.trim();
        if (input.length() == 0) {
            System.out.println(0);
        }else{
            String[] splittedWords = input.split(regex);
            System.out.println(splittedWords.length);
            for (String word : splittedWords) {
              System.out.println(word);
            }       
        }
        scan.close();
    }
}

