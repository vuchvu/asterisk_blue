let s:save_cpo = &cpo
set cpo&vim


function! s:build_palette() abort
  let p = {
        \ 'normal':   {},
        \ 'inactive': {},
        \ 'insert':   {},
        \ 'replace':  {},
        \ 'visual':   {},
        \ 'tabline':  {}}

  if &background == 'light'
    let col_base     = {{light_col_base}}
    let col_edge     = {{light_col_edge}}
    let col_edge_rev = {{light_col_edge_rev}}
    let col_navy     = {{light_col_navy}}
    let col_nc       = {{light_col_nc}}
    let col_tabfill  = {{light_col_tabfill}}
    let col_normal   = {{light_col_normal}}
    let col_error    = {{light_col_error}}
    let col_warning  = {{light_col_warning}}
    let col_insert   = {{light_col_insert}}
    let col_replace  = {{light_col_replace}}
    let col_visual   = {{light_col_visual}}
    let col_tabsel   = {{light_col_tabsel}}
  else
    let col_base     = {{dark_col_base}}
    let col_edge     = {{dark_col_edge}}
    let col_edge_rev = {{dark_col_edge_rev}}
    let col_navy     = {{dark_col_navy}}
    let col_nc       = {{dark_col_nc}}
    let col_tabfill  = {{dark_col_tabfill}}
    let col_normal   = {{dark_col_normal}}
    let col_error    = {{dark_col_error}}
    let col_warning  = {{dark_col_warning}}
    let col_insert   = {{dark_col_insert}}
    let col_replace  = {{dark_col_replace}}
    let col_visual   = {{dark_col_visual}}
    let col_tabsel   = {{dark_col_tabsel}}
  endif

  let p.normal.middle = [
        \ col_base]
  let p.normal.left = [
        \ col_normal,
        \ col_edge]
  let p.normal.right = [
        \ col_edge_rev,
        \ col_edge]
  let p.normal.error = [
        \ col_error]
  let p.normal.warning = [
        \ col_warning]

  let p.insert.left = [
        \ col_insert,
        \ col_edge]
  let p.replace.left = [
        \ col_replace,
        \ col_edge]
  let p.visual.left = [
        \ col_visual,
        \ col_edge]

  let p.inactive.middle = [
        \ col_nc]
  let p.inactive.left = [
        \ col_nc,
        \ col_nc]
  let p.inactive.right = [
        \ col_nc,
        \ col_nc]

  let p.tabline.middle = [
        \ col_tabfill]
  let p.tabline.left = [
        \ col_navy]
  let p.tabline.tabsel = [
        \ col_tabsel]

  let p.tabline.right = [
        \ col_edge,
        \ col_edge_rev]

  return p
endfunction


let g:lightline#colorscheme#asterisk_blue#palette = s:build_palette()


let &cpo = s:save_cpo
unlet s:save_cpo
