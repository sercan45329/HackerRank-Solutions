using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
class Solution {

    static void Main(String[] args) {
        int t = Convert.ToInt32(Console.ReadLine());
        for(int a0 = 0; a0 < t; a0++){
            int n = Convert.ToInt32(Console.ReadLine()) -1;
            long threeCount = n / 3;
            long fiveCount = n / 5;
            long fifteenCount = n / 15;
            long sumThree = 3 * ((threeCount * (threeCount + 1))/2);
            long sumFive = 5 * ((fiveCount * (fiveCount + 1))/2);
            long sumFifteen = 15 * ((fifteenCount * (fifteenCount + 1))/2);
            long sum = (sumThree + sumFive) - (sumFifteen);
            Console.WriteLine(sum);     
        }     
    }
}
