if exists("b:current_syntax")
	finish
endif

syntax keyword zionStatement return var
syntax match zionStatement "\v<def>"
highlight link zionStatement Statement

syntax match zionTypedef "\v<type>"
syntax match zionTypedef "\v<tag>"

syntax keyword zionTypedef has is matches struct
	\ __int__ 
	\ __str__
	\ __int8__
	\ __int16__
	\ __int32__
	\ __int64__
	\ __float__
	\ __bool__
	\ __bytes__
	\ __true__
	\ __false__
	\ __utf8__
highlight link zionTypedef Typedef

syntax keyword zionKeyword while for break continue pass
highlight link zionKeyword Keyword

syntax keyword zionConditional with when if else elif match case
highlight link zionConditional Conditional

syntax keyword zionPreproc link module to
highlight link zionPreproc Preproc

syntax keyword zionFunction main
	\ print
	\ typeid
	\ assert
	\ static_print
	\ typeinfo
	\ __get_typeid__
	\ __not__
	\ __box__
	\ __finalize__
	\ __mod__
	\ __plus__
	\ __minus__
	\ __negative__
	\ __divide__
	\ __eq__
	\ __ineq__
	\ __lt__
	\ __lte_
	\ __gt__
	\ __gte_
highlight link zionFunction Function

syntax keyword zionType int str bool float void ref as
syntax match zionType "\v<any>( +<\w+>)?"
highlight link zionType Type

syntax match zionComment "\v#.*$"
highlight link zionComment Comment

syntax keyword zionConstant true false nil self
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
