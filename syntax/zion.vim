if exists("b:current_syntax")
	finish
endif

syntax keyword zionStatement return var let
syntax match zionStatement "\v<def>"
highlight link zionStatement Statement

syntax match zionTypedef "\v<type>"
syntax match zionTypedef "\v<tag>"

syntax keyword zionTypedef has is matches struct as
highlight link zionTypedef Typedef

syntax keyword zionKeyword while for break continue pass and or not in
highlight link zionKeyword Keyword

syntax keyword zionConditional with when if else elif match case
highlight link zionConditional Conditional

syntax match zionNumber /\v<[0-9]+>/
syntax match zionNumber /\v<[0-9]+r>/
highlight link zionNumber Number

syntax keyword zionPreproc get link module to std global
highlight link zionPreproc Preproc

syntax keyword zionFunction main
	\ print
	\ append
	\ reserve
	\ input
	\ resize
	\ len
	\ typeid
	\ assert
	\ static_print
	\ breakpoint
	\ sizeof
	\ typeinfo
	\ join
	\ strip
	\ alloc
	\ __int__
	\ __float__
	\ __get_typeid__
	\ __not__
	\ __box__
	\ __finalize__
	\ __mod__
	\ __plus__
	\ __minus__
	\ __negative__
	\ __divide__
	\ __positive__
	\ __times__
	\ __eq__
	\ __ineq__
	\ __lt__
	\ __lte__
	\ __gt__
	\ __gte__
highlight link zionFunction Function

syntax keyword zionType
	\ int
	\ bool
	\ float
	\ void
	\ str
	\ char
	\ utf8
	\ bytes
	\ signed
	\ unsigned
	\ FILE
	\ var_t
	\ type_info_t
	\ integer_t
	\ signed_t
	\ unsigned_t
	\ int_t
	\ typeid_t
	\ uint_t
	\ size_t
	\ ssize_t
	\ uint_t
	\ char_t
	\ wchar_t
	\ int8_t
	\ uint8_t
	\ int16_t
	\ uint16_t
	\ int32_t
	\ uint32_t
	\ int64_t
	\ uint64_t
	\ float_t
	\ bool_t
	\ bytes_t
	\ true_t
	\ false_t
syntax match zionType "\v<any>( +<\w+>)?"
highlight link zionType Type

syntax match zionComment "\v#.*$"
highlight link zionComment Comment

syntax keyword zionConstant true false null stdin stdout stderr
highlight link zionConstant Constant

" syntax keyword zionOperator and or not in
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
