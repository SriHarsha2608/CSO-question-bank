#include <stdio.h>

void waveForm(long long int *arr, long long int n);
// {
//     for (long long int i = 0; i < n; i++)
//     {
//         long long int min = i;
//         for (long long int j = i + 1; j < n; j++)
//         {
//             if (arr[j] < arr[min])
//             {
//                 min = j;
//             }
//         }
//         if (min != i)
//         {
//             long long int temp = arr[i];
//             arr[i] = arr[min];
//             arr[min] = temp;
//         }   
//     }
//     for (long long int i = 0; i < n - 1; i++)
//     {
//         if (i % 2 == 0)
//         {
//             long long int temp = arr[i];
//             arr[i] = arr[i + 1];
//             arr[i + 1] = temp;
//         }
//     }
    
// }

int main()
{
    long long int n;
    scanf("%lld", &n);
    long long int arr[n];
    for (long long int i = 0; i < n; i++)
    {
        scanf("%lld", &arr[i]);
    }
    waveForm(arr, n);
    for (long long int i = 0; i < n; i++)
    {
        printf("%lld ", arr[i]);
    }
    return 0;
}