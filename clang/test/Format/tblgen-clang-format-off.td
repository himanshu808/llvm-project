// RUN: clang-format -style="{AlignConsecutiveAssignments: true}" %s \
// RUN: | FileCheck -strict-whitespace %s

// CHECK: {{class C {[[:space:]]  let a  = 1;[[:space:]]  let bb = 1;[[:space:]].*[[:space:]]  let c = 1;[[:space:]]}}
// CHECK: {{  let dd = 1;[[:space:]].*[[:space:]]  let e  = 1;[[:space:]]  let ff = 1;[[:space:]]}}}
class C {
  let a = 1;
  let bb = 1;
  // clang-format off
  let c = 1;
  let dd = 1;
  // clang-format on
  let e = 1;
  let ff = 1;
}