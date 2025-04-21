#include <stdio.h>

long long binarySearch(long long *arr, long long low, long long high, long long element);
// {
//     if (low > high)
//     {
//         return -1;
//     }
    
//     long long mid = low +  (high - low) / 2;
//     if (arr[mid] == element)
//     {
//         return mid;
//     }
//     else if (arr[mid] > element)
//     {
//         return binarySearch(arr, low, mid - 1, element);
//     }
//     else
//     {
//         return binarySearch(arr, mid + 1, high, element);
//     }
//     return -1;
// }

int main()
{
    long long n;
    scanf("%lld", &n);
    long long arr[n];
    for (long long i = 0; i < n; i++)
    {
        scanf("%lld", &arr[i]);
    }
    long long element;
    scanf("%lld", &element);
    long long index = binarySearch(arr, 0, n - 1, element);
    printf("%lld\n", index);
    return 0;
}