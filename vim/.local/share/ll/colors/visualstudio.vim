" This color scheme was derived from:
"
" Blueshift color scheme
" by Jan Zwiener, mail: jan@zwiener.org
" Based upon the pyte color scheme by Henning Hasemann
"
" 2010/11/16: Version 1.0
"

set background=light

hi clear
if exists("syntax_on")
  syntax reset
endif

let colors_name = "visualstudio"

" Taglist colors
hi MyTagListFileName    guifg=#000000   guibg=#c0d0e0
hi MyTagListTagName     guifg=#000000   guibg=#ffbc29

if version >= 700
  hi CursorLine     guibg=#f6f6f6
  hi CursorColumn   guibg=#f6f6f6
  hi MatchParen     guifg=#000000     guibg=#bfbfbf

  hi TabLine        guifg=#000000     guibg=#b0b8c0 gui=NONE
  hi TabLineFill    guifg=#9098a0
  hi TabLineSel     guifg=#000000     guibg=#f0f0f0 gui=bold

  hi Pmenu          guifg=white     guibg=#808080
  hi PmenuSel       guifg=#000000     guibg=#ffbc29
endif

hi Title        guifg=#202020   gui=NONE
hi Underlined   guifg=#202020   gui=underline

hi Normal       guifg=#000000     guibg=#f2f2f2
hi ModeMsg      guifg=#000000     guibg=#f2f2f2
hi Cursor       guifg=#f0f0f0   guibg=#101010
hi LineNr       guifg=#2b91af   guibg=#f2f2f2 gui=NONE
hi WildMenu     guifg=#000000     guibg=#ffbc29
hi IncSearch    guibg=#000000     guifg=#ffbc29
hi Question     guifg=#000000     guibg=#ffbc29

hi StatusLine   guifg=white     guibg=#000000   gui=bold
hi StatusLineNC guifg=white     guibg=#8090a0 gui=bold
hi VertSplit    guifg=#a0b0c0   guibg=#a0b0c0 gui=NONE

hi NonText      guifg=#bebebe   guibg=#f2f2f2
hi Comment      guifg=#008000   gui=NONE
hi Folded       guifg=#708090   guibg=#c0d0e0
hi Folded       guifg=#708090   guibg=#c0d0e0
hi FoldColumn   guifg=#708090   guibg=#c0d0e0

hi Constant     guifg=#6f008a   gui=NONE
hi Number       guifg=#000000
hi Float        guifg=#000000
hi Boolean      guifg=#0070af   gui=NONE
hi String       guifg=#a31515   gui=NONE

hi Statement    guifg=#0000ff      gui=NONE
hi StorageClass guifg=#0070af   gui=NONE
hi Type         guifg=#0000ff   gui=NONE
hi Typedef      guifg=#0000ff      gui=NONE
hi Structure    guifg=#0000ff      gui=NONE
hi Identifier   guifg=#0070af   gui=NONE
hi Function     guifg=#0070af   gui=NONE
hi Repeat       guifg=#0000ff      gui=NONE
hi Conditional  guifg=#0000ff      gui=NONE
hi Operator     guifg=#0000ff      gui=NONE

hi PreProc      guifg=#2222ff   gui=NONE
hi Define       guifg=#2222ff   gui=NONE
hi Include      guifg=#2222ff   gui=NONE

hi Error        guifg=red       guibg=#f2f2f2   gui=bold,underline
hi Todo         guifg=#0000ff      guibg=yellow    gui=NONE
hi Search       guifg=#000000     guibg=yellow    gui=NONE
hi SpecialKey	guifg=#1060a0   guibg=#f2f2f2
hi Special      guifg=#666600   guibg=#f2f2f2

" Diff
hi DiffChange   guifg=NONE      guibg=#e0e0e0   gui=bold
hi DiffText     guifg=NONE      guibg=#f0c8c8   gui=bold
hi DiffAdd      guifg=NONE      guibg=#c0e0d0   gui=bold
hi DiffDelete   guifg=NONE      guibg=#f0e0b0   gui=bold

" Plugins
hi EasyMotionTarget guifg=#ffffff guibg=#2222ff
hi! link EasyMotionShade Comment

hi Pmenu guifg=#000000 guibg=#e0e0e0 
hi PmenuSbar guifg=NONE guibg=#202020 
hi PmenuSel guifg=#ffffff guibg=#0070af 
hi PmenuThumb guifg=NONE guibg=#0070af

hi SyntasticError guifg=NONE guibg=NONE gui=underline guisp=#cc0000
hi SyntasticWarning guifg=NONE guibg=NONE gui=underline guisp=#0000cc

hi CtrlPNoEntries guifg=#a31515
hi CtrlPMatch guifg=#000000 guibg=#ffbc29
hi CtrlPLinePre guifg=#0070af guibg=NONE
hi CtrlPPrtBase guifg=#0070af  guibg=NONE
hi link  CtrlPPrtText CtrlPPrtBase
hi link  CtrlPPrtCursor CtrlPPrtBase

hi Visual  guifg=#ffffff guibg=#0070af gui=NONE cterm=NONE ctermbg=white ctermfg=black
