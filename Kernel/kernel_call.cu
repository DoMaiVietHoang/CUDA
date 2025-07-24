#include <iostream>

//Define a kernel in GPU, without working

__global__ void kernel(void){
    printf("Hello from GPU\n");
}

int main(void){
    kernel<<<1,1>>>();
    cudaDeviceSynchronize(); //After call kernel
    printf("Hello World \n");
    return 0;
}
