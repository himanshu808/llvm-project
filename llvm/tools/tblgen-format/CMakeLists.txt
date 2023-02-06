set(LLVM_LINK_COMPONENTS
   Core
   Support
   TableGen
   )


add_llvm_tool(tblgen-format
  tblgen-format.cpp
   )
