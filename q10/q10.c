#include <stdio.h>

int balanced(char *str, int n)
{
    int stack[n];
    int top = -1;
    for (int i = 0; i < n; i++)
    {
        if (str[i] == '(' || str[i] == '{' || str[i] == '[')
        {
            top++;
            stack[top] = str[i];
        }
        else if (str[i] == ')' || str[i] == '}' || str[i] == ']')
        {
            if (top == -1)
            {
                return 0;
            }
            else
            {
                if ((str[i] == ')' && stack[top] == '(') || (str[i] == '}' && stack[top] == '{') || (str[i] == ']' && stack[top] == '['))
                {
                    top--;
                }
                else
                {
                    return 0;
                }
            }
        }
    }
    if (top != -1)
    {
        return 0;
    }
    return 1;
}

int main()
{
    int n;
    scanf("%d", &n);
    char str[n+1];
    scanf("%s", str);
    int ans = balanced(str, n);
    if (ans == 1)
    {
        printf("BALANCED");
    }
    else
    {
        printf("NOT BALANCED");
    }
    return 0;
}