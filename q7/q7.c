#include <stdio.h>

long long int special(long long int n);
// {
//     int num = n;
//     int sum = 0;
//     while (n > 0)
//     {
//         int digit = n % 10;
//         int fact = 1;
//         for (int i = 1; i <= digit; i++)
//         {
//             fact *= i;
//         }
//         sum += fact;
//         n /= 10;
//     }
//     if (sum == num)
//     {
//         return 1;
//     }
//     else
//     {
//         return 0;
//     }
// }

int main()
{
    long long int n;
    scanf("%lld", &n);
    long long int ans = special(n);
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