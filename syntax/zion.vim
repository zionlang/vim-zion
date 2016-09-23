if exists("b:current_syntax")
	finish
endif

syntax keyword zionStatement return var
syntax match zionStatement "\v<def>"
highlight link zionStatement Statement

syntax match zionTypedef "\v<type>"
syntax match zionTypedef "\v<type> +<alias>"
syntax match zionTypedef "\v<type> +<def>"
syntax match zionTypedef "\v<can> +<be>"

syntax keyword zionTypedef has is matches
highlight link zionTypedef Typedef

syntax keyword zionKeyword while for break continue pass
highlight link zionKeyword Keyword

syntax keyword zionConditional when if else elif match case
highlight link zionConditional Conditional

syntax keyword zionPreproc link module to
highlight link zionPreproc Preproc

syntax keyword zionFunction main print typeid
highlight link zionFunction Function

syntax keyword zionType int str bool float void ref
syntax match zionType "\v<any>( +<\w+>)?"
highlight link zionType Type

syntax match zionComment "\v#.*$"
highlight link zionComment Comment

syntax keyword zionConstant true false null self
highlight link zionConstant Constant

syntax keyword zionOperator and or not in
syntax match zionOperator "\v\*"
syntax match zionOperator "\v\;"
syntax match zionOperator "\v\["
syntax match zionOperator "\v\]"
syntax match zionOperator "\v\{"
syntax match zionOperator "\v\."
syntax match zionOperator "\v\}"
syntax match zionOperator "\v\("
syntax match zionOperator "\v\)"
syntax match zionOperator "\v/"
syntax match zionOperator "\v\+"
syntax match zionOperator "\v-"
syntax match zionOperator "\v\%"
syntax match zionOperator "\v\*\="
syntax match zionOperator "\v/\="
syntax match zionOperator "\v\+\="
syntax match zionOperator "\v-\="
syntax match zionOperator "\v\%\="
syntax match zionOperator "\v\="
syntax match zionOperator "\v\=\="
syntax match zionOperator "\v\!\="
syntax match zionOperator "\v\<"
syntax match zionOperator "\v\>"
syntax match zionOperator "\v\<<"
syntax match zionOperator "\v\>>"
syntax match zionOperator "\v\<\="
syntax match zionOperator "\v\>\="
highlight link zionOperator Operator

syntax region zionString start=/\v"/ skip=/\v\\./ end=/\v"/
highlight link zionString String

syntax match zionTesting "\v# test: skip"
syntax match zionTesting "\v# test: pass"
syntax match zionTesting "\v# error: .*"
syntax match zionTesting "\v# unseen: .*"
highlight link zionTesting Operator

let b:current_syntax = "zion"
