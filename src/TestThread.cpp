/*
 * thread-test.cc
 *
 *  Created on: Dec 29, 2013
 *      Author: daniel
 */
// thread example
#include <stdio.h>
#include <stdlib.h>
#include <unistd.h>
#include <pthread.h>


void* foo(void* ptr)
{
  for (int index=0; index < 30; index++)
  {
	  printf("Current Count: %d\n", index);
  }
  usleep(1000);
  return 0;
}

void* bar(void* ptr)
{
	int x = *(int*)ptr;
	for (int index=x; index < 60; index++)
	  {
		  printf("Current Count: %d\n", index);
	  }
	usleep(1000);
	return 0;
}

int main1()
{
  int  iret1 = 0;
  int  iret2 = 0;
  int  idata = 1;

  pthread_t first;     // spawn new thread that calls foo()
  pthread_t second;    // spawn new thread that calls bar(0)

  printf("main, foo and bar now execute concurrently...\n");
  iret1 = pthread_create( &first, NULL, foo, NULL);
  iret2 = pthread_create( &second, NULL, bar, (void*)&idata);


  // synchronize threads:
  pthread_join(first, NULL);                // pauses until first finishes
  pthread_join(second, NULL);               // pauses until second finishes

  printf("Thread 1 returns: %d\n",iret1);
  printf("Thread 2 returns: %d\n",iret2);


  printf("foo and bar completed.\n");

  return 0;
}
