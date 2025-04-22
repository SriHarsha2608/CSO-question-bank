#include <stdio.h>
#define MAX 100000

int uniqueElements(long long *arr, long long *ans, long long pointer, long long n);
// {
//     for (long long i = 0; i < n - 1; i++)
//     {
//         if (arr[i+1] != arr[i])
//         {
//             ans[pointer] = arr[i];
//             pointer++;
//         }  
//     }

//     ans[pointer] = arr[n-1];
//     pointer++;
//     return pointer;
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
    long long ans[n];
    long long pointer = 0;
    pointer = uniqueElements(arr, ans, pointer, n);
    for (long long i = 0; i < pointer; i++)
    {
        printf("%lld ", ans[i]);
    }
    
    return 0;
}