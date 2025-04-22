#include <stdio.h>

long long balanced(char *str, long long n, char *stack);
// {
    
//     long long top = -1;
//     for (long long i = 0; i < n; i++)
//     {
//         if (str[i] == '(' || str[i] == '{' || str[i] == '[')
//         {
//             top++;
//             stack[top] = str[i];
//         }
//         else if (str[i] == ')' || str[i] == '}' || str[i] == ']')
//         {
//             if (top == -1)
//             {
//                 return 0;
//             }
//             else
//             {
//                 if ((str[i] == ')' && stack[top] == '(') || (str[i] == '}' && stack[top] == '{') || (str[i] == ']' && stack[top] == '['))
//                 {
//                     top--;
//                 }
//                 else
//                 {
//                     return 0;
//                 }
//             }
//         }
//     }
//     if (top != -1)
//     {
//         return 0;
//     }
//     return 1;
// }

int main()
{
    long long n;
    scanf("%lld", &n);
    char str[n+1];
    scanf("%s", str);
    char stack[n];
    long long ans = balanced(str, n, stack);
    if (ans == 1)
    {
        printf("BALANCED\n");
    }
    else
    {
        printf("NOT BALANCED\n");
    }
    return 0;
}