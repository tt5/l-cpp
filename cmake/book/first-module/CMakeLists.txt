cmake_minimum_required(VERSION 3.30)
#set(CMAKE_CXX_COMPILER "/home/n/miniconda3/bin/g++")
#project("Hello" LANGUAGE CXX)
#/usr/lib/llvm-19/bin

set(CMAKE_CXX_COMPILER "/usr/bin/clang++-19")
set(CMAKE_C_COMPILER "/usr/bin/clang-19")
set(CMAKE_CXX_FLAGS "-stdlib=libc++")
set(CMAKE_EXE_LINKER_FLAGS "-stdlib=libc++")
set(CMAKE_SHARED_LINKER_FLAGS "-stdlib=libc++")


set(CMAKE_EXPERIMENTAL_CXX_IMPORT_STD "0e5b6991-d74f-4b3d-a41c-cf096e0b2508")
set(CMAKE_CXX_MODULE_STD ON)
set(CMAKE_CXX_SCAN_FOR_MODULES ON)

project(Hello LANGUAGES CXX)
include(CMakePrintHelpers)


set(CMAKE_CXX_STANDARD 23)
set(CMAKE_CXX_STANDARD_REQUIRED ON)
#set(CMAKE_CXX_EXTENSIONS OFF)
#set(CMAKE_EXPERIMENTAL_CXX_IMPORT_STD ON)


#set(GCC_VERSION "some")
#EXECUTE_PROCESS( COMMAND gcc -dumpversion GCC_VERSION )

cmake_print_variables(CMAKE_CXX_COMPILER_VERSION)
cmake_print_variables(CXX_MODULE_STD)

add_executable(Hello hello.cpp)
target_compile_features(Hello PRIVATE cxx_std_23) 
file(GLOB_RECURSE IMPORTS CONFIGURE_DEPENDS import/*.cpp)
target_sources(Hello
  PUBLIC
    FILE_SET all_my_modules TYPE CXX_MODULES FILES
    ${IMPORTS}
)
