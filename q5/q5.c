#include <stdio.h>
#define MAX 100000

int uniqueElements(long long *arr, long long *occurence, long long *ans, long long pointer, long long n);
// {
//     for (long long i = 0; i < n; i++)
//     {
//         if (occurence[arr[i]] == 0)
//         {
//             occurence[arr[i]] = 1;
//             ans[pointer] = arr[i];
//             pointer++;
//         }  
//     }
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
    long long int ocurrence[MAX];
    long long ans[n];
    long long pointer = 0;
    pointer = uniqueElements(arr, ocurrence, ans, pointer, n);
    for (long long i = 0; i < pointer; i++)
    {
        printf("%lld ", ans[i]);
    }
    
    return 0;
}