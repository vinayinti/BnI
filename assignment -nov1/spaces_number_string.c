#include<stdio.h>
#include<ctype.h>
#include<string.h>
#define Max 100

int main()
{
	char str[Max];
	printf("enter the string");
	scanf("%[^\n]s",str);
	
	for(int i=0;i<strlen(str);i++)
	{
		if(isdigit(str[i]))
		{
			str[i]=' ';
		}	
	}
	
	printf("String after replacing the integers with spaces: %s \n",str);
	return 0;
}