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

  let col_base     = ['#e4e4e4', '#1c1c1c', 254, 234]
  let col_edge     = ['#eeeeee', '#0000ff', 255, 21]
  let col_gradient = ['#eeeeee', '#0000ff', 255, 21]
  let col_nc       = ['#0000ff', '#eeeeee', 21, 255]
  let col_tabfill  = ['#eeeeee', '#1c1c1c', 255, 234]
  let col_normal   = ['#0000ff', '#eeeeee', 21, 255]
  let col_error    = ['#0000ff', '#eeeeee', 21, 255]
  let col_warning  = ['#eeeeee', '#d75f00', 255, 166]
  let col_insert   = ['#0000ff', '#eeeeee', 21, 255]
  let col_replace  = ['#eeeeee', '#ff5fd7', 255, 206]
  let col_visual   = ['#eeeeee', '#d75f00', 255, 166]
  let col_tabsel   = ['#eeeeee', '#0000ff', 255, 21]

  let p.normal.middle = [
        \ col_base]
  let p.normal.left = [
        \ col_normal,
        \ col_gradient]
  let p.normal.right = [
        \ col_edge,
        \ col_gradient]
  let p.normal.error = [
        \ col_error]
  let p.normal.warning = [
        \ col_warning]

  let p.insert.left = [
        \ col_insert,
        \ col_gradient]
  let p.replace.left = [
        \ col_replace,
        \ col_gradient]
  let p.visual.left = [
        \ col_visual,
        \ col_gradient]

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
        \ col_tabfill]
  let p.tabline.tabsel = [
        \ col_tabsel]

  let p.tabline.right = copy(p.normal.right)

  return p
endfunction


let g:lightline#colorscheme#asterisk_blue#palette = s:build_palette()


let &cpo = s:save_cpo
unlet s:save_cpo
