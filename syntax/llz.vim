if exists("b:current_syntax")
	finish
endif

syntax keyword llzStatement return var const let in set call
syntax match llzStatement "\v<fn>"
highlight link llzStatement Statement

syntax match llzTypedef "\v<type>"

syntax keyword llzTypedef struct polymorph
highlight link llzTypedef Typedef

syntax keyword llzKeyword loop break continue
highlight link llzKeyword Keyword

syntax keyword llzConditional if else match
highlight link llzConditional Conditional

syntax keyword llzPreproc link module
highlight link llzPreproc Preproc

syntax keyword llzFunction main print typeid sizeof
highlight link llzFunction Function

syntax keyword llzType __int__ __str__ __bool__ __float__ void
highlight link llzType Type

syntax match llzComment "\v#.*$"
highlight link llzComment Comment

syntax keyword llzConstant nil
highlight link llzConstant Constant

syntax keyword llzOperator
syntax match llzOperator "\v\*"
syntax match llzOperator "\v\;"
syntax match llzOperator "\v\["
syntax match llzOperator "\v\]"
syntax match llzOperator "\v\{"
syntax match llzOperator "\v\."
syntax match llzOperator "\v\}"
syntax match llzOperator "\v\("
syntax match llzOperator "\v\)"
syntax match llzOperator "\v/"
syntax match llzOperator "\v\+"
syntax match llzOperator "\v-"
syntax match llzOperator "\v\%"
syntax match llzOperator "\v\*\="
syntax match llzOperator "\v/\="
syntax match llzOperator "\v\+\="
syntax match llzOperator "\v-\="
syntax match llzOperator "\v\%\="
syntax match llzOperator "\v\="
syntax match llzOperator "\v\=\="
syntax match llzOperator "\v\!\="
syntax match llzOperator "\v\<"
syntax match llzOperator "\v\>"
syntax match llzOperator "\v\<<"
syntax match llzOperator "\v\>>"
syntax match llzOperator "\v\<\="
syntax match llzOperator "\v\>\="
highlight link llzOperator Operator

syntax region llzString start=/\v"/ skip=/\v\\./ end=/\v"/
highlight link llzString String

syntax region llzIdentifier start=/\v'/ skip=/\v\\./ end=/\v'/
highlight link llzIdentifier Identifier

syntax match llzTesting "\v# test: skip"
syntax match llzTesting "\v# test: pass"
syntax match llzTesting "\v# error: .*"
syntax match llzTesting "\v# unseen: .*"
highlight link llzTesting Operator

let b:current_syntax = "llz"
