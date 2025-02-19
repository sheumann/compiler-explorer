#/usr/bin/bash

LANGREF_PATH=$(pwd)/vendor/LangRef.html

[ -f "$LANGREF_PATH" ] || curl https://llvm.org/docs/LangRef.html -o "$LANGREF_PATH"

npx node --no-warnings=ExperimentalWarning --import=tsx docenizer-llvm.ts > ../../../lib/asm-docs/generated/asm-docs-llvm.ts
