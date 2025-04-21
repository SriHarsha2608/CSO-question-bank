#include <stdio.h>

void function(long long int *arr, long long int n);
// {
//     long long int counter = 1;
//     while (counter <= n)
//     {
//         if (counter % 14 == 0)
//         {
//             arr[counter - 1] = -3;
//         }
//         else if (counter % 7 == 0)
//         {
//             arr[counter - 1] = -2;
//         }
//         else if (counter % 2 == 0)
//         {
//             arr[counter - 1] = -1;
//         }
//         else
//         {
//             arr[counter - 1] = counter;
//         }
//         counter++;  
//     }
// }

int main()
{
    long long int n;
    scanf("%lld", &n);
    long long int arr[n];
    function(arr, n);
    for (int i = 0; i < n; i++)
    {
        printf("%lld ", arr[i]);
    }
    return 0;
}