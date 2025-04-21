#include <stdio.h>

long long isPrime(long long n, long long d);
// {
//     long long product = 1;
//     for (long long i = 1; i < d; i++)
//     {
//         product *= 10;
//     }

//     for (long long i = 0; i < d; i++)
//     {
//         long long digit = n % 10;
//         n /= 10;
//         n += digit * product;
//         long long j = 2;
//         while (j * j <= n)
//         {
//             if (n % j == 0)
//             {
//                 return 0;
//             }
//             j++;
//         }
//     }
//     return 1;
// }

int main()
{
    long long n, d;
    scanf("%lld %lld", &n, &d);
    long long ans = isPrime(n, d);
    if (ans == 1)
    {
        printf("TRUE\n");
    }
    else
    {
        printf("FALSE\n");
    }
    
    return 0;
}