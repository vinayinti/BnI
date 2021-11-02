#include<stdio.h>
#include<stdlib.h>

struct node 
{
	int data;
	struct node *next;
};

struct node *head=NULL;
struct node *last=NULL;

void create()
{	

	int data;
	int ch;
	struct node *new;
	printf("Enter the element");
	scanf("%d",&data);
	new = (struct node*)malloc(sizeof(struct node));
	if(new == NULL)
	{
		printf("No space available");
		return ;
	}
	new->data=data;
	new->next=NULL;
	if(head == NULL)
	{
		head=new;
		last=new;
	}
	else
	{
		last->next=new;
		last=new;
	}
	
	
	printf("enter choice: 0 for exit");
	scanf("%d",&ch);
	if(ch!=0)
	{
		create();
	}
	
	return ;
}

void remove_duplicate()
{
	struct node *temp,*curr,*sec;
	for(curr=head->next,sec=head;curr!=NULL;curr=curr->next,sec=sec->next)
	{
	    for(temp=head;temp!=curr;temp=temp->next)
	    {
	        if(curr->data==temp->data)
	        {
	            sec->next=curr->next;
	            free(curr);
	            temp=head;
	            if(sec->next!=NULL)
	            {
	            curr=sec->next;
	  
	            }
	            else
	            curr=sec;
	            //temp=head;
	        }
	    }
	}
	
	
}


void display()
{
	struct node *temp=head;
	if(head == NULL)
	{
		printf("No elements are found");
	}
	else{
	while(temp!=NULL)
	{
	printf("%d->",temp->data);
	temp=temp->next;
	
	}
	printf("\n");
	}
}

int main()
{
	create();
	display();
	printf("\n");
	remove_duplicate();
	display();
	return 0;
}
