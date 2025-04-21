#include <stdio.h>

long long int sum(long long *arr, long long m, long long n);
// {
//     long long int ans = 0;
//     for (long long  i = 0; i < m*n; i++)
//     {
//         long long int element = *(arr + i);
//         if (element % 3 == 0 && element % 5 != 0)
//         {
//             ans += element;
//         }
        
//     }
//     return ans;
// }

int main()
{
    long long int m, n;
    scanf("%lld %lld", &m, &n);
    long long int arr[m][n];
    for (long long int i = 0; i < m; i++)
    {
        for (long long int j = 0; j < n; j++)
        {
            scanf("%lld", &arr[i][j]);
        }
    }
    long long ans = sum(&arr[0][0], m , n);
    printf("%lld\n", ans);
    return 0;
}