### Splitting Parallel Blocks

- Parallel in GPU: The parallel code is constructed by instructing CUDA runtime system on how many '''parallel copies''' (blocks) of our kernel to launch
- Block is splitted into threads.
![](resourses/images/image.png)
## GPUs sum of a longer vector
# Challenging:
- Have to change the index compution within the kernel
- Have to change the kernel lauch itself
<pre> ```cpp // int tid = threadIdx.x  +  blockIdx.x*blockDim.x``` </pre>