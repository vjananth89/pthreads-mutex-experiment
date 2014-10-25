#include "racer.h"

#ifdef CONFIG_VOLATILE 
volatile
#endif
int sharedInt = 0;

void  * racer(void *tid)
{
  
  int count;
  for(count = nLoops; count > 0; count--)
    {
      pthread_mutex_lock(&vijay);
      sharedInt = sharedInt + 1;
      pthread_mutex_unlock(&vijay);
    }
}
