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

  " plugins
  let c.easymotion_shade_fg = 250
  " }}}

  return {
        \   'cterm': c,
        \   'gui': g,
        \ }
endfunction
