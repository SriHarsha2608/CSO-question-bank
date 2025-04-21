#include <stdio.h>

void previousGreater(long long *arr, long long n, long long *stack, long long *ans);
// {
//     long long top = -1;
    
//     for (long long i = 0; i < n; i++)
//     {
//         while (top != -1 && stack[top] <= arr[i])
//         {
//             top--;
//         }
//         if (top != -1)
//         {
//             ans[i] = stack[top];
//         }
//         else
//         {
//             ans[i] = -1;
//         }

//         stack[++top] = arr[i];
//     }
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
    long long stack[n];
    long long ans[n];
    previousGreater(arr, n, stack, ans);
    for (long long i = 0; i < n; i++)
    {
        printf("%lld ", ans[i]);
    }
    return 0;
}