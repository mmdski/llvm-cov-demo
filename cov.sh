#!/bin/zsh
# cov.sh
rm -r coverage
mkdir coverage
cd coverage
clang -Wall -Wextra -pedantic -Werror -g -std=c99 --coverage ../src/hello.c -o hello
./hello
llvm-gcov.sh ../src/hello.c
lcov --gcov-tool $PWD/../llvm-gcov.sh --capture --directory . --output-file coverage.info
genhtml coverage.info --output-directory out
