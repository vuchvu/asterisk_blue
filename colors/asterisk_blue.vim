" File:       asterisk_blue.vim
" Maintainer: vuchvu <akisamegane7100@gmail.com>
" Modified:   2022-04-25 20:58
" License:    MIT


if !has('gui_running') && &t_Co < 256
  finish
endif

hi clear
if exists('syntax_on')
  syntax reset
endif

let g:colors_name = 'asterisk_blue'

hi Normal ctermbg=255 ctermfg=234 guibg=#eeeeee guifg=#1c1c1c
hi Boolean ctermfg=206 guifg=#ff5fd7
hi ColorColumn cterm=NONE ctermbg=254 ctermfg=NONE guibg=#e4e4e4 guifg=NONE
hi CursorColumn cterm=NONE ctermbg=254 ctermfg=NONE guibg=#e4e4e4 guifg=NONE
hi CursorLine cterm=NONE ctermbg=254 ctermfg=NONE guibg=#e4e4e4 guifg=NONE
hi Comment ctermfg=246 guifg=#949494
hi Conceal ctermbg=NONE ctermfg=NONE guibg=NONE guifg=NONE
hi Conditional ctermbg=NONE ctermfg=21 guibg=NONE guifg=#0000ff
hi Constant ctermfg=21 guifg=#0000ff
hi Cursor ctermbg=250 ctermfg=21 guibg=#b4b4b4 guifg=#0000ff
hi lCursor ctermbg=250 ctermfg=21 guibg=#b4b4b4 guifg=#0000ff
hi CursorIM ctermbg=250 ctermfg=21 guibg=#b4b4b4 guifg=#0000ff
hi CursorLineNr cterm=NONE ctermbg=254 ctermfg=100 guibg=#e4e4e4 guifg=#878700
hi Delimiter ctermfg=234 guifg=#1c1c1c
hi DiffAdd cterm=NONE ctermbg=NONE ctermfg=70 gui=NONE guibg=NONE guifg=#5aaf00
hi DiffChange cterm=NONE ctermbg=NONE ctermfg=NONE gui=NONE guibg=NONE guifg=NONE
hi DiffDelete cterm=NONE ctermbg=NONE ctermfg=206 gui=NONE guibg=NONE guifg=#ff5fd7
hi DiffText cterm=NONE ctermbg=NONE ctermfg=21 gui=NONE guibg=NONE guifg=#0000ff
hi Directory ctermfg=21 guifg=#0000ff
hi Error ctermbg=255 ctermfg=206 guibg=#eeeeee guifg=#ff5fd7
hi ErrorMsg ctermbg=255 ctermfg=206 guibg=#eeeeee guifg=#ff5fd7
hi WarningMsg ctermbg=255 ctermfg=206 guibg=#eeeeee guifg=#ff5fd7
hi EndOfBuffer ctermbg=NONE ctermfg=NONE guibg=NONE guifg=NONE
hi Exception ctermfg=206 guifg=#ff5fd7
hi Float ctermfg=166 guifg=#d75f00
hi Number ctermfg=166 guifg=#d75f00
hi Folded ctermbg=NONE ctermfg=45 guibg=NONE guifg=#00d7ff
hi FoldColumn ctermbg=NONE ctermfg=45 guibg=NONE guifg=#00d7ff
hi Function cterm=NONE ctermfg=100 guifg=#878700
hi Identifier cterm=NONE ctermfg=100 guifg=#878700
hi Ignore ctermbg=NONE ctermfg=250 guibg=NONE guifg=#b4b4b4
hi Include ctermfg=21 guifg=#0000ff
hi IncSearch ctermbg=255 ctermfg=25 guibg=#eeeeee guifg=#005faf
hi Keyword ctermfg=166 guifg=#d75f00
hi label ctermfg=246 guifg=#949494
hi LineNr cterm=NONE ctermbg=255 ctermfg=100 guibg=#eeeeee guifg=#878700
hi MatchParen ctermbg=250 ctermfg=25 guibg=#b4b4b4 guifg=#005faf
hi ModeMsg ctermfg=21 guifg=#0000ff
hi MoreMsg ctermfg=70 guifg=#5aaf00
hi NonText ctermfg=250 guifg=#b4b4b4
hi Whitespace ctermfg=250 guifg=#b4b4b4
hi Number ctermfg=166 guifg=#d75f00
hi Operator ctermfg=234 guifg=#1c1c1c
hi Pmenu ctermbg=25 ctermfg=254 guibg=#005faf guifg=#e4e4e4
hi PmenuSbar ctermbg=25 ctermfg=NONE guibg=#005faf guifg=NONE
hi PmenuSel ctermbg=21 ctermfg=255 guibg=#0000ff guifg=#eeeeee
hi PmenuThumb ctermbg=25 ctermfg=NONE guibg=#005faf guifg=NONE
hi Precondit ctermfg=21 guifg=#0000ff
hi PreProc ctermfg=25 guifg=#005faf
hi Define ctermfg=25 guifg=#005faf
hi Macro ctermfg=25 guifg=#005faf
hi Question ctermfg=70 guifg=#5aaf00
hi QuickFixLine ctermbg=254 ctermfg=21 guibg=#e4e4e4 guifg=#0000ff
hi Repeat ctermfg=25 guifg=#005faf
hi Search ctermbg=25 ctermfg=254 guibg=#005faf guifg=#e4e4e4
hi SignColumn ctermbg=NONE ctermfg=100 guibg=NONE guifg=#878700
hi Special ctermfg=234 guifg=#1c1c1c
hi SpecialChar ctermfg=250 guifg=#b4b4b4
hi SpecialKey ctermfg=250 guifg=#b4b4b4
hi SpellBad ctermfg=206 gui=undercurl guifg=#ff5fd7
hi SpellCap ctermfg=234 gui=undercurl guifg=#1c1c1c
hi SpellLocal ctermbg=NONE ctermfg=234 gui=undercurl guifg=NONE guisp=#1c1c1c
hi SpellRare ctermfg=234 gui=undercurl guifg=#1c1c1c
hi Statement ctermfg=21 gui=NONE guifg=#0000ff
hi StatusLine cterm=NONE ctermbg=21 ctermfg=255 gui=NONE guibg=#0000ff guifg=#eeeeee
hi StatusLineTerm cterm=NONE ctermbg=21 ctermfg=255 gui=NONE guibg=#0000ff guifg=#eeeeee
hi StatusLineNC ctermbg=25 ctermfg=254 guibg=#005faf guifg=#e4e4e4
hi StatusLineTermNC ctermbg=25 ctermfg=254 guibg=#005faf guifg=#e4e4e4
hi StorageClass ctermfg=25 guifg=#005faf
hi String ctermfg=25 guifg=#005faf
hi Structure ctermfg=25 guifg=#005faf
hi TabLine ctermbg=25 ctermfg=254 guibg=#005faf guifg=#e4e4e4
hi TabLineFill ctermbg=234 ctermfg=234 guibg=#1c1c1c guifg=#1c1c1c
hi TabLineSel cterm=NONE ctermbg=21 ctermfg=255 gui=NONE guibg=#0000ff guifg=#eeeeee
hi Tag ctermfg=21 guifg=#0000ff
hi TermCursorNC ctermbg=254 ctermfg=255 guibg=#e4e4e4 guifg=#eeeeee
hi Title ctermfg=21 gui=NONE guifg=#0000ff
hi Todo cterm=bold ctermbg=21 ctermfg=255 gui=bold guibg=#0000ff guifg=#eeeeee
hi Type ctermfg=25 gui=NONE guifg=#005faf
hi Typedef ctermfg=25 guifg=#005faf
hi Underlined cterm=underline ctermfg=234 gui=underline guifg=#1c1c1c term=underline
hi VertSplit cterm=NONE ctermbg=21 ctermfg=254 gui=NONE guibg=#0000ff guifg=#e4e4e4
hi Visual ctermbg=254 ctermfg=NONE guibg=#e4e4e4 guifg=NONE
hi VisualNOS ctermbg=21 ctermfg=NONE guibg=#0000ff guifg=NONE
hi WildMenu ctermbg=255 ctermfg=250 guibg=#eeeeee guifg=#b4b4b4
hi diffAdded ctermfg=70 guifg=#5aaf00
hi diffRemoved ctermfg=206 guifg=#ff5fd7
hi TSFunction ctermfg=21 guifg=#0000ff
hi TSFunctionBuiltin ctermfg=21 guifg=#0000ff
hi TSFunctionMacro ctermfg=21 guifg=#0000ff
hi TSMethod ctermfg=21 guifg=#0000ff
hi TSURI cterm=underline ctermfg=25 gui=underline guifg=#005faf term=underline
hi DiagnosticUnderlineInfo cterm=underline ctermfg=21 gui=underline guisp=#0000ff term=underline
hi DiagnosticInfo ctermfg=21 guifg=#0000ff
hi DiagnosticSignInfo ctermbg=254 ctermfg=21 guibg=#e4e4e4 guifg=#0000ff
hi DiagnosticUnderlineHint cterm=underline ctermfg=250 gui=underline guisp=#b4b4b4 term=underline
hi DiagnosticHint ctermfg=250 guifg=#b4b4b4
hi DiagnosticSignHint ctermbg=254 ctermfg=250 guibg=#e4e4e4 guifg=#b4b4b4
hi DiagnosticUnderlineWarn cterm=underline ctermfg=166 gui=underline guisp=#d75f00 term=underline
hi DiagnosticWarn ctermfg=166 guifg=#d75f00
hi DiagnosticSignWarn ctermbg=254 ctermfg=166 guibg=#e4e4e4 guifg=#d75f00
hi DiagnosticUnderlineError cterm=underline ctermfg=206 gui=underline guisp=#ff5fd7 term=underline
hi DiagnosticError ctermfg=206 guifg=#ff5fd7
hi DiagnosticSignError ctermbg=254 ctermfg=206 guibg=#e4e4e4 guifg=#ff5fd7
hi DiagnosticFloatingHint ctermbg=25 ctermfg=254 guibg=#005faf guifg=#e4e4e4

if has('nvim')
  let g:terminal_color_0 = '#eeeeee'
  let g:terminal_color_1 = '#570000'
  let g:terminal_color_2 = '#5aaf00'
  let g:terminal_color_3 = '#d75f00'
  let g:terminal_color_4 = '#0000ff'
  let g:terminal_color_5 = '#ff5fd7'
  let g:terminal_color_6 = '#00d7ff'
  let g:terminal_color_7 = '#1c1c1c'
  let g:terminal_color_8 = '#e4e4e4'
  let g:terminal_color_9 = '#3d0000'
  let g:terminal_color_10 = '#4c9500'
  let g:terminal_color_11 = '#bd5300'
  let g:terminal_color_12 = '#0000e5'
  let g:terminal_color_13 = '#ff45d0'
  let g:terminal_color_14 = '#00c1e5'
  let g:terminal_color_15 = '#100e0e'
else
  let g:terminal_ansi_colors = ['#eeeeee', '#570000', '#5aaf00', '#d75f00', '#0000ff', '#ff5fd7', '#00d7ff', '#1c1c1c', '#e4e4e4', '#3d0000', '#4c9500', '#bd5300', '#0000e5', '#ff45d0', '#00c1e5', '#100e0e']
endif

hi! link TermCursor Cursor
hi! link ToolbarButton TabLineSel
hi! link ToolbarLine TabLineFill
hi! link cssBraces Delimiter
hi! link cssClassName Special
hi! link cssClassNameDot Special
hi! link cssPseudoClassId Special
hi! link cssTagName Statement
hi! link helpHyperTextJump Constant
hi! link htmlArg Constant
hi! link htmlEndTag Statement
hi! link htmlTag Statement
hi! link jsonQuote Special
hi! link phpVarSelector Identifier
hi! link pythonFunction Title
hi! link rubyDefine Statement
hi! link rubyFunction Title
hi! link rubyInterpolationDelimiter String
hi! link rubySharpBang Comment
hi! link rubyStringDelimiter String
hi! link rustFuncCall Statement
hi! link rustFuncName Title
hi! link rustType Constant
hi! link sassClass Special
hi! link shFunction Function
hi! link vimContinue Comment
hi! link vimFuncSID vimFunction
hi! link vimFuncVar Keyword
hi! link vimFunction Title
hi! link vimGroup Statement
hi! link vimHiGroup Statement
hi! link vimHiTerm Identifier
hi! link vimMapModKey Special
hi! link vimOption Identifier
hi! link vimVar Keyword
hi! link xmlAttrib Constant
hi! link xmlAttribPunct Statement
hi! link xmlEndTag Statement
hi! link xmlNamespace Statement
hi! link xmlTag Statement
hi! link xmlTagName Statement
hi! link yamlKeyValueDelimiter Delimiter
hi! link CtrlPPrtCursor Cursor
hi! link CtrlPMatch Title
hi! link CtrlPMode2 StatusLine
hi! link deniteMatched MatchParen
hi! link deniteMatchedChar Title
hi! link elixirBlockDefinition Statement
hi! link elixirDefine Statement
hi! link elixirDocSigilDelimiter String
hi! link elixirDocTest String
hi! link elixirExUnitMacro Statement
hi! link elixirExceptionDefine Statement
hi! link elixirFunctionDeclaration Title
hi! link elixirKeyword Statement
hi! link elixirModuleDeclaration PreProc
hi! link elixirModuleDefine Statement
hi! link elixirPrivateDefine Statement
hi! link elixirStringDelimiter String
hi! link jsFlowMaybe Normal
hi! link jsFlowObject Normal
hi! link jsFlowType PreProc
hi! link graphqlName Function
hi! link graphqlOperator Operator
hi! link gitmessengerHash Comment
hi! link gitmessengerHeader Statement
hi! link gitmessengerHistory Constant
hi! link jsArrowFunction Operator
hi! link jsClassDefinition PreProc
hi! link jsClassFuncName Title
hi! link jsExport Statement
hi! link jsFuncName Title
hi! link jsFutureKeys Statement
hi! link jsFuncCall Statement
hi! link jsGlobalObjects Statement
hi! link jsModuleKeywords Statement
hi! link jsModuleOperators Statement
hi! link jsNull Constant
hi! link jsObjectFuncName Title
hi! link jsObjectKey Identifier
hi! link jsSuper Statement
hi! link jsTemplateBraces Special
hi! link jsUndefined Constant
hi! link markdownBold Special
hi! link markdownCode String
hi! link markdownCodeDelimiter String
hi! link markdownHeadingDelimiter Comment
hi! link markdownRule Comment
hi! link ngxDirective Statement
hi! link plug1 Function
hi! link plug2 Identifier
hi! link plugDash Comment
hi! link plugMessage Special
hi! link SignifySignAdd GitGutterAdd
hi! link SignifySignChange GitGutterChange
hi! link SignifySignChangeDelete GitGutterChangeDelete
hi! link SignifySignDelete GitGutterDelete
hi! link SignifySignDeleteFirstLine SignifySignDelete
hi! link StartifyBracket Comment
hi! link StartifyFile Identifier
hi! link StartifyFooter Constant
hi! link StartifyHeader Constant
hi! link StartifyNumber Special
hi! link StartifyPath Comment
hi! link StartifySection Statement
hi! link StartifySlash Comment
hi! link StartifySpecial Special
hi! link svssBraces Delimiter
hi! link swiftIdentifier Identifier
hi! link TSAttribute Special
hi! link TSBoolean Constant
hi! link TSCharacter Constant
hi! link TSComment Comment
hi! link TSConstructor Normal
hi! link TSConditional Statement
hi! link TSConstant Constant
hi! link TSConstBuiltin Constant
hi! link TSConstMacro Constant
hi! link TSError Error
hi! link TSException Statement
hi! link TSField Normal
hi! link TSFloat Constant
hi! link TSInclude Statement
hi! link TSKeyword Statement
hi! link TSKeywordFunction Function
hi! link TSLabel Special
hi! link TSNamespace Statement
hi! link TSNumber Constant
hi! link TSOperator Normal
hi! link TSParameter Normal
hi! link TSParameterReference Normal
hi! link TSProperty TSField
hi! link TSPunctDelimiter Demiliter
hi! link TSPunctBracket MatchParen
hi! link TSPunctSpecial Special
hi! link TSRepeat Statement
hi! link TSString String
hi! link TSStringRegex String
hi! link TSStringEscape Special
hi! link TSTag htmlTagName
hi! link TSTagDelimiter htmlTagName
hi! link TSText Statement
hi! link TSTitle Title
hi! link TSType Type
hi! link TSTypeBuiltin Type
hi! link TSVariable Keyword
hi! link TSVariableBuiltin Statement
hi! link typescriptAjaxMethods Normal
hi! link typescriptBraces Normal
hi! link typescriptEndColons Normal
hi! link typescriptFuncKeyword Statement
hi! link typescriptGlobalObjects Statement
hi! link typescriptHtmlElemProperties Normal
hi! link typescriptIdentifier Statement
hi! link typescriptMessage Normal
hi! link typescriptNull Constant
hi! link typescriptParens Normal

if !has('nvim')
  hi! link SpecialKey Whitespace
endif
