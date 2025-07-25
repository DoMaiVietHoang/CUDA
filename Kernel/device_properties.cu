#include"./thirdparty/book.h"
#include <iostream>

int main(void){
    cudaDeviceProp prop;
    int dev;
    cudaGetDevice( &dev ) ;
    printf( "ID of current CUDA device: %d\n", dev );
    memset(&prop, 0, sizeof(cudaDeviceProp))  
}