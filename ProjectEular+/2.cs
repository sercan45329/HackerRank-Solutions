using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
class Solution {
    static void Main(String[] args) {
        int t = Convert.ToInt32(Console.ReadLine());
        for(int a0 = 0; a0 < t; a0++){
            long n = Convert.ToInt64(Console.ReadLine());
            long prev = 2;
            long counter = 3;
            long sum = 2;
            while(counter < n){
                if(counter % 2 == 0) sum+=counter;
                long temp = prev;
                prev = counter;
                counter = counter + temp;
            }
            Console.WriteLine(sum);
        }
    }
    
}
