// RUN: clang-format -style="{RemoveBracesLLVM: true}" %s \
// RUN:   | FileCheck -strict-whitespace %s


// CHECK: {{^if \!add\(a\, b\) then[[:space:]].*\;$}}
if !add(a,b) then {
  int a = 1;
}

// CHECK: {{^if P\.HasExtDPP then {[[:space:]].*[[:space:]].*[[:space:]]  }[[:space:]]}$}}
if P.HasExtDPP then {
  def _e32_dpp : VOP_DPP_Pseudo<opName, P> {
    let VOPC = 1;
  }
}

// CHECK: {{^foreach S.* in[[:space:]].*\;[[:space:]]$}}
foreach S = [8, 16, 32] in {
  def CMPSdi_instrSet : MxCmp_RI_instr<!cast<MxType>("MxTypeInstrSel")>;
}
