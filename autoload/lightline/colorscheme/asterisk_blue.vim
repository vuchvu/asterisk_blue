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
    let col_base     = ['#eeeeee', '#1c1c1c', 255, 234]
    let col_edge     = ['#eeeeee', '#0000ff', 255, 21]
    let col_edge_rev = ['#0000ff', '#eeeeee', 21, 255]
    let col_navy     = ['#e4e4e4', '#005faf', 254, 25]
    let col_nc       = ['#0000ff', '#eeeeee', 21, 255]
    let col_tabfill  = ['#eeeeee', '#1c1c1c', 255, 234]
    let col_normal   = ['#0000ff', '#eeeeee', 21, 255]
    let col_error    = ['#0000ff', '#eeeeee', 21, 255]
    let col_warning  = ['#eeeeee', '#d75f00', 255, 166]
    let col_insert   = ['#0000ff', '#eeeeee', 21, 255]
    let col_replace  = ['#eeeeee', '#ff5fd7', 255, 206]
    let col_visual   = ['#eeeeee', '#d75f00', 255, 166]
    let col_tabsel   = ['#eeeeee', '#0000ff', 255, 21]
  else
    let col_base     = ['#dadada', '#262626', 253, 17]
    let col_edge     = ['#dadada', '#0000ff', 253, 21]
    let col_edge_rev = ['#0000ff', '#a8a8a8', 21, 248]
    let col_navy     = ['#a8a8a8', '#005faf', 248, 25]
    let col_nc       = ['#0000ff', '#a8a8a8', 21, 248]
    let col_tabfill  = ['#dadada', '#262626', 253, 17]
    let col_normal   = ['#0000ff', '#a8a8a8', 21, 248]
    let col_error    = ['#0000ff', '#a8a8a8', 21, 248]
    let col_warning  = ['#dadada', '#d75f00', 253, 178]
    let col_insert   = ['#0000ff', '#a8a8a8', 21, 248]
    let col_replace  = ['#dadada', '#d787af', 253, 132]
    let col_visual   = ['#dadada', '#d75f00', 253, 178]
    let col_tabsel   = ['#dadada', '#0000ff', 253, 21]
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
