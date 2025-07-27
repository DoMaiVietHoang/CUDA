# Test extension
import mymuladd
import torch

# Giả sử muladd.cpp có function muladd
a = torch.randn(5)
b = torch.randn(5) 
c = torch.randn(5)

result = mymuladd.muladd(a, b, c)  # a * b + c
print(result)