// RUN: clang-format -style="{AlignConsecutiveAssignments: true}" %s \
// RUN: | FileCheck -strict-whitespace %s

// CHECK: {{def a : b<c, \[{[[:space:]]  int x = 1;[[:space:]]  int abcd = 2;[[:space:]]}]>;}}
def a : b<c, [{
  int x = 1;
  int abcd = 2;
}]>;