#include<stdio.h>
#include<stdlib.h>
struct node
{
    int data;
    struct node* next;
};
struct node* head =NULL;
struct node* last = NULL;

void create()
{
    int ele;
    printf("enter the element : ");
    scanf("%d",&ele);
    struct node *new;
    new=(struct node*)malloc(sizeof(struct node));
    if(new == NULL )
    {
        printf("memory is not allocated");
        return;
    }
    else
    {
        new->data = ele;
        new->next = NULL;
        if(head == NULL)
        {
            head = new;
            last = new;
            
        }
        else
        {
            last->next = new;
            last = new;
        }
    }
    int ch;
    printf("enter the choice 0 to exit : ");
    scanf("%d",&ch);
    if(ch)
    {
        create();
    }
    

    
}

void sort()
{
    struct node *first,*second;
    int temp;
    if(head == NULL)
    {
        printf("list is empty");
        return;
    }
    else
    {
        for(first = head;first->next != NULL;first=first->next)
        {
            for(second = first->next;second != NULL;second = second->next)
            {
                if(second->data < first->data)
                {
                    temp = second->data;
                    second->data = first -> data;
                    first->data = temp;
                    
                }
            }
        }
    }
}

void display()
{
    struct node *temp = head;
    if(head == NULL)
    {
        printf("list is empty");
    }
    else
    {
       while(temp!=NULL)
       {
           printf("%d->",temp->data);
           temp= temp->next;
       }
    }
}

int main()
{//4 2 1 6 7
    create();
   
    printf("before swapping\n");
    display();
    sort();
    printf("after swapping\n");
    display();
}