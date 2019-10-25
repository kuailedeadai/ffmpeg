//
// Created by daimeng on 2019/7/16.
//
#include <LogUtils.h>
#include <sys/time.h>
unsigned long getTimeStamp(){
    struct timeval tv;
    gettimeofday(&tv, 0);
    return ((tv.tv_sec * 1000000) + (tv.tv_usec));
}

