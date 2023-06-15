// RUN: clang-format -style="{SeparateDefinitionBlocks: Always}" %s \
// RUN: | FileCheck -strict-whitespace %s

// CHECK: {{^def.*}[[:space:]][[:space:]]class.*[[:space:]].*[[:space:]]}[[:space:]][[:space:]]multiclass}}
def A#"abcd":B { let new_var = [1, 2]; }
class C {
    int c = !add(x, y);
}
multiclass Q {
    def D:C {
        int c = 1;
    }
}