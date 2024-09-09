import java.util.*;
import java.util.regex.Pattern;
import java.util.regex.Matcher;

public class Solution {

    public static void main(String[] args) {
        Scanner scn = new Scanner(System.in);
        while(true){
            try{
                String input = scn.nextLine();
                System.out.println(MyRegex.isIp(input));
            }catch(NoSuchElementException ex){
                break;
            }
        }
        scn.close();
    }
}

class MyRegex {
    
    private static final String regex = "^((25[0-5]|2[0-4][0-9]|1[0-9]{2}|[0]?[0-9]{1,2})\\.){3}(25[0-5]|2[0-4][0-9]|1[0-9]{2}|[0]?[0-9]{1,2})$";
            
    private static final Pattern pattern = Pattern.compile(regex);
    
    public static boolean isIp(String value){
        Matcher matcher = pattern.matcher(value);
        return matcher.matches();
    }
    
}