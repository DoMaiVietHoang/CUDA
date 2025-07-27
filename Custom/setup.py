# setup.py
from setuptools import setup
from torch.utils import cpp_extension
import torch
import os

# Lấy đường dẫn thư viện PyTorch
torch_lib_path = os.path.join(os.path.dirname(torch.__file__), 'lib')

setup(
    name="extension_cpp",
    ext_modules=[
        cpp_extension.CppExtension(
            "extension_cpp",
            ["muladd.cpp"],
            extra_compile_args=[
                "-Wno-unused-variable",
                "-Wno-unused-function", 
                "-O2"
            ],
            library_dirs=[torch_lib_path],
            runtime_library_dirs=[torch_lib_path]
        )
    ],
    cmdclass={'build_ext': cpp_extension.BuildExtension}
)