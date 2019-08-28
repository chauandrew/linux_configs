

if exists('b:current_syntax')
  finish
endif

let s:cpo_save = &cpoptions
set cpoptions&vim


syntax match column6 /.\{-}\(,\|$\)/ nextgroup=escaped_column0,column0
syntax match escaped_column6 / *"\([^"]*""\)*[^"]*" *\(,\|$\)/ nextgroup=escaped_column0,column0
syntax match column5 /.\{-}\(,\|$\)/ nextgroup=escaped_column6,column6
syntax match escaped_column5 / *"\([^"]*""\)*[^"]*" *\(,\|$\)/ nextgroup=escaped_column6,column6
syntax match column4 /.\{-}\(,\|$\)/ nextgroup=escaped_column5,column5
syntax match escaped_column4 / *"\([^"]*""\)*[^"]*" *\(,\|$\)/ nextgroup=escaped_column5,column5
syntax match column3 /.\{-}\(,\|$\)/ nextgroup=escaped_column4,column4
syntax match escaped_column3 / *"\([^"]*""\)*[^"]*" *\(,\|$\)/ nextgroup=escaped_column4,column4
syntax match column2 /.\{-}\(,\|$\)/ nextgroup=escaped_column3,column3
syntax match escaped_column2 / *"\([^"]*""\)*[^"]*" *\(,\|$\)/ nextgroup=escaped_column3,column3
syntax match column1 /.\{-}\(,\|$\)/ nextgroup=escaped_column2,column2
syntax match escaped_column1 / *"\([^"]*""\)*[^"]*" *\(,\|$\)/ nextgroup=escaped_column2,column2
syntax match column0 /.\{-}\(,\|$\)/ nextgroup=escaped_column1,column1
syntax match escaped_column0 / *"\([^"]*""\)*[^"]*" *\(,\|$\)/ nextgroup=escaped_column1,column1


hi def link column0 Comment   " grey 
hi def link column1 Special   " blue
hi def link column2 Type      " yellow
hi def link column3 Statement " purple
hi def link column4 Keyword   " red
hi def link column5 Normal    " white
hi def link column6 Character " green

let b:current_syntax = 'log'

let &cpoptions = s:cpo_save
unlet s:cpo_save

