// RUN: clang-format -style="{InsertBraces: true}" %s \
// RUN: | FileCheck -strict-whitespace %s

// CHECK: {{^if \!add\(a\, b\) then {[[:space:]].*[[:space:]]}$}}
if !add(a,b) then
  int a = 1;

// CHECK: {{^if\ P\.HasExtDPP then {[[:space:]].*[[:space:]].*[[:space:]]  }[[:space:]]}$}}
if P.HasExtDPP then
  def _e32_dpp : VOP_DPP_Pseudo<opName, P> {
    let VOPC = 1;
  }

// CHECK: {{^foreach S.*[[:space:]].*[[:space:]]}$}}
foreach S = [8, 16, 32] in
  def CMPSdi_instrSet : MxCmp_RI_instr<!cast<MxType>("MxTypeInstrSel")>;

// CHECK: {{let b = 1 in {[[:space:]].*{[[:space:]].*[[:space:]]  }[[:space:]]}}}
let b = 1 in
  let a = [c] in {
    def CALLpcrel32 : Ii32<0xE8, RawFrm, (outs), "call\t${dst:call}", []>;
  }

