#include "llvm/Support/CommandLine.h"
#include "llvm/Support/InitLLVM.h"
#include "llvm/Support/SourceMgr.h"
#include "llvm/Support/MemoryBuffer.h"
#include "llvm/TableGen/Error.h"
#include "llvm/TableGen/TGLexer.h"
#include <iostream>

using namespace llvm;


static cl::opt<std::string> InputFilename(cl::Positional,
                                          cl::desc("<input file>"));

static cl::list<std::string>
    MacroNames("D", cl::desc("Name of the macro to be defined"),
               cl::value_desc("macro name"), cl::Prefix);


int main(int argc, char **argv) {
  InitLLVM X(argc, argv);
  cl::ParseCommandLineOptions(argc, argv, "tablegen formatter\n");

  ErrorOr<std::unique_ptr<MemoryBuffer>> FileOrErr =
      MemoryBuffer::getFileOrSTDIN(InputFilename, /*IsText=*/true);

  SrcMgr.AddNewSourceBuffer(std::move(*FileOrErr), SMLoc());

  TGLexer lexer(SrcMgr, MacroNames);
  lexer.Lex();

  while (lexer.getCode() != tgtok::Eof) {
    std::cout << lexer.getCode() << std::endl;
    lexer.Lex();
  }

  return 0;
}
