" syntax highlighting for idris (idris-lang.org)
"
" Heavily modified version of the haskell syntax 
" highlighter to support idris.
"
" author: raichoo (raichoo@googlemail.com)
" date: Aug 10 2013


" syn match idrisTypeSigType "\(:\s*\)\@<=(w+"
" syn match idrisType "\
syn match idrisModule "\<\(module\|namespace\)\>"
syn match idrisImport "\<import\>"
syn match idrisRefl "\<refl\>"
syn match idrisStructure "\<\(class\|\(co\)\?data\|instance\|where\|record\|dsl\)\>"
syn match idrisVisibility "\<\(public\|abstract\|private\)\>"
syn match idrisBlock "\<\(parameters\|mutual\|postulate\|using\)\>"
syn match idrisAnnotation "\<\(total\|partial\|auto\|impossible\|static\|implicit\)\>"
syn match idrisStatement "\<\(do\|case\|of\|rewrite\|let\|in\|with\)\>"
syn match idrisSyntax "\(pattern \+\|term \+\)\?syntax"
syn match idrisConditional "\<\(if\|then\|else\)\>"
syn match idrisTactic contained "\<\(intros\?\|rewrite\|exact\|refine\|trivial\|let\|focus\|try\|compute\|solve\|attack\|reflect\|fill\|applyTactic\)\>"
syn match idrisNumber "\<[0-9]\+\>\|\<0[xX][0-9a-fA-F]\+\>\|\<0[oO][0-7]\+\>"
syn match idrisFloat "\<[0-9]\+\.[0-9]\+\([eE][-+]\=[0-9]\+\)\=\>"
syn match idrisDelimiter  "(\|)\|\[\|\]\|,\|;\|_\|{\|}"
syn match idrisInfix "\<\(prefix\|infix\|infixl\|infixr\)\>"
syn match idrisOperators "\([-!#$%&\*\+./<=>\?@\\^|~:]\|\<_\>\)"

syn match idrisType "\<\([A-Z][a-zA-Z0-9_]*\|_|_\)\>"

syn match idrisModpath "\u\(\w\|'\)*\."
syn match idrisModPath "\(import *\)\@<=\(\u\(\w\|'\)*\.\)*\u\(\w\|'\)*"
syn match idrisModPath "\(module *\)\@<=\(\u\(\w\|'\)*\.\)*\u\(\w\|'\)*"
" syn match idrisTypeSigType "\(\(:\).*\) \@<=\(\u\(\w\|'\)*\.\)*\u\(\w\|'\)*"

syn match idrisTypeSigType "\(\(:\).*\) \@<=\<\([A-Z][a-zA-Z0-9_]*\|_|_\)\>"

syn match idrisTypeclass "\(\(instance\|class\).*\)\@<=\(\u\(\w\|'\)*\.\)*\u\(\w\|'\)*"
" syn match idrisTypeclassTypeArg "\(\(instance\|class\) *\)\(\u\(\w\|'\)*\.\)*\u\(\w\|'\)* *\@<=\(\)\(\u\(\w\|'\)*\.\)*\u\(\w\|'\)*"

syn match idrisModPath "\(data *\)\@<=\u\(\w\|'\)*"
syn match idrisLineComment "---*\([^-!#$%&\*\+./<=>\?@\\^|~].*\)\?$"
syn match idrisMetaVar "?[a-z][A-Za-z0-9_]\+'*"
syn match idrisLink "%\(lib\|link\|include\)"
syn match idrisDirective "%\(access\|default\|assert_total\)"
syn match idrisDSL "\(lambda\|variable\|\index_first\|index_next\)"
syn match idrisChar "'[^'\\]'\|'\\.'\|'\\u[0-9a-fA-F]\{4}'"
syn match idrisBacktick "`[A-Za-z][A-Za-z0-9_]*`"
syn region idrisString start=+"+ skip=+\\\\\|\\"+ end=+"+
syn region idrisBlockComment start="{-" end="-}" contains=idrisBlockComment
syn region idrisProofBlock start="\(default\s\+\)\?\(proof\|tactics\) *{" end="}" contains=idrisTactic

syn match idrisTypesigName "^[A-Za-z]+"

highlight def link idrisTypesigName Function
highlight def link idrisTypeclass Identifier
highlight def link idrisTypeSigType Include
highlight def link idrisModPath Include
highlight def link idrisImport Keyword
highlight def link idrisModule Keyword
highlight def link idrisStructure Keyword
highlight def link idrisStatement Statement
highlight def link idrisDSL Statement
highlight def link idrisBlock Statement
highlight def link idrisAnnotation Statement
highlight def link idrisSyntax Statement
highlight def link idrisVisibility Function
highlight def link idrisConditional Conditional
highlight def link idrisProofBlock Macro
highlight def link idrisRefl Macro
highlight def link idrisTactic Identifier
highlight def link idrisLink Statement
highlight def link idrisDirective Statement
highlight def link idrisNumber Number
highlight def link idrisFloat Float
highlight def link idrisDelimiter Keyword
highlight def link idrisInfix PreProc
highlight def link idrisOperators Operator
highlight def link idrisType Float
highlight def link idrisLineComment Comment
highlight def link idrisBlockComment Comment
highlight def link idrisMetaVar Identifier
highlight def link idrisString String
highlight def link idrisChar String
highlight def link idrisBacktick Operator
