#define nLoops 20000000
#include<pthread.h>
#ifdef CONFIG_VOLATILE 
volatile
#endif 

int sharedInt;
/* sharedInt has static lifetime.
   sharedInt is initialized in racer.c
   All the new threads run racer so
   they all share sharedInt.
*/
pthread_mutex_t vijay;
void * racer( void * arg );

