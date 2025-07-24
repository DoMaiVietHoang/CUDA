#include <torch/extension.h>

// Sửa float → double
torch::Tensor mymuladd(torch::Tensor a, torch::Tensor b, double c) {
    TORCH_CHECK(a.sizes() == b.sizes(), "Input tensors must have the same shape");
    return a * b + c;
}

// Sửa float → float (vẫn giữ là float trong schema)
TORCH_LIBRARY(extension_cpp, m) {
    m.def("mymuladd(Tensor a, Tensor b, float c) -> Tensor");
}

TORCH_LIBRARY_IMPL(extension_cpp, CPU, m) {
    m.impl("mymuladd", mymuladd);
}
