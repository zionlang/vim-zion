if exists("b:current_syntax")
	finish
endif

syntax keyword zionStatement return var let __unreachable__ fn macro
highlight link zionStatement Statement

"syntax match zionTypedef "\v<type>"
"syntax match zionTypedef "\v<tag>"

syntax keyword zionTypedef has is matches struct as where type
highlight link zionTypedef Typedef

syntax keyword zionKeyword
	\ and
	\ assert
	\ break
	\ continue
	\ defer
	\ do
	\ for
	\ gc
	\ in
	\ not
	\ or
	\ while
	\ with

highlight link zionKeyword Keyword

syntax keyword zionConditional if else elif match
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
	\ resize
	\ len
	\ typeid
	\ static_print
	\ breakpoint
	\ sizeof
	\ typeinfo
	\ join
	\ strip
	\ alloc
	\ concat
	\ hash
	\ wcstombs
	\ panic
    \ split
	\ c_str
	\ __int__
	\ __getslice__
	\ __iter__
	\ __next__
	\ __float__
	\ __get_typeid__
	\ __not__
	\ __box__
	\ __unbox__
	\ __finalize__
	\ __mod__
	\ __plus__
	\ __bitwise_or__
	\ __bitwise_and__
	\ __backslash__
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
	\ __shl__
	\ __shr__
highlight link zionFunction Function

syntax keyword zionType
	\ int
	\ bool
	\ float
	\ Vector
	\ Map
	\ void
	\ str
	\ uuid
	\ UUID
	\ bytes
	\ signed
	\ unsigned
	\ FILE
	\ var_t
	\ type_info_t
	\ integer
	\ signed_t
	\ unsigned_t
	\ int
	\ typeid
	\ uint
	\ size_t
	\ ssize_t
	\ uint
	\ char
	\ int8
	\ uint8
	\ int16
	\ uint16
	\ int32
	\ uint32
	\ int64
	\ uint64
	\ float

syntax match zionType "\v<any>( +<\w+>)?"
syntax match zionType "\[[^\]]+\]"
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
syntax match zionTesting "\v# expect: .*"
syntax match zionTesting "\v# reject: .*"
syntax match zionTesting "\v# error: .*"
syntax match zionTesting "\v# unseen: .*"
highlight link zionTesting Operator

let b:current_syntax = "zion"
