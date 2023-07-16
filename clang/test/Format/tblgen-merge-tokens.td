// RUN: clang-format -style="{ColumnLimit: 20}" %s \
// RUN: | FileCheck -strict-whitespace %s

// CHECK: {{def a : b<\([[:space:]]    c src:\$dst,[[:space:]]    f:\$g\)>;}}
def a:b<(c src:$dst, f:$g)>;

// CHECK: {{int newVariable =[[:space:]]    \!add\(x, y\);}}
int newVariable = !add(x, y);