if exists("b:current_syntax")
    finish
endif

" Keywords
syntax keyword potionKeyword loop times to while
syntax keyword potionKeyword if elsif else
syntax keyword potionKeyword class return

" Functions
syntax keyword potionFunction print join string

" Comments
syntax match potionComment "\v#.*$"

" Operators
syntax match potionOperator "\v\="
syntax match potionOperator "\v\*"
syntax match potionOperator "\v/"
syntax match potionOperator "\v\+"
syntax match potionOperator "\v-"
syntax match potionOperator "\v\?"
syntax match potionOperator "\v\*\="
syntax match potionOperator "\v/\="
syntax match potionOperator "\v\+\="
syntax match potionOperator "\v-\="

" Numbers
syntax match potionNumber "\v[0-9]+" "integers
syntax match potionNumber "\v[0-9]+\.[0-9]+" "floats
syntax match potionNumber "\v\0x([0-9]|[a-f])+" "hex
syntax match potionNumber "\v[0-9]+\.?[0-9]*e([+]|[-])[0-9]+" "scientific notation

" Highlight everything listed above
highlight link potionNumber Number
highlight link potionOperator Operator
highlight link potionComment Comment
highlight link potionFunction Function
highlight link potionKeyword Keyword

let b:current_syntax = "potion"
