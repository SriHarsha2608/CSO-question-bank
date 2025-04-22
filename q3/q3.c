#include <stdio.h>
#define MAX_LENGTH 101

long long int difference(char *str);
// {
//     long long int ans = 0;
//     for (long long int i = 0; i < n - 1; i++)
//     {
//         if (str[i+1] >= str[i])
//         {
//             ans += str[i + 1] - str[i];
//         }
//         else
//         {
//             ans += str[i] - str[i + 1];
//         }
        
//     }
//     return ans;
// }

int main()
{
    char str[MAX_LENGTH];
    scanf("%s", str);
    long long int ans = difference(str);
    printf("%lld\n", ans);
    return 0;
}