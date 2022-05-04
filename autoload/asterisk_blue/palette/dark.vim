function! asterisk_blue#palette#dark#create() abort
  " gui {{{
  let g = {}

  " palette
  let g.blue      = pgmnt#color#rgb(  0,   0, 255)
  let g.orange    = pgmnt#color#rgb(215,  95,   0)
  let g.green     = pgmnt#color#rgb(135, 135,   0)
  let g.pink      = pgmnt#color#rgb(215, 135, 175)
  let g.yellow    = pgmnt#color#rgb(135, 135,   0)
  let g.navy      = pgmnt#color#rgb(  0,  95, 175)
  let g.cyan      = pgmnt#color#rgb(  0, 255, 255)
  let g.black     = pgmnt#color#rgb(  0,   0,  95)
  let g.darkgray  = pgmnt#color#rgb(  0,   0, 135)
  let g.gray      = pgmnt#color#rgb(  0,  95, 135)
  let g.lightgray = pgmnt#color#rgb(168, 168, 168)
  let g.white     = pgmnt#color#rgb(218, 218, 218)

  let g.normal_fg = g.white
  let g.normal_bg = g.black
  let g.cursor_fg = g.blue
  let g.cursor_bg = g.gray

  let g.comment_fg = g.lightgray
  let g.specialChar_fg = g.gray
  let g.whitespace_fg = g.gray

  let g.visual_bg = g.gray
  let g.cursorline_bg = g.darkgray

  let g.xline_col_base_fg = g.normal_fg
  let g.xline_col_base_bg = pgmnt#color#rgb(  38,  38,  38)
  let g.xline_col_edge_bg = g.lightgray
  let g.xline_col_edge_fg = g.blue

  " ansi colors
  let g.red = pgmnt#color#rgb(175,  95, 135)
  let g.term_colors = [
        \   g.white,
        \   g.red,
        \   g.green,
        \   g.orange,
        \   g.navy,
        \   g.pink,
        \   g.cyan,
        \   g.black,
        \   g.lightgray,
        \   pgmnt#color#rgb(215, 135, 175),
        \   pgmnt#color#rgb(175, 215,   0),
        \   g.yellow,
        \   g.blue,
        \   pgmnt#color#rgb(135,  95, 255),
        \   pgmnt#color#rgb(175, 255, 255),
        \   g.darkgray,
        \ ]

  " plugins
  let g.easymotion_shade_fg = g.lightgray
  " }}}

  " cterm {{{
  let c = {}

  " palette
  let c.orange = 178
  let c.green = 70
  let c.blue = 21
  let c.pink = 132
  let c.yellow = 136
  let c.navy = 25
  let c.cyan = 87
  let c.black = 17
  let c.darkgray = 18
  let c.gray = 24
  let c.lightgray = 248
  let c.white = 253
  let c.red = 88

  let c.normal_fg = c.white
  let c.normal_bg = c.black
  let c.cursor_fg = c.blue
  let c.cursor_bg = c.gray

  let c.comment_fg = c.lightgray
  let c.specialChar_fg = c.gray
  let c.whitespace_fg = c.gray

  let c.visual_bg = c.gray
  let c.cursorline_bg = c.darkgray

  let c.xline_col_base_fg = c.normal_fg
  let c.xline_col_base_bg = c.normal_bg
  let c.xline_col_edge_bg = c.lightgray
  let c.xline_col_edge_fg = c.blue

  " plugins
  let c.easymotion_shade_fg = 250
  " }}}

  return {
        \   'cterm': c,
        \   'gui': g,
        \ }
endfunction
