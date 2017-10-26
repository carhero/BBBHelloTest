#ifndef __CREATE_THREAD_H__
#define __CREATE_THREAD_H__

void Thread_SetUpdateFlag(unsigned int update);
unsigned int Thread_GetUpdateFlag(void);
void CopyJsonBuffer(const char *pBuf, unsigned int Length);
int Thread_Create(void);
#endif