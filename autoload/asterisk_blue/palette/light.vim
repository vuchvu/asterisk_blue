function! asterisk_blue#palette#light#create() abort
  " gui {{{
  let g = {}

  " palette
  let g.blue      = pgmnt#color#rgb(  0,   0, 255)
  let g.orange    = pgmnt#color#rgb(215,  95,   0)
  let g.green     = pgmnt#color#rgb( 90, 175,   0)
  let g.pink      = pgmnt#color#rgb(255,  95, 215)
  let g.yellow    = pgmnt#color#rgb(135, 135,   0)
  let g.navy      = pgmnt#color#rgb(  0,  95, 175)
  let g.cyan      = pgmnt#color#rgb(  0, 215, 255)
  let g.black     = pgmnt#color#rgb( 28,  28,  28)
  let g.darkgray  = pgmnt#color#rgb(148, 148, 148)
  let g.gray      = pgmnt#color#rgb(180, 180, 180)
  let g.lightgray = pgmnt#color#rgb(228, 228, 228)
  let g.white     = pgmnt#color#rgb(238, 238, 238)

  let g.normal_bg = g.white
  let g.normal_fg = g.black
  let g.cursor_bg = g.gray
  let g.cursor_fg = g.blue

  let g.comment_fg = g.darkgray
  let g.specialChar_fg = g.gray
  let g.whitespace_fg = g.gray

  let g.visual_bg = g.lightgray
  let g.cursorline_bg = g.lightgray

  let g.xline_col_base_bg = g.normal_fg
  let g.xline_col_base_fg = g.normal_bg
  let g.xline_col_edge_bg = g.white
  let g.xline_col_edge_fg = g.blue

  " ansi colors
  let g.red = pgmnt#color#rgb( 87,   0,   0)
  let g.term_colors = [
        \   g.white,
        \   g.red,
        \   g.green,
        \   g.orange,
        \   g.blue,
        \   g.pink,
        \   g.cyan,
        \   g.black,
        \   g.lightgray,
        \   pgmnt#color#adjust_color(g.red,       {'saturation': +0.05, 'lightness': -0.05}),
        \   pgmnt#color#adjust_color(g.green,     {'saturation': +0.05, 'lightness': -0.05}),
        \   pgmnt#color#adjust_color(g.orange,    {'saturation': +0.05, 'lightness': -0.05}),
        \   pgmnt#color#adjust_color(g.blue,      {'saturation': +0.05, 'lightness': -0.05}),
        \   pgmnt#color#adjust_color(g.pink,      {'saturation': +0.05, 'lightness': -0.05}),
        \   pgmnt#color#adjust_color(g.cyan,      {'saturation': +0.05, 'lightness': -0.05}),
        \   pgmnt#color#adjust_color(g.black, {'saturation': +0.05, 'lightness': -0.05}),
        \ ]

  " plugins
  let g.easymotion_shade_fg = g.lightgray
  " }}}

  " cterm {{{
  let c = {}

  " palette
  let c.orange = 166
  let c.green = 70
  let c.blue = 21
  let c.pink = 206
  let c.yellow = 100
  let c.navy = 25
  let c.cyan = 45
  let c.black = 234
  let c.darkgray = 246
  let c.gray = 250
  let c.lightgray = 254
  let c.white = 255
  let c.red = 88

  let c.normal_bg = c.white
  let c.normal_fg = c.black
  let c.cursor_bg = c.gray
  let c.cursor_fg = c.blue

  let c.comment_fg = c.darkgray
  let c.specialChar_fg = c.gray
  let c.whitespace_fg = c.gray

  let c.visual_bg = c.lightgray
  let c.cursorline_bg = c.lightgray

  let c.xline_col_base_bg = c.normal_fg
  let c.xline_col_base_fg = c.normal_bg
  let c.xline_col_edge_bg = c.white
  let c.xline_col_edge_fg = c.blue

  " plugins
  let c.easymotion_shade_fg = 250
  " }}}

  return {
        \   'cterm': c,
        \   'gui': g,
        \ }
endfunction
