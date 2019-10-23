if exists("b:current_syntax")
	finish
endif

syntax keyword zionStatement return var let __unreachable__ fn fix
highlight link zionStatement Statement

syntax keyword zionTypedef has is as struct data newtype instance class default
highlight link zionTypedef Typedef

highlight link zionKeyword Keyword

syntax keyword zionConditional if else elif match
highlight link zionConditional Conditional

syntax match zionBang /\!/
highlight link zionBang Error

syntax match zionDollar /\$[0-9]*/
highlight link zionDollar Statement

syntax match zionNumber /\v<[0-9]+>/
highlight link zionNumber Number

syntax keyword zionPreproc import link pkg export
highlight link zionPreproc Preproc

" To generate the basic list of functions for syntax highlighting, run this occasionally:
" grep -o -Ee '\bfn [a-z_0-9]+\b' lib/std.zion | sort | uniq | awk '{print "\t\t\\ " $2}'
syntax keyword zionFunction
		\ abs
		\ alloc
		\ append
		\ cap
		\ chomp
		\ compare
		\ compose
		\ concat
		\ enumerate
		\ filter
		\ fmap
		\ from_int
		\ get
		\ get_indexed_item
		\ get_slice_from
		\ get_slice_from_to
		\ has_prefix
		\ has_substring
		\ has_suffix
		\ id
		\ in
		\ insert
		\ float
		\ int
		\ isspace
		\ isdigit
		\ isalpha
		\ islower
		\ isupper
		\ tolower
		\ toupper
		\ iter
		\ join
		\ len
		\ load_value
		\ map
		\ max
		\ max_bound
		\ min
		\ min_bound
		\ negate
		\ new
		\ not
		\ not_in
		\ panic
		\ print
		\ putch
		\ range
		\ remove
		\ replace
		\ repr
		\ reserve
		\ reset
		\ resize
		\ resource_acquired
		\ serialize
		\ set_indexed_item
		\ store_value
		\ str
		\ strip
		\ split
		\ strlen
		\ strstr_index
		\ vector
highlight link zionFunction Function

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

syntax keyword zionDataCtor
	\ Just
	\ Nothing

highlight link zionDataCtor Type
syntax keyword zionType
	\ Int
	\ Char
	\ Bool
	\ Float
	\ Vector
	\ Map
	\ Set
	\ String
	\ Either
	\ Maybe
	\ Eq
	\ Ord
	\ Num
	\ Ref

highlight link zionType Type

" highlight link zionMultiLineComment Comment

syntax match zionComment "\v#.*$"
highlight link zionComment Comment

syntax keyword zionConstant True False null stdin stdout stderr Left Right
highlight link zionConstant Constant

" syntax keyword zionOperator and or not in
syntax match zionOperator "\v\*"
syntax match zionOperator "\v\;"
syntax match zionOperator "\v\|"
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

syntax region zionChar start=/\v'/ skip=/\v\\./ end=/\v'/
highlight link zionChar String

syntax match zionTesting "\v# test: .*"
syntax match zionTesting "\v# expect: .*"
syntax match zionTesting "\v# reject: .*"
syntax match zionTesting "\v# error: .*"
highlight link zionTesting Operator

syntax region zionMultiComment start="/\*" end="\*/"
hi def link zionMultiComment Comment

let b:current_syntax = "zion"
