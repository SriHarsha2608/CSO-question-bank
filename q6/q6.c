#include <stdio.h>

long long int sequence(long long int *arr, long long int n, long long int *frequency);
// {
//     int min = arr[0], max = arr[0];
//     for (int i = 1; i < n; i++)
//     {
//         if (arr[i] < min)
//         {
//             min = arr[i];
//         }
//         if (arr[i] > max)
//         {
//             max = arr[i];
//         }
//     }
//     if (max - min != n - 1)
//     {
//         return 0;
//     }
//     for (int i = 0; i < n; i++)
//     {
//         frequency[i] = 0;
//     }
    
//     for (int i = 0; i < n; i++)
//     {
//         frequency[arr[i] - min]++;
//         if (frequency[arr[i] - min] > 1)
//         {
//             return 0;
//         }
//     }
//     return 1;
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
    long long int frequency[n];
    long long int ans = sequence(arr, n, frequency);
    if (!ans)
    {
        printf("FALSE\n");
    }
    else
    {
        printf("TRUE\n");
    }
    return 0;
}