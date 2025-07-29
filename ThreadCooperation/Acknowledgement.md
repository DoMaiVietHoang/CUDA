### Splitting Parallel Blocks

- Parallel in GPU: The parallel code is constructed by instructing CUDA runtime system on how many '''parallel copies''' (blocks) of our kernel to launch
- Block is splitted into threads.
![](resourses/images/image.png)
## GPUs sum of a longer vector
### Challenging:
- Have to change the index compution within the kernel
- Have to change the kernel lauch itself
<pre> ```int tid = threadIdx.x + blockIdx.x*blockDim.x```</pre>

## Shared memory and Synchronization
### Dot product
- Each thread multiples a pair of corresponding entries and then every thread moves on to its next pair. In details:
    Supppse that we have two vectors A and B and we want to compute the dot product and store the result in C.
    In CUDA, instead of using a sequential loop, we can use multiple parallel threads, each responsible for computing a part of the dot product.
    For instance,  
    int A[8] = {1, 2, 3, 4, 5, 6, 7, 8};
int B[8] = {10, 20, 30, 40, 50, 60, 70, 80};
int C[8]; // Kết quả
