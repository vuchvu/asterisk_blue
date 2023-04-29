" NOTE:
" This script is for Pgmnt, template engine for creating Vim color scheme.
" See the official site for more information:
" https://github.com/cocopon/pgmnt.vim

function! s:create_colors(palette) abort
  let p = a:palette
  let c = p.cterm
  let g = p.gui

  let rules = []

  " Rules {{{
  call extend(rules, pgmnt#hi#group(
        \ 'Normal', {
        \   'ctermbg': c.normal_bg,
        \   'ctermfg': c.normal_fg,
        \   'guibg': g.normal_bg,
        \   'guifg': g.normal_fg,
        \ }))
  call extend(rules, pgmnt#hi#group(
        \ 'Boolean', {
        \   'ctermfg': c.pink,
        \   'guifg': g.pink
        \ }))
  call extend(rules, pgmnt#hi#group(
        \ ['ColorColumn', 'CursorColumn', 'CursorLine'], {
        \   'cterm': 'NONE',
        \   'ctermbg': c.cursorline_bg,
        \   'ctermfg': 'NONE',
        \   'guibg': g.cursorline_bg,
        \   'guifg': 'NONE',
        \ }))
  call extend(rules, pgmnt#hi#group(
        \ 'Comment', {
        \   'ctermfg': c.comment_fg,
        \   'guifg': g.comment_fg,
        \ }))
  call extend(rules, pgmnt#hi#group(
        \ 'Conceal', {
        \   'ctermbg': 'NONE',
        \   'ctermfg': 'NONE',
        \   'guibg': 'NONE',
        \   'guifg': 'NONE',
        \ }))
  call extend(rules, pgmnt#hi#group(
        \ 'Conditional', {
        \   'ctermbg': 'NONE',
        \   'ctermfg': c.blue,
        \   'guibg': 'NONE',
        \   'guifg': g.blue,
        \ }))
  call extend(rules, pgmnt#hi#group(
        \ 'Constant', {
        \   'ctermfg': c.blue,
        \   'guifg': g.blue,
        \ }))
  call extend(rules, pgmnt#hi#group(
        \ ['Cursor', 'lCursor', 'CursorIM'], {
        \   'ctermbg': c.cursor_bg,
        \   'ctermfg': c.cursor_fg,
        \   'guibg': g.cursor_bg,
        \   'guifg': g.cursor_fg,
        \ }))
  call extend(rules, pgmnt#hi#group(
        \ 'CursorLineNr', {
        \   'cterm': 'NONE',
        \   'ctermbg': c.cursorline_bg,
        \   'ctermfg': c.yellow,
        \   'guibg': g.cursorline_bg,
        \   'guifg': g.yellow,
        \ }))
  call extend(rules, pgmnt#hi#group(
        \ 'Delimiter', {
        \   'ctermfg': c.normal_fg,
        \   'guifg': g.normal_fg,
        \ }))
  call extend(rules, pgmnt#hi#group(
        \ 'DiffAdd', {
        \   'cterm': 'NONE',
        \   'ctermbg': 'NONE',
        \   'ctermfg': c.green,
        \   'gui': 'NONE',
        \   'guibg': 'NONE',
        \   'guifg': g.green,
        \ }))
  call extend(rules, pgmnt#hi#group(
        \ 'DiffChange', {
        \   'cterm': 'NONE',
        \   'ctermbg': 'NONE',
        \   'ctermfg': 'NONE',
        \   'gui': 'NONE',
        \   'guibg': 'NONE',
        \   'guifg': 'NONE',
        \ }))
  call extend(rules, pgmnt#hi#group(
        \ 'DiffDelete', {
        \   'cterm': 'NONE',
        \   'ctermbg': 'NONE',
        \   'ctermfg': c.pink,
        \   'gui': 'NONE',
        \   'guibg': 'NONE',
        \   'guifg': g.pink,
        \ }))
  call extend(rules, pgmnt#hi#group(
        \ 'DiffText', {
        \   'cterm': 'NONE',
        \   'ctermbg': 'NONE',
        \   'ctermfg': c.blue,
        \   'gui': 'NONE',
        \   'guibg': 'NONE',
        \   'guifg': g.blue,
        \ }))
  call extend(rules, pgmnt#hi#group(
        \ 'Directory', {
        \   'ctermfg': c.blue,
        \   'guifg': g.blue,
        \ }))
  call extend(rules, pgmnt#hi#group(
        \ ['Error', 'ErrorMsg', 'WarningMsg'], {
        \   'ctermbg': c.normal_bg,
        \   'ctermfg': c.pink,
        \   'guibg': g.normal_bg,
        \   'guifg': g.pink,
        \ }))
  call extend(rules, pgmnt#hi#group(
        \ 'EndOfBuffer', {
        \   'ctermbg': 'NONE',
        \   'ctermfg': 'NONE',
        \   'guibg': 'NONE',
        \   'guifg': 'NONE',
        \ }))
  call extend(rules, pgmnt#hi#group(
        \ 'Exception', {
        \   'ctermfg': c.pink,
        \   'guifg': g.pink,
        \ }))
  call extend(rules, pgmnt#hi#group(
        \ ['Float', 'Number'], {
        \   'ctermfg': c.orange,
        \   'guifg': g.orange,
        \ }))
  call extend(rules, pgmnt#hi#group(
        \ ['Folded', 'FoldColumn'], {
        \   'ctermbg': 'NONE',
        \   'ctermfg': c.cyan,
        \   'guibg': 'NONE',
        \   'guifg': g.cyan,
        \ }))
  call extend(rules, pgmnt#hi#group(
        \ ['Function', 'Identifier'], {
        \   'cterm': 'NONE',
        \   'ctermfg': c.yellow,
        \   'guifg': g.yellow,
        \ }))
  call extend(rules, pgmnt#hi#group(
        \ 'Ignore', {
        \   'ctermbg': 'NONE',
        \   'ctermfg': c.comment_fg,
        \   'guibg': 'NONE',
        \   'guifg': g.comment_fg,
        \ }))
  call extend(rules, pgmnt#hi#group(
        \ 'Include', {
        \   'ctermfg': c.blue,
        \   'guifg': g.blue,
        \ }))
  call extend(rules, pgmnt#hi#group(
        \ 'IncSearch', {
        \   'ctermbg': c.normal_bg,
        \   'ctermfg': c.navy,
        \   'guibg': g.normal_bg,
        \   'guifg': g.navy,
        \ }))
  call extend(rules, pgmnt#hi#group(
        \ 'Keyword', {
        \   'ctermfg': c.orange,
        \   'guifg': g.orange,
        \ }))
  call extend(rules, pgmnt#hi#group(
        \ 'label', {
        \   'ctermfg': c.comment_fg,
        \   'guifg': g.comment_fg,
        \ }))
  call extend(rules, pgmnt#hi#group(
        \ 'LineNr', {
        \   'cterm': 'NONE',
        \   'ctermbg': c.normal_bg,
        \   'ctermfg': c.yellow,
        \   'guibg': g.normal_bg,
        \   'guifg': g.yellow,
        \ }))
  call extend(rules, pgmnt#hi#group(
        \ 'MatchParen', {
        \   'ctermbg': c.cyan,
        \   'ctermfg': c.lightgray,
        \   'guibg': g.cyan,
        \   'guifg': g.lightgray,
        \ }))
  call extend(rules, pgmnt#hi#group(
        \ 'ModeMsg', {
        \   'ctermfg': c.blue,
        \   'guifg': g.blue,
        \ }))
  call extend(rules, pgmnt#hi#group(
        \ 'MoreMsg', {
        \   'ctermfg': c.green,
        \   'guifg': g.green,
        \ }))
  call extend(rules, pgmnt#hi#group(
        \ ['NonText', 'Whitespace'], {
        \   'ctermfg': c.whitespace_fg,
        \   'guifg': g.whitespace_fg,
        \ }))
  call extend(rules, pgmnt#hi#group(
        \ 'Number', {
        \   'ctermfg': c.orange,
        \   'guifg': g.orange,
        \ }))
  call extend(rules, pgmnt#hi#group(
        \ 'Operator', {
        \   'ctermfg': c.normal_fg,
        \   'guifg': g.normal_fg,
        \ }))
  call extend(rules, pgmnt#hi#group(
        \ 'Pmenu', {
        \   'ctermbg': c.navy,
        \   'ctermfg': c.lightgray,
        \   'guibg': g.navy,
        \   'guifg': g.lightgray,
        \ }))
  call extend(rules, pgmnt#hi#group(
        \ 'PmenuSbar', {
        \   'ctermbg': c.navy,
        \   'ctermfg': 'NONE',
        \   'guibg': g.navy,
        \   'guifg': 'NONE',
        \ }))
  call extend(rules, pgmnt#hi#group(
        \ 'PmenuSel', {
        \   'ctermbg': c.blue,
        \   'ctermfg': c.white,
        \   'guibg': g.blue,
        \   'guifg': g.white,
        \ }))
  call extend(rules, pgmnt#hi#group(
        \ 'PmenuThumb', {
        \   'ctermbg': c.navy,
        \   'ctermfg': 'NONE',
        \   'guibg': g.navy,
        \   'guifg': 'NONE',
        \ }))
  call extend(rules, pgmnt#hi#group(
        \ 'Precondit', {
        \   'ctermfg': c.blue,
        \   'guifg': g.blue,
        \ }))
  call extend(rules, pgmnt#hi#group(
        \ ['PreProc', 'Define','Macro'], {
        \   'ctermfg': c.navy,
        \   'guifg': g.navy,
        \ }))
  call extend(rules, pgmnt#hi#group(
        \ 'Question', {
        \   'ctermfg': c.green,
        \   'guifg': g.green,
        \ }))
  call extend(rules, pgmnt#hi#group(
        \ 'QuickFixLine', {
        \   'ctermbg': c.cursorline_bg,
        \   'ctermfg': c.blue,
        \   'guibg': g.cursorline_bg,
        \   'guifg': g.blue,
        \ }))
  call extend(rules, pgmnt#hi#group(
        \ 'Repeat', {
        \   'ctermfg': c.navy,
        \   'guifg': g.navy,
        \ }))
  call extend(rules, pgmnt#hi#group(
        \ 'Search', {
        \   'ctermbg': c.navy,
        \   'ctermfg': c.lightgray,
        \   'guibg': g.navy,
        \   'guifg': g.lightgray,
        \ }))
  call extend(rules, pgmnt#hi#group(
        \ 'SignColumn', {
        \   'ctermbg': 'NONE',
        \   'ctermfg': c.yellow,
        \   'guibg': 'NONE',
        \   'guifg': g.yellow,
        \ }))
  call extend(rules, pgmnt#hi#group(
        \ 'Special', {
        \   'ctermfg': c.normal_fg,
        \   'guifg': g.normal_fg,
        \ }))
  call extend(rules, pgmnt#hi#group(
        \ 'SpecialChar', {
        \   'ctermfg': c.specialChar_fg,
        \   'guifg': g.specialChar_fg,
        \ }))
  call extend(rules, pgmnt#hi#group(
        \ 'SpecialKey', {
        \   'ctermfg': c.gray,
        \   'guifg': g.gray,
        \ }))
  call extend(rules, pgmnt#hi#group(
        \ 'SpellBad', {
        \   'ctermfg': c.pink,
        \   'gui': 'undercurl',
        \   'guifg': g.pink,
        \ }))
  call extend(rules, pgmnt#hi#group(
        \ 'SpellCap', {
        \   'ctermfg': c.normal_fg,
        \   'gui': 'undercurl',
        \   'guifg': g.normal_fg,
        \ }))
  call extend(rules, pgmnt#hi#group(
        \ 'SpellLocal', {
        \   'ctermbg': 'NONE',
        \   'ctermfg': c.normal_fg,
        \   'gui': 'undercurl',
        \   'guifg': 'NONE',
        \   'guisp': g.normal_fg,
        \ }))
  call extend(rules, pgmnt#hi#group(
        \ 'SpellRare', {
        \   'ctermfg': c.normal_fg,
        \   'gui': 'undercurl',
        \   'guifg': g.normal_fg,
        \ }))
  call extend(rules, pgmnt#hi#group(
        \ 'Statement', {
        \   'ctermfg': c.blue,
        \   'gui': 'NONE',
        \   'guifg': g.blue,
        \ }))
  call extend(rules, pgmnt#hi#group(
        \ ['StatusLine', 'StatusLineTerm'], {
        \   'cterm': 'NONE',
        \   'ctermbg': c.blue,
        \   'ctermfg': c.white,
        \   'gui': 'NONE',
        \   'guibg': g.blue,
        \   'guifg': g.white,
        \ }))
  call extend(rules, pgmnt#hi#group(
        \ ['StatusLineNC', 'StatusLineTermNC'], {
        \   'ctermbg': c.navy,
        \   'ctermfg': c.cursorline_bg,
        \   'guibg': g.navy,
        \   'guifg': g.cursorline_bg,
        \ }))
  call extend(rules, pgmnt#hi#group(
        \ 'StorageClass', {
        \     'ctermfg': c.navy,
        \     'guifg': g.navy,
        \ }))
  call extend(rules, pgmnt#hi#group(
        \ 'String', {
        \   'ctermfg': c.navy,
        \   'guifg': g.navy,
        \ }))
  call extend(rules, pgmnt#hi#group(
        \ 'Structure', {
        \   'ctermfg': c.navy,
        \   'guifg': g.navy,
        \ }))
  call extend(rules, pgmnt#hi#group(
        \ 'TabLine', {
        \   'ctermbg': c.navy,
        \   'ctermfg': c.lightgray,
        \   'guibg': g.navy,
        \   'guifg': g.lightgray,
        \ }))
  call extend(rules, pgmnt#hi#group(
        \ 'TabLineFill', {
        \   'ctermbg': c.black,
        \   'ctermfg': c.black,
        \   'guibg': g.black,
        \   'guifg': g.black,
        \ }))
  call extend(rules, pgmnt#hi#group(
        \ 'TabLineSel', {
        \   'cterm': 'NONE',
        \   'ctermbg': c.blue,
        \   'ctermfg': c.white,
        \   'gui': 'NONE',
        \   'guibg': g.blue,
        \   'guifg': g.white,
        \ }))
  call extend(rules, pgmnt#hi#group(
        \ 'Tag', {
        \   'ctermfg': c.blue,
        \   'guifg': g.blue,
        \ }))
  call extend(rules, pgmnt#hi#group(
        \ 'Terminal', {
        \   'ctermbg': c.navy,
        \   'ctermfg': c.white,
        \   'guibg': g.navy,
        \   'guifg': g.white,
        \ }))
  call extend(rules, pgmnt#hi#group(
        \ 'TermCursorNC', {
        \   'ctermbg': c.cursorline_bg,
        \   'ctermfg': c.white,
        \   'guibg': g.cursorline_bg,
        \   'guifg': g.white,
        \ }))
  call extend(rules, pgmnt#hi#group(
        \ 'Title', {
        \   'ctermfg': c.blue,
        \   'gui': 'NONE',
        \   'guifg': g.blue,
        \ }))
  call extend(rules, pgmnt#hi#group(
        \ 'Todo', {
        \   'cterm': 'bold',
        \   'ctermbg': c.blue,
        \   'ctermfg': c.white,
        \   'gui': 'bold',
        \   'guibg': g.blue,
        \   'guifg': g.white,
        \ }))
  call extend(rules, pgmnt#hi#group(
        \ 'Type', {
        \   'ctermfg': c.navy,
        \   'gui': 'NONE',
        \   'guifg': g.navy,
        \ }))
  call extend(rules, pgmnt#hi#group(
        \ 'Typedef', {
        \   'ctermfg': c.navy,
        \   'guifg': g.navy,
        \ }))
  call extend(rules, pgmnt#hi#group(
        \ 'Underlined', {
        \   'cterm': 'underline',
        \   'ctermfg': c.normal_fg,
        \   'gui': 'underline',
        \   'guifg': g.normal_fg,
        \   'term': 'underline',
        \ }))
  call extend(rules, pgmnt#hi#group(
        \ 'VertSplit', {
        \   'cterm': 'NONE',
        \   'ctermbg': c.blue,
        \   'ctermfg': c.lightgray,
        \   'gui': 'NONE',
        \   'guibg': g.blue,
        \   'guifg': g.lightgray,
        \ }))
  call extend(rules, pgmnt#hi#group(
        \ 'Visual', {
        \   'ctermbg': c.visual_bg,
        \   'ctermfg': 'NONE',
        \   'guibg': g.visual_bg,
        \   'guifg': 'NONE',
        \ }))
  call extend(rules, pgmnt#hi#group(
        \ 'VisualNOS', {
        \   'ctermbg': c.blue,
        \   'ctermfg': 'NONE',
        \   'guibg': g.blue,
        \   'guifg': 'NONE',
        \ }))
  call extend(rules, pgmnt#hi#group(
        \ 'WildMenu', {
        \   'ctermbg': c.normal_bg,
        \   'ctermfg': c.gray,
        \   'guibg': g.normal_bg,
        \   'guifg': g.gray,
        \ }))
  " }}}

  " Rules for filetypes {{{
  " diff
  call extend(rules, pgmnt#hi#group(
        \ 'diffAdded', {
        \   'ctermfg': c.green,
        \   'guifg': g.green,
        \ }))
  call extend(rules, pgmnt#hi#group(
        \ 'diffRemoved', {
        \   'ctermfg': c.pink,
        \   'guifg': g.pink,
        \ }))
  " }}}

 " [Tree-sitter](https://github.com/nvim-treesitter/nvim-treesitter)
 call extend(rules, pgmnt#hi#group(
       \ ['TSFunction', 'TSFunctionBuiltin', 'TSFunctionMacro'], {
       \   'ctermfg': c.blue,
       \   'guifg': g.blue,
       \ }))
 call extend(rules, pgmnt#hi#group(
       \ ['TSMethod'], {
       \   'ctermfg': c.blue,
       \   'guifg': g.blue,
       \ }))
 call extend(rules, pgmnt#hi#group(
       \ ['TSURI'], {
       \   'cterm': 'underline',
       \   'ctermfg': c.navy,
       \   'gui': 'underline',
       \   'guifg': g.navy,
       \   'term': 'underline',
       \ }))

 " [Neovim built-in diagnostics](https://neovim.io/doc/user/diagnostic.html) {{{
 for [group, color] in items({
       \   'Error': 'pink',
       \   'Hint': 'gray',
       \   'Info': 'blue',
       \   'Warn': 'orange',
       \ })
   call extend(rules, pgmnt#hi#group(
         \ 'DiagnosticUnderline' . group, {
         \   'cterm': 'underline',
         \   'ctermfg': c[color],
         \   'gui': 'underline',
         \   'guisp': g[color],
         \   'term': 'underline',
         \ }))
   call extend(rules, pgmnt#hi#group(
         \ 'Diagnostic' . group, {
         \   'ctermfg': c[color],
         \   'guifg': g[color],
         \ }))
   call extend(rules, pgmnt#hi#group(
         \ 'DiagnosticSign' . group, {
         \   'ctermbg': c.lightgray,
         \   'ctermfg': c[color],
         \   'guibg': g.lightgray,
         \   'guifg': g[color],
         \ }))
 endfor
  " Info color is hard to read within floating window, so use normal text
  " color instead.
  call extend(rules, pgmnt#hi#group(
        \ 'DiagnosticFloatingHint', {
        \   'ctermbg': c.navy,
        \   'ctermfg': c.lightgray,
        \   'guibg': g.navy,
        \   'guifg': g.lightgray,
        \ }))
  " }}}

  let quoted_term_colors = map(
        \ copy(g.term_colors),
        \ '"''" . v:val . "''"')

  let neovim_term_defs = map(
        \ copy(quoted_term_colors),
        \ '"let g:terminal_color_" . v:key . " = " . v:val')
  let vim_term_defs = printf(
        \ 'let g:terminal_ansi_colors = [%s]',
        \ join(quoted_term_colors, ', '),
        \ )

  return {
        \   'neovim_term_defs': neovim_term_defs,
        \   'rules': rules,
        \   'vim_term_defs': vim_term_defs,
        \ }
endfunction

function! s:create_links() abort
  let links = []

  call add(links, pgmnt#hi#link('TermCursor', 'Cursor'))
  call add(links, pgmnt#hi#link('ToolbarButton', 'TabLineSel'))
  call add(links, pgmnt#hi#link('ToolbarLine', 'TabLineFill'))

  " Rules for filetypes {{{
  " css
  call add(links, pgmnt#hi#link('cssBraces', 'Delimiter'))
  call add(links, pgmnt#hi#link('cssClassName', 'Special'))
  call add(links, pgmnt#hi#link('cssClassNameDot', 'Special'))
  call add(links, pgmnt#hi#link('cssPseudoClassId', 'Special'))
  call add(links, pgmnt#hi#link('cssTagName', 'Statement'))

  " help
  call add(links, pgmnt#hi#link('helpHyperTextJump', 'Constant'))

  " html
  call add(links, pgmnt#hi#link('htmlArg', 'Constant'))
  call add(links, pgmnt#hi#link('htmlEndTag', 'Statement'))
  call add(links, pgmnt#hi#link('htmlTag', 'Statement'))

  " json
  call add(links, pgmnt#hi#link('jsonQuote', 'Special'))

  " php
  call add(links, pgmnt#hi#link('phpVarSelector', 'Identifier'))

  " python
  call add(links, pgmnt#hi#link('pythonFunction', 'Title'))

  " ruby
  call add(links, pgmnt#hi#link('rubyDefine', 'Statement'))
  call add(links, pgmnt#hi#link('rubyFunction', 'Title'))
  call add(links, pgmnt#hi#link('rubyInterpolationDelimiter', 'String'))
  call add(links, pgmnt#hi#link('rubySharpBang', 'Comment'))
  call add(links, pgmnt#hi#link('rubyStringDelimiter', 'String'))

  " rust
  call add(links, pgmnt#hi#link('rustFuncCall', 'Statement'))
  call add(links, pgmnt#hi#link('rustFuncName', 'Title'))
  call add(links, pgmnt#hi#link('rustType', 'Constant'))

  " sass
  call add(links, pgmnt#hi#link('sassClass', 'Special'))

  " sh
  call add(links, pgmnt#hi#link('shFunction', 'Function'))

  " vim
  call add(links, pgmnt#hi#link('vimContinue', 'Comment'))
  call add(links, pgmnt#hi#link('vimFuncSID', 'vimFunction'))
  call add(links, pgmnt#hi#link('vimFuncVar', 'Keyword'))
  call add(links, pgmnt#hi#link('vimFunction', 'Title'))
  call add(links, pgmnt#hi#link('vimGroup', 'Statement'))
  call add(links, pgmnt#hi#link('vimHiGroup', 'Statement'))
  call add(links, pgmnt#hi#link('vimHiTerm', 'Identifier'))
  call add(links, pgmnt#hi#link('vimMapModKey', 'Special'))
  call add(links, pgmnt#hi#link('vimOption', 'Identifier'))
  call add(links, pgmnt#hi#link('vimVar', 'Keyword'))

  " xml
  call add(links, pgmnt#hi#link('xmlAttrib', 'Constant'))
  call add(links, pgmnt#hi#link('xmlAttribPunct', 'Statement'))
  call add(links, pgmnt#hi#link('xmlEndTag', 'Statement'))
  call add(links, pgmnt#hi#link('xmlNamespace', 'Statement'))
  call add(links, pgmnt#hi#link('xmlTag', 'Statement'))
  call add(links, pgmnt#hi#link('xmlTagName', 'Statement'))

  " yaml
  call add(links, pgmnt#hi#link('yamlKeyValueDelimiter', 'Delimiter'))
  " }}}

  " Rules for plugins {{{
  " [CtrlP](https://github.com/ctrlpvim/ctrlp.vim)
  call add(links, pgmnt#hi#link('CtrlPPrtCursor', 'Cursor'))
  call add(links, pgmnt#hi#link('CtrlPMatch', 'Title'))
  call add(links, pgmnt#hi#link('CtrlPMode2', 'StatusLine'))

  " [Denite](https://github.com/Shougo/denite.nvim)
  call add(links, pgmnt#hi#link('deniteMatched', 'MatchParen'))
  call add(links, pgmnt#hi#link('deniteMatchedChar', 'Title'))

  " [vim-elixir](https://github.com/elixir-editors/vim-elixir)
  call add(links, pgmnt#hi#link('elixirBlockDefinition', 'Statement'))
  call add(links, pgmnt#hi#link('elixirDefine', 'Statement'))
  call add(links, pgmnt#hi#link('elixirDocSigilDelimiter', 'String'))
  call add(links, pgmnt#hi#link('elixirDocTest', 'String'))
  call add(links, pgmnt#hi#link('elixirExUnitMacro', 'Statement'))
  call add(links, pgmnt#hi#link('elixirExceptionDefine', 'Statement'))
  call add(links, pgmnt#hi#link('elixirFunctionDeclaration', 'Title'))
  call add(links, pgmnt#hi#link('elixirKeyword', 'Statement'))
  call add(links, pgmnt#hi#link('elixirModuleDeclaration', 'PreProc'))
  call add(links, pgmnt#hi#link('elixirModuleDefine', 'Statement'))
  call add(links, pgmnt#hi#link('elixirPrivateDefine', 'Statement'))
  call add(links, pgmnt#hi#link('elixirStringDelimiter', 'String'))

  " [vim-flow](https://github.com/flowtype/vim-flow)
  call add(links, pgmnt#hi#link('jsFlowMaybe', 'Normal'))
  call add(links, pgmnt#hi#link('jsFlowObject', 'Normal'))
  call add(links, pgmnt#hi#link('jsFlowType', 'PreProc'))

  " [vim-graphql](https://github.com/jparise/vim-graphql)
  call add(links, pgmnt#hi#link('graphqlName', 'Function'))
  call add(links, pgmnt#hi#link('graphqlOperator', 'Operator'))

  " [git-messenger.vim](https://github.com/rhysd/git-messenger.vim)
  call add(links, pgmnt#hi#link('gitmessengerHash', 'Comment'))
  call add(links, pgmnt#hi#link('gitmessengerHeader', 'Statement'))
  call add(links, pgmnt#hi#link('gitmessengerHistory', 'Constant'))

  " [vim-javascript](https://github.com/pangloss/vim-javascript)
  call add(links, pgmnt#hi#link('jsArrowFunction', 'Operator'))
  call add(links, pgmnt#hi#link('jsClassDefinition', 'PreProc'))
  call add(links, pgmnt#hi#link('jsClassFuncName', 'Title'))
  call add(links, pgmnt#hi#link('jsExport', 'Statement'))
  call add(links, pgmnt#hi#link('jsFuncName', 'Title'))
  call add(links, pgmnt#hi#link('jsFutureKeys', 'Statement'))
  call add(links, pgmnt#hi#link('jsFuncCall', 'Statement'))
  call add(links, pgmnt#hi#link('jsGlobalObjects', 'Statement'))
  call add(links, pgmnt#hi#link('jsModuleKeywords', 'Statement'))
  call add(links, pgmnt#hi#link('jsModuleOperators', 'Statement'))
  call add(links, pgmnt#hi#link('jsNull', 'Constant'))
  call add(links, pgmnt#hi#link('jsObjectFuncName', 'Title'))
  call add(links, pgmnt#hi#link('jsObjectKey', 'Identifier'))
  call add(links, pgmnt#hi#link('jsSuper', 'Statement'))
  call add(links, pgmnt#hi#link('jsTemplateBraces', 'Special'))
  call add(links, pgmnt#hi#link('jsUndefined', 'Constant'))

  " [vim-markdown](https://github.com/tpope/vim-markdown)
  call add(links, pgmnt#hi#link('markdownBold', 'Special'))
  call add(links, pgmnt#hi#link('markdownCode', 'String'))
  call add(links, pgmnt#hi#link('markdownCodeDelimiter', 'String'))
  call add(links, pgmnt#hi#link('markdownHeadingDelimiter', 'Comment'))
  call add(links, pgmnt#hi#link('markdownRule', 'Comment'))

  " [nginx.vim](https://github.com/chr4/nginx.vim)
  call add(links, pgmnt#hi#link('ngxDirective', 'Statement'))

  " [vim-plug](https://github.com/junegunn/vim-plug)
  call add(links, pgmnt#hi#link('plug1', 'Function'))
  call add(links, pgmnt#hi#link('plug2', 'Identifier'))
  call add(links, pgmnt#hi#link('plugDash', 'Comment'))
  call add(links, pgmnt#hi#link('plugMessage', 'Special'))

  " [Signify](https://github.com/mhinz/vim-signify/)
  call add(links, pgmnt#hi#link('SignifySignAdd', 'GitGutterAdd'))
  call add(links, pgmnt#hi#link('SignifySignChange', 'GitGutterChange'))
  call add(links, pgmnt#hi#link('SignifySignChangeDelete', 'GitGutterChangeDelete'))
  call add(links, pgmnt#hi#link('SignifySignDelete', 'GitGutterDelete'))
  call add(links, pgmnt#hi#link('SignifySignDeleteFirstLine', 'SignifySignDelete'))

  " [Startify](https://github.com/mhinz/vim-startify)
  call add(links, pgmnt#hi#link('StartifyBracket', 'Comment'))
  call add(links, pgmnt#hi#link('StartifyFile', 'Identifier'))
  call add(links, pgmnt#hi#link('StartifyFooter', 'Constant'))
  call add(links, pgmnt#hi#link('StartifyHeader', 'Constant'))
  call add(links, pgmnt#hi#link('StartifyNumber', 'Special'))
  call add(links, pgmnt#hi#link('StartifyPath', 'Comment'))
  call add(links, pgmnt#hi#link('StartifySection', 'Statement'))
  call add(links, pgmnt#hi#link('StartifySlash', 'Comment'))
  call add(links, pgmnt#hi#link('StartifySpecial', 'Special'))

  " [SVSS](https://github.com/cocopon/svss.vim)
  call add(links, pgmnt#hi#link('svssBraces', 'Delimiter'))

  " [vim-swift](https://github.com/toyamarinyon/vim-swift)
  call add(links, pgmnt#hi#link('swiftIdentifier', 'Identifier'))

  " [Tree-sitter](https://github.com/nvim-treesitter/nvim-treesitter)
  call add(links, pgmnt#hi#link('TSAttribute', 'Special'))
  call add(links, pgmnt#hi#link('TSBoolean', 'Constant'))
  call add(links, pgmnt#hi#link('TSCharacter', 'Constant'))
  call add(links, pgmnt#hi#link('TSComment', 'Comment'))
  call add(links, pgmnt#hi#link('TSConstructor', 'Normal'))
  call add(links, pgmnt#hi#link('TSConditional', 'Statement'))
  call add(links, pgmnt#hi#link('TSConstant', 'Constant'))
  call add(links, pgmnt#hi#link('TSConstBuiltin', 'Constant'))
  call add(links, pgmnt#hi#link('TSConstMacro', 'Constant'))
  call add(links, pgmnt#hi#link('TSError', 'Error'))
  call add(links, pgmnt#hi#link('TSException', 'Statement'))
  call add(links, pgmnt#hi#link('TSField', 'Normal'))
  call add(links, pgmnt#hi#link('TSFloat', 'Constant'))
  call add(links, pgmnt#hi#link('TSInclude', 'Statement'))
  call add(links, pgmnt#hi#link('TSKeyword', 'Statement'))
  call add(links, pgmnt#hi#link('TSKeywordFunction', 'Function'))
  call add(links, pgmnt#hi#link('TSLabel', 'Special'))
  call add(links, pgmnt#hi#link('TSNamespace', 'Statement'))
  call add(links, pgmnt#hi#link('TSNumber', 'Constant'))
  call add(links, pgmnt#hi#link('TSOperator', 'Normal'))
  call add(links, pgmnt#hi#link('TSParameter', 'Normal'))
  call add(links, pgmnt#hi#link('TSParameterReference', 'Normal'))
  call add(links, pgmnt#hi#link('TSProperty', 'TSField'))
  call add(links, pgmnt#hi#link('TSPunctDelimiter', 'Demiliter'))
  call add(links, pgmnt#hi#link('TSPunctBracket', 'MatchParen'))
  call add(links, pgmnt#hi#link('TSPunctSpecial', 'Special'))
  call add(links, pgmnt#hi#link('TSRepeat', 'Statement'))
  call add(links, pgmnt#hi#link('TSString', 'String'))
  call add(links, pgmnt#hi#link('TSStringRegex', 'String'))
  call add(links, pgmnt#hi#link('TSStringEscape', 'Special'))
  call add(links, pgmnt#hi#link('TSTag', 'htmlTagName'))
  call add(links, pgmnt#hi#link('TSTagDelimiter', 'htmlTagName'))
  call add(links, pgmnt#hi#link('TSText', 'Statement'))
  call add(links, pgmnt#hi#link('TSTitle', 'Title'))
  call add(links, pgmnt#hi#link('TSType', 'Type'))
  call add(links, pgmnt#hi#link('TSTypeBuiltin', 'Type'))
  call add(links, pgmnt#hi#link('TSVariable', 'Keyword'))
  call add(links, pgmnt#hi#link('TSVariableBuiltin', 'Statement'))

  " [typescript-vim](https://github.com/leafgarland/typescript-vim)
  call add(links, pgmnt#hi#link('typescriptAjaxMethods', 'Normal'))
  call add(links, pgmnt#hi#link('typescriptBraces', 'Normal'))
  call add(links, pgmnt#hi#link('typescriptEndColons', 'Normal'))
  call add(links, pgmnt#hi#link('typescriptFuncKeyword', 'Statement'))
  call add(links, pgmnt#hi#link('typescriptGlobalObjects', 'Statement'))
  call add(links, pgmnt#hi#link('typescriptHtmlElemProperties', 'Normal'))
  call add(links, pgmnt#hi#link('typescriptIdentifier', 'Statement'))
  call add(links, pgmnt#hi#link('typescriptMessage', 'Normal'))
  call add(links, pgmnt#hi#link('typescriptNull', 'Constant'))
  call add(links, pgmnt#hi#link('typescriptParens', 'Normal'))
  " }}}

  return links
endfunction

function! s:create_context() abort
  let d = s:create_colors(
       \ asterisk_blue#palette#dark#create())
  let l = s:create_colors(
        \ asterisk_blue#palette#light#create())
  let links = s:create_links()

  return {
        \   'modified': strftime('%Y-%m-%d %H:%M(+0900)'),
        \   'dark_rules': d.rules,
        \   'dark_neovim_term_defs': d.neovim_term_defs,
        \   'dark_vim_term_defs': d.vim_term_defs,
        \   'light_rules': l.rules,
        \   'light_neovim_term_defs': l.neovim_term_defs,
        \   'light_vim_term_defs': l.vim_term_defs,
        \   'links': links,
        \ }
endfunction

call pgmnt#compile(s:create_context(), {
      \   'output': '../colors/asterisk_blue.vim',
      \   'template': './template.vim',
      \ })

function! s:create_xline_context() abort
  let ps = {
        \   'light': asterisk_blue#palette#light#create(),
        \   'dark': asterisk_blue#palette#dark#create(),
        \ }
  let context = {}
  for [bg, p] in items(ps)
    let c = p.cterm
    let g = p.gui

    let col_base = string([
          \   g.xline_col_base_fg,
          \   g.xline_col_base_bg,
          \   c.xline_col_base_fg,
          \   c.xline_col_base_bg,
          \ ])
    let col_edge = string([
          \   g.white,
          \   g.xline_col_edge_fg,
          \   c.white,
          \   c.xline_col_edge_fg,
          \ ])
    let col_edge_rev = string([
          \   g.xline_col_edge_fg,
          \   g.xline_col_edge_bg,
          \   c.xline_col_edge_fg,
          \   c.xline_col_edge_bg,
          \ ])
    let col_navy = string([
          \   g.lightgray,
          \   g.navy,
          \   c.lightgray,
          \   c.navy,
          \ ])
    let prefix = bg . '_col_'
    let context = extend(context, {
          \   prefix . 'base': col_base,
          \   prefix . 'tabfill': col_base,
          \   prefix . 'edge': col_edge,
          \   prefix . 'edge_rev': col_edge_rev,
          \   prefix . 'navy': col_navy,
          \   prefix . 'normal': col_edge_rev,
          \   prefix . 'tabsel': col_edge,
          \   prefix . 'error': col_edge_rev,
          \   prefix . 'nc': col_edge_rev,
          \   prefix . 'warning': string([
          \     g.white,
          \     g.orange,
          \     c.white,
          \     c.orange,
          \   ]),
          \   prefix . 'insert': col_edge_rev,
          \   prefix . 'replace': string([
          \     g.white,
          \     g.pink,
          \     c.white,
          \     c.pink,
          \   ]),
          \   prefix . 'visual': string([
          \     g.white,
          \     g.orange,
          \     c.white,
          \     c.orange,
          \   ]),
          \   prefix . 'red': string([
          \     g.orange,
          \     g.white,
          \     c.orange,
          \     c.white,
          \   ]),
          \ })
  endfor

  return context
endfunction

call pgmnt#compile(
      \ s:create_xline_context(), {
      \   'output': '../autoload/airline/themes/asterisk_blue.vim',
      \   'template': './template-airline.vim',
      \ })
call pgmnt#compile(
      \ s:create_xline_context(), {
      \   'output': '../autoload/lightline/colorscheme/asterisk_blue.vim',
      \   'template': './template-lightline.vim',
      \ })

