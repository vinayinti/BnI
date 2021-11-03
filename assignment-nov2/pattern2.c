#include<stdio.h>
int main()
{
	int i,j,k,n;
	int spec[5]={36,35,94,35,36};//$ = 36   # = 35    ^ = 94
	printf("Enter n value:");
	scanf("%d",&n);
	for(i=1;i<=n;i++)
	{
		for(j=n;j>=i;j--)
		{
			printf(" ");
		}
		for(k=1;k<=2*i-1;k++)
		{
		
			printf("%c",spec[i-1]);
			
		}
		printf("\n");
	}
	return 0;
}