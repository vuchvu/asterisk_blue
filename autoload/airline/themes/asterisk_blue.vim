let s:save_cpo = &cpo
set cpo&vim


function! s:build_palette() abort
  if &background == 'light'
    let col_base     = ['#eeeeee', '#1c1c1c', 255, 234]
    let col_edge     = ['#eeeeee', '#0000ff', 255, 21]
    let col_edge_rev = ['#0000ff', '#eeeeee', 21, 255]
    let col_error    = ['#0000ff', '#eeeeee', 21, 255]
    let col_nc       = ['#0000ff', '#eeeeee', 21, 255]
    let col_warning  = ['#eeeeee', '#d75f00', 255, 166]
    let col_insert   = ['#0000ff', '#eeeeee', 21, 255]
    let col_replace  = ['#eeeeee', '#ff5fd7', 255, 206]
    let col_visual   = ['#eeeeee', '#d75f00', 255, 166]
    let col_red      = ['#d75f00', '#eeeeee', 166, 255]
  else
    let col_base     = ['#dadada', '#262626', 253, 17]
    let col_edge     = ['#dadada', '#0000ff', 253, 21]
    let col_edge_rev = ['#0000ff', '#a8a8a8', 21, 248]
    let col_error    = ['#0000ff', '#a8a8a8', 21, 248]
    let col_nc       = ['#0000ff', '#a8a8a8', 21, 248]
    let col_warning  = ['#dadada', '#d75f00', 253, 178]
    let col_insert   = ['#0000ff', '#a8a8a8', 21, 248]
    let col_replace  = ['#dadada', '#d787af', 253, 132]
    let col_visual   = ['#dadada', '#d75f00', 253, 178]
    let col_red      = ['#d75f00', '#dadada', 178, 253]
  endif

  let p = {}
  let p.inactive = airline#themes#generate_color_map(
        \ col_base,
        \ col_base,
        \ col_base)
  let p.normal = airline#themes#generate_color_map(
        \ col_edge_rev,
        \ col_edge,
        \ col_base)
  let p.insert = airline#themes#generate_color_map(
        \ col_insert,
        \ col_edge,
        \ col_base)
  let p.replace = airline#themes#generate_color_map(
        \ col_replace,
        \ col_edge,
        \ col_base)
  let p.visual = airline#themes#generate_color_map(
        \ col_visual,
        \ col_edge,
        \ col_base)
  let p.terminal = airline#themes#generate_color_map(
        \ col_insert,
        \ col_edge,
        \ col_base)

  " Accents
  let p.accents = {
        \   'red': col_red,
        \ }

  " Error
  let p.inactive.airline_error = col_error
  let p.insert.airline_error = col_error
  let p.normal.airline_error = col_error
  let p.replace.airline_error = col_error
  let p.visual.airline_error = col_error

  " Warning
  let p.inactive.airline_warning = col_warning
  let p.insert.airline_warning = col_warning
  let p.normal.airline_warning = col_warning
  let p.replace.airline_warning = col_warning
  let p.visual.airline_warning = col_warning

  " Terminal
  let p.normal.airline_term = col_base
  let p.terminal.airline_term = col_base
  let p.visual.airline_term = col_base

  return p
endfunction


let g:airline#themes#asterisk_blue#palette = s:build_palette()


let &cpo = s:save_cpo
unlet s:save_cpo
