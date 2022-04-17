" File:       asterisk_blue.vim
" Maintainer: vuchvu <akisamegane7100@gmail.com>
" Modified:   {{ modified }}
" License:    MIT


if !has('gui_running') && &t_Co < 256
  finish
endif

hi clear
if exists('syntax_on')
  syntax reset
endif

let g:colors_name = 'asterisk_blue'

{{ light_rules }}

if has('nvim')
  {{ light_neovim_term_defs }}
else
  {{ light_vim_term_defs }}
endif

{{ links }}

if !has('nvim')
  hi! link SpecialKey Whitespace
endif
