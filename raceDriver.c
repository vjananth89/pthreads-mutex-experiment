#include <pthread.h>
#include <stdio.h>
#include "racer.h" /*defines nLoops, sharedInt, and racer*/

#define maxThreads 20

int main(int argc, char * argv[])
{ 
  pthread_t threads[maxThreads];
  int nThreads;
  void * status;
  int i;

  if(argc != 2 || 
     sscanf(argv[1],"%d",&nThreads)!=1 || 
     nThreads < 0 || nThreads > maxThreads)
    {
      printf("%s nThreads\nwhere nThreads in [0,%d] is the \n"
             "number of pthreads to race each other.\n"
	     "The printed difference is the accumulated error\n"
	     "due to races",
	     argv[0], maxThreads);
      return 1;
    }

  for(i = 0; i < nThreads; i++)
    {
      pthread_create(&threads[i], NULL, racer, (void *) i);
    }
  for(i = 0; i < nThreads; i++)
    {
      pthread_join(threads[i],&status);
    }
  /* Now, all threads have exited. */

  printf("sharedInt=%d ideal=%d diff=%d reldiff=%e\n",
	 sharedInt, nLoops*nThreads, 
	 sharedInt - nLoops*nThreads,
	 ((float)(sharedInt - nLoops*nThreads))/(nLoops*nThreads)
	 );
  return 0;
}

