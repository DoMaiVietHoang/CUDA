#include "thirdparty/book.h"
#include "thirdparty/cpu_bitmap.h"
#define DIM 1000
struct cuComplex
{
    float r;
    float i;
    cuComplex( float a, float b ) : r(a), i(b) {}
    __device__ float magnitude2(void)
    {
        return r*r + i*i;
    }
    __device__ cuComplex operator*(const cuComplex&a){
        return cuComplex(r*a.r - i*a.i, i*a.r + r*a.i);
    }
    __device__ cuComplex operator+(const cuComplex&a){
        return cuComplex(r+a.r,i+a.i);
    }
    __device__ int julia(int x, int y){
        const float scale = 1.5;
        float jx = scale * float(DIM/2-x)/(DIM/2);
        float jy = scale * (float)(DIM/2 - y)/(DIM/2);
        cuComplex c(-0.8, 0.156);
        cuComplex a(jx, jy);
        
    }
};




int main(){
    return 0;
}