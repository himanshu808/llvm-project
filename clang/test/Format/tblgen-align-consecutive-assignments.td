// RUN: clang-format -style="{AlignConsecutiveAssignments: true}" %s \
// RUN: | FileCheck -strict-whitespace %s

// CHECK: {{^string abc  = "abc";[[:space:]]int a       = 9;[[:space:]]bit is_true = true;}}
string abc = "abc";
int a = 9;
bit is_true = true;


// CHECK: {{class.*[[:space:]]  let a  = 1;[[:space:]]  let bb = 1;[[:space:]]}}}
class C {
  let a = 1;
  let bb = 1;
}