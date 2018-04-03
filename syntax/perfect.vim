" Perfect syntax file
" Language: Perfect
" Maintainer: Antoine Gagné <antoine.gagne.2@ulaval.ca>
" Last Change: Mar 30 2018

if version < 600
  syntax clear
elseif exists("b:current_syntax")
  finish
endif

" keywords
syntax keyword PerfectKeywords abstract absurd after any
syntax keyword PerfectKeywords anything as assert associative
syntax keyword PerfectKeywords axiom begin build
syntax keyword PerfectKeywords catch change commutative 
syntax keyword PerfectKeywords confined const decrease deferred
syntax keyword PerfectKeywords define done early end enum
syntax keyword PerfectKeywords exempt exists false fi final float
syntax keyword PerfectKeywords for forall from function ghost
syntax keyword PerfectKeywords goto has heap highest if idempotent
syntax keyword PerfectKeywords identity implements import in
syntax keyword PerfectKeywords inherits int interface internal
syntax keyword PerfectKeywords invariant is it keep let like
syntax keyword PerfectKeywords limited loop lowest map nonmember
syntax keyword PerfectKeywords null of on opaque operator out over
syntax keyword PerfectKeywords pair par pass post pragma pre proof
syntax keyword PerfectKeywords property redefine ref
syntax keyword PerfectKeywords repeated require result satisfy
syntax keyword PerfectKeywords schema selector self
syntax keyword PerfectKeywords storable super supports tag that
syntax keyword PerfectKeywords then those throw total trace triple
syntax keyword PerfectKeywords true try until value var via
syntax keyword PerfectKeywords when within yield

" identifiers
syntax keyword PerfectStatement class schema function nextgroup=PerfectIdentifiers skipwhite
syntax match PerfectIdentifiers /\(\!\)\?\(\w\|_\)\+\(\d\|\w\|_\)*/ display contained

" types
syntax keyword PerfectTypes map set int
syntax keyword PerfectTypes char bool void
syntax keyword PerfectTypes real byte rank
syntax keyword PerfectTypes bag seq string

" comments
syntax keyword PerfectTodo contained TODO FIXME NOTE XXX WARNING
syntax match PerfectComments "//.*$" contains=PerfectTodo

" strings
syntax match PerfectSpecialCharacter contained "\(\\\([abfnrtv\\`\"]\|(\(1[0-2][0-7]\|0\d\d\))\)\)"
syntax match PerfectRegularCharacter contained "."
syntax region PerfectStrings start=/"/ end=/"/ oneline contains=PerfectSpecialCharacter,@PerfectRegularCharacter

" characters
syntax match PerfectCharacter "`\(\\\([abfnrtv\\`\"]\|(\(1[0-2][0-7]\|0\d\d\))\)\|.\)`"

" operators
syntax match PerfectOperators "<="
syntax match PerfectOperators ">="
syntax match PerfectOperators "<<"
syntax match PerfectOperators ">>"
syntax match PerfectOperators "<<="
syntax match PerfectOperators ">>="
syntax match PerfectOperators "<=="
syntax match PerfectOperators "==>"
syntax match PerfectOperators "<==>"
syntax match PerfectOperators "||"
syntax match PerfectOperators "\~\~"
syntax match PerfectOperators "\^="
syntax match PerfectOperators ":-"
syntax match PerfectOperators "::"
syntax match PerfectOperators "->"
syntax match PerfectOperators "<-"
syntax match PerfectOperators "<\->"
syntax match PerfectOperators "++"
syntax match PerfectOperators "--"
syntax match PerfectOperators "\*\*"
syntax match PerfectOperators "##"
syntax match PerfectOperators "\.\."
syntax match PerfectOperators "\.\.\."

" integers
syntax match PerfectNumbers '\<-\?\d\(_\?\d\)*\>'
syntax match PerfectNumbers '\<0[Xx][0-9A-Fa-f]\(_\?[0-9A-Fa-f]\)*\>'
syntax match PerfectNumbers '\<0[Bb][01]\(_\?[01]\)*\>'

" reals
syntax match PerfectReal '\<-\?\d\(_\?\d\)*\([Ee]-\?\d\(_\?\d\)*\)\>'
syntax match PerfectReal '\<-\?\d\(_\?\d\)*\(\.\d\(_\?\d\)*\([Ee]-\?\d\(_\?\d\)*\)\?\)\>'

highlight default link PerfectTodo Todo
highlight default link PerfectComments Comment
highlight default link PerfectKeywords Keyword
highlight default link PerfectTypes Type
highlight default link PerfectIdentifiers Function
highlight default link PerfectOperators Operator
highlight default link PerfectNumbers Number
highlight default link PerfectStrings String
highlight default link PerfectSpecialCharacter SpecialChar
highlight default link PerfectCharacter Character
highlight default link PerfectReal Float
highlight default link PerfectStatement Statement

let b:current_syntax = "perfect"
