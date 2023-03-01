#include <stdio.h>
#include <stdlib.h>
#include <unistd.h> 
#include <pthread.h>
int S=1,F=0,E=5;
int k=0,p=0;
int buffer[5];
void display(int a[])
{
	for (int i = 0; i < 5; ++i)
	{
		printf("%d",a[i] );
	}
	printf("\n");
}
void signal(int *s)
{
	*s = *s +1;
}
void wait(int *s)
{
	while(*s<=0)
	{
		printf("Waiting..\n");
	}
	*s=*s-1;
}
void produce()
{
	printf("produced\n");
}

void use()
{
	printf("used\n");
}
void *producer()
{
	while(k<5)
	{
		printf("Start producer thread..%d\n",k);
		produce();
		wait(&E);
		wait(&S);
		buffer[F] = 1;
		display(buffer);
		signal(&S);
		signal(&F);
		k++;
		printf("End producer thread..%d\n",k);
	}
}
void *consumer()
{
	while(p<5)
	{
		printf("Start producer thread..%d\n",k);
		wait(&F);
		wait(&S);
		buffer[F] = 0; 
		display(buffer);
		signal(&S);
		signal(&E);
		p++;
		use();
		printf("End producer thread..%d\n",k);
	}
}
int main(int argc, char const *argv[])
{
	while(1)
	{
		pthread_t tid1,tid2,tid3;
		printf("New Thread\n");
		pthread_create(&tid2,NULL,consumer,NULL);
		pthread_create(&tid1,NULL,producer,NULL);
		pthread_join(tid1,NULL);
		pthread_join(tid2,NULL);
		break;
	}
	return 0;
}

