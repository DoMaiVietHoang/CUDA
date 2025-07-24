from setuptools import setup
from torch.utils import cpp_extension

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
            ]
        )
    ],
    cmdclass={'build_ext': cpp_extension.BuildExtension}
)