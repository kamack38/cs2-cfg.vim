if exists("b:did_ftplugin")
  finish
endif
let b:did_ftplugin = 1

let s:cpo_save = &cpo
set cpo&vim


setlocal iskeyword=!,$,%,#,*,+,-,.,/,:,<,=,>,?,_,a-z,A-Z,48-57,128-247,124,126,38,94
setlocal suffixesadd=.cfg
setlocal commentstring=//\ %s
setlocal formatoptions-=t


let &cpo = s:cpo_save
unlet! s:cpo_save
