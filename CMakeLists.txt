cmake_minimum_required(VERSION 3.18)

project(llvm-cov-demo)

set(CMAKE_C_STANDARD 99)
set(CMAKE_C_STANDARD_REQUIRED True)

add_compile_options(-Wall -Wextra -pedantic -Werror -g --coverage)
add_link_options(--coverage)

enable_testing()

add_subdirectory(src)
