#include <stdio.h>
#define MAX_LENGTH 20
long long int checkPalindrome(char *str);
// {
//     long long int left = 0, right = n - 1;
//     while (left < right)
//     {
//         if (str[left] != str[right])
//         {
//             return 0;
//         }
//         left++;
//         right--;
//     }
//     return 1;
// }

int main()
{
    char str[MAX_LENGTH];
    scanf("%s", str);
    int len = strlen(str);
    long long ans = checkPalindrome(str);
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