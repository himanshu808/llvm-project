// RUN: clang-format -style="{ColumnLimit: 100}" %s \
// RUN: | FileCheck -strict-whitespace %s

// CHECK: {{\#ifndef MACRO[[:space:]]\#define MACRO}}
#ifndef MACRO          #define MACRO