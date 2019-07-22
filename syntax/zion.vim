if exists("b:current_syntax")
	finish
endif

syntax keyword zionStatement return var let __unreachable__ fn fix
highlight link zionStatement Statement

syntax keyword zionTypedef has is as struct data newtype instance class
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

syntax keyword zionPreproc import link pkg export
highlight link zionPreproc Preproc

syntax keyword zionFunction
			\ __backslash__
			\ __bitwise_and__
			\ __bitwise_or__
			\ __getslice__
			\ __gt__
			\ __gte__
			\ __hash__
			\ __ineq__
			\ __int__
			\ __lt__
			\ __lte__
			\ __minus__
			\ __mod__
			\ __negative__
			\ __next__
			\ __not__
			\ __plus__
			\ __positive__
			\ __shl__
			\ __shr__
			\ __times__
			\ __unbox__
			\ alloc
			\ append
			\ breakpoint
			\ c_str
			\ concat
			\ enumerate
			\ hash
			\ iter
			\ join
			\ len
			\ main
			\ new
			\ panic
			\ print
			\ reserve
			\ resize
			\ sizeof
			\ split
			\ static_print
			\ strip
			\ typeid
			\ typeinfo
			\ typeof
			\ wcstombs
highlight link zionFunction Function

syntax keyword zionType
	\ Int
	\ Char
	\ Bool
	\ Float
	\ Vector
	\ Map
	\ String
	\ Functor
	\ Either
	\ Maybe
	\ Eq
	\ Ord
	\ Num
	\ Addition
	\ Ref

syntax match zionType "\v<any>( +<\w+>)?"
syntax match zionType "\[[^\]]+\]"
highlight link zionType Type

" highlight link zionMultiLineComment Comment

syntax match zionComment "\v#.*$"
highlight link zionComment Comment

syntax keyword zionConstant True False null stdin stdout stderr Left Right
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

syntax match zionTesting "\v# test: .*"
syntax match zionTesting "\v# expect: .*"
syntax match zionTesting "\v# reject: .*"
syntax match zionTesting "\v# error: .*"
highlight link zionTesting Operator

syntax region zionMultiComment start="/\*" end="\*/"
hi def link zionMultiComment Comment

let b:current_syntax = "zion"
