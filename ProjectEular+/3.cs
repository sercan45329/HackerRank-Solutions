using System;
using System.Collections.Generic;
//
//WARNING
//This solution is suggested by chat-gpt3.5. It's not my solution.
//My solution's time complexity was higher than chat-gpt's one.
//
class Solution {
    static void Main(String[] args) {
        int t = Convert.ToInt32(Console.ReadLine());
        for(int a0 = 0; a0 < t; a0++){
            long n = Convert.ToInt64(Console.ReadLine());
            long largestPrimeFactor = GetLargestPrimeFactor(n);
            Console.WriteLine(largestPrimeFactor);
        }
    }

    public static long GetLargestPrimeFactor(long n)
    {
        long largestPrimeFactor = 0;
        for (long i = 2; i * i <= n; i++)
        {
            while (n % i == 0)
            {
                largestPrimeFactor = i;
                n /= i;
            }
        }
        if (n > 1)
            largestPrimeFactor = n;
        return largestPrimeFactor;
    }
}
