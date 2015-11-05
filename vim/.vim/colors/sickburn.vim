" --------------------------- Chris's Notes ---------------------------------- "
" This theme is based on, is influenced by, and plagiarizes Jani Nurminen's 
" Zenburn vim theme.
"
" I'm sure I've made a mess of it.
" 
" See more about Zenburn at:
" http://kippura.org/zenburnpage/
" https://github.com/jnurmine/Zenburn
" The original Zenburn is licensed under GNU GPL (presumably v3)
" GNU GPL <http://www.gnu.org/licenses/gpl.html>
" ----------------------------- End notes ------------------------------------ "
"
"
" CONFIGURABLE PARAMETERS:
"
" You can use the default (don't set any parameters), or you can
" set some parameters to tweak the Zenburn colours.
"
" To use them, put them into your .vimrc file before loading the color scheme,
" example:
"    let g:zenburn_high_Contrast=1
"    colors zenburn
"
" You can also do ":let g:zenburn" then hit Ctrl-d or Tab to scroll through the
" list of configurable parameters.
"
" * For transparent terminals set the background to black with:
"      let g:zenburn_transparent = 1

" * If you actually want a transparent background:
let g:zenburn_transparent_but_actually = 1

" * Work-around to a Vim bug, it seems to misinterpret ctermfg and 234 and 237
"   as light values, and sets background to light for some people. If you have
"   this problem, use:
"
"      let g:zenburn_force_dark_Background = 1
"
"  * EXPERIMENTAL FEATURE: Zenburn would like to support TagHighlight
"    (an evolved ctags-highlighter) by Al Budden (homepage:
"    http://www.cgtk.co.uk/vim-scripts/taghighlight).
"    Current support status is broken: there is no automatic detection of
"    TagHighlight, no specific language support; however there is some basic
"    support for Python. If you are a user of TagHighlight and want to help,
"    please enable:
"
"      let g:zenburn_enable_TagHighlight=1
"
"    and improve the corresponding block at the end of the file.
"
" NOTE:
"
" * To turn the parameter(s) back to defaults, use UNLET or set them to 0:
"
"      unlet g:zenburn_alternate_Include
"   or 
"      let g:zenburn_alternate_Include = 0
"
"
" That's it, enjoy!
"

" Finish if we are in a term lacking 256 color support
if ! has("gui_running") && &t_Co <= 255
    finish
endif

if ! exists("g:zenburn_transparent")
    let g:zenburn_transparent = 0
endif

if ! exists("g:zenburn_transparent_but_actually")
    let g:zenburn_transparent_but_actually = 0
endif

if ! exists("g:zenburn_force_dark_Background")
    let g:zenburn_force_dark_Background = 0
endif

if ! exists("g:zenburn_enable_TagHighlight")
    let g:zenburn_enable_TagHighlight = 0
endif

" -----------------------------------------------

set background=dark

hi clear
if exists("syntax_on")
    syntax reset
endif
let g:colors_name="sickburn"

hi Boolean         guifg=#dca3a3                              ctermfg=181
hi Character       guifg=#dca3a3 gui=bold                     ctermfg=181 cterm=bold
hi Comment         guifg=#7f9f7f gui=italic                   ctermfg=108
hi Conditional     guifg=#f0dfaf gui=bold                     ctermfg=228 cterm=bold
hi Constant        guifg=#dca3a3 gui=bold                     ctermfg=181 cterm=bold
hi Cursor          guifg=#000d18 guibg=#8faf9f gui=bold       ctermfg=233 ctermbg=109 cterm=bold
hi Debug           guifg=#bca3a3 gui=bold                     ctermfg=181 cterm=bold
hi Define          guifg=#ffcfaf gui=bold                     ctermfg=168
hi Delimiter       guifg=#8f8f8f                              ctermfg=245
hi DiffAdd         guifg=#709080 guibg=#313c36 gui=bold       ctermfg=66  ctermbg=237 cterm=bold
hi DiffChange      guibg=#333333                              ctermbg=236
hi DiffDelete      guifg=#333333 guibg=#464646                ctermfg=236 ctermbg=238
hi DiffText        guifg=#ecbcbc guibg=#41363c gui=bold       ctermfg=217 ctermbg=237 cterm=bold
hi Directory       guifg=#9fafaf gui=bold                     ctermfg=109 cterm=bold
hi Error           guifg=#e37170 guibg=#3d3535 gui=bold       ctermfg=167 ctermbg=236 cterm=bold
hi ErrorMsg        guifg=#80d4aa guibg=#2f2f2f gui=bold       ctermfg=167 ctermbg=236 cterm=bold
hi Exception       guifg=#c3bf9f gui=bold                     ctermfg=74 cterm=bold
hi Float           guifg=#c0bed1                              ctermfg=251
hi FoldColumn      guifg=#93b3a3 guibg=#3f4040
hi Folded          guifg=#93b3a3 guibg=#3f4040
hi Function        guifg=#efef8f                              ctermfg=227
hi Identifier      guifg=#efdcbc                              ctermfg=223 cterm=none
hi Include         guifg=#dfaf8f gui=bold                     ctermfg=109 cterm=bold
hi IncSearch       guifg=#f8f893 guibg=#385f38                ctermfg=228 ctermbg=23
hi Keyword         guifg=#f0dfaf gui=bold                     ctermfg=223 cterm=bold
hi Macro           guifg=#ffcfaf gui=bold                     ctermfg=223 cterm=bold
hi ModeMsg         guifg=#ffcfaf gui=none                     ctermfg=223 cterm=none
hi MoreMsg         guifg=#ffffff gui=bold                     ctermfg=231 cterm=bold
hi Number          guifg=#8cd0d3                              ctermfg=167
hi Operator        guifg=#f0efd0                              ctermfg=117
hi PmenuSbar       guibg=#2e3330 guifg=#000000                ctermfg=16  ctermbg=236
hi PmenuThumb      guibg=#a0afa0 guifg=#040404                ctermfg=232 ctermbg=151
hi PreCondit       guifg=#dfaf8f gui=bold                     ctermfg=180 cterm=bold
hi PreProc         guifg=#ffcfaf gui=bold                     ctermfg=223 cterm=bold
hi Question        guifg=#ffffff gui=bold                     ctermfg=231 cterm=bold
hi Repeat          guifg=#ffd7a7 gui=bold                     ctermfg=117 cterm=bold
hi Search          guifg=#ffffe0 guibg=#284f28                ctermfg=230 ctermbg=22
hi SignColumn      guifg=#9fafaf gui=bold                     ctermfg=109 cterm=bold
hi SpecialChar     guifg=#dca3a3 gui=bold                     ctermfg=181 cterm=bold
hi SpecialComment  guifg=#82a282 gui=bold                     ctermfg=108 cterm=bold
hi Special         guifg=#cfbfaf                              ctermfg=181
hi SpecialKey      guifg=#9ece9e                              ctermfg=151
hi Statement       guifg=#e3ceab gui=none                     ctermfg=113 cterm=bold
hi StatusLine      guifg=#313633 guibg=#ccdc90                ctermfg=236 ctermbg=186
hi StatusLineNC    guifg=#2e3330 guibg=#88b090                ctermfg=235 ctermbg=108
hi StorageClass    guifg=#c3bf9f gui=bold                     ctermfg=249 cterm=bold
hi String          guifg=#cc9393                              ctermfg=113
hi Structure       guifg=#efefaf gui=bold                     ctermfg=229 cterm=bold
hi Tag             guifg=#e89393 gui=bold                     ctermfg=181 cterm=bold
hi Title           guifg=#efefef gui=bold                     ctermfg=255 ctermbg=NONE cterm=bold
hi Todo            guifg=#dfdfdf guibg=NONE    gui=bold       ctermfg=254 ctermbg=NONE cterm=bold
hi Typedef         guifg=#dfe4cf gui=bold                     ctermfg=253 cterm=bold
hi Type            guifg=#dfdfbf gui=bold                     ctermfg=229
hi Underlined      guifg=#dcdccc gui=underline                ctermfg=188 cterm=underline
hi VertSplit       guifg=#2e3330 guibg=#688060                ctermfg=236 ctermbg=65
hi VisualNOS       guifg=#333333 guibg=#f18c96 gui=bold,underline ctermfg=236 ctermbg=210 cterm=bold
hi WarningMsg      guifg=#ffffff guibg=#333333 gui=bold       ctermfg=231 ctermbg=236 cterm=bold
hi WildMenu        guifg=#cbecd0 guibg=#2c302d gui=underline  ctermfg=194 ctermbg=236 cterm=underline

" spellchecking, always "bright" term background
hi SpellBad   guisp=#bc6c4c guifg=#dc8c6c  ctermfg=209 ctermbg=237
hi SpellCap   guisp=#6c6c9c guifg=#8c8cbc  ctermfg=103 ctermbg=237
hi SpellRare  guisp=#bc6c9c guifg=#bc8cbc  ctermfg=139 ctermbg=237
hi SpellLocal guisp=#7cac7c guifg=#9ccc9c  ctermfg=151 ctermbg=237

" Original, lighter background
hi Normal        guifg=#dcdccc guibg=#3f3f3f           ctermfg=187 ctermbg=237
hi ColorColumn   guibg=#484848                         ctermbg=238
hi CursorLine    guibg=#434443                         ctermbg=238 cterm=none
hi CursorLineNr  guifg=#d2d39b guibg=#262626           ctermfg=230 ctermbg=235
hi CursorColumn  guibg=#4f4f4f                     ctermbg=239 cterm=none
hi FoldColumn    guibg=#333333                         ctermbg=236 ctermfg=109
hi Folded        guibg=#333333                         ctermbg=236 ctermfg=109
hi LineNr        guifg=#9fafaf guibg=#262626           ctermfg=248 ctermbg=235
hi NonText       guifg=#5b605e gui=bold                ctermfg=240
hi Pmenu         guibg=#2c2e2e guifg=#9f9f9f           ctermfg=248 ctermbg=235
hi PmenuSel      guibg=#242424 guifg=#d0d0a0 gui=bold  ctermfg=187 ctermbg=235 cterm=bold
hi MatchParen    guifg=#b2b2a0 guibg=#2e2e2e gui=bold  ctermfg=145 ctermbg=236 cterm=bold
hi SignColumn    guibg=#343434                         ctermbg=236
hi SpecialKey    guibg=#444444
hi TabLine       guifg=#d0d0b8 guibg=#222222 gui=none  ctermbg=235 ctermfg=187 cterm=none
hi TabLineSel    guifg=#f0f0b0 guibg=#333333 gui=bold  ctermbg=236 ctermfg=229 cterm=bold
hi TabLineFill   guifg=#dccdcc guibg=#101010 gui=none  ctermbg=233 ctermfg=188 cterm=none

hi StatusLine    ctermbg=144

hi Visual        guibg=#2f2f2f  ctermbg=235
hi VisualNOS     guibg=#2f2f2f  ctermbg=235

if exists("g:zenburn_force_dark_Background") && g:zenburn_force_dark_Background
    " Force dark background, because of a bug in VIM:  VIM sets background
    " automatically during "hi Normal ctermfg=X"; it misinterprets the high
    " value (234 or 237 above) as a light color, and wrongly sets background to
    " light.  See ":help highlight" for details.
    set background=dark
endif

if exists("g:zenburn_transparent") && g:zenburn_transparent
    hi Normal             ctermbg=0     guibg=#000000
    hi Statement          ctermbg=NONE
    hi Title              ctermbg=NONE
    hi Todo               ctermbg=NONE
    hi Underlined         ctermbg=NONE
    hi DiffAdd            ctermbg=NONE
    hi DiffText           ctermbg=NONE
    hi ErrorMsg           ctermbg=NONE
    hi LineNr             ctermbg=NONE
endif

if exists("g:zenburn_transparent_but_actually") && g:zenburn_transparent_but_actually
    hi Normal             ctermbg=NONE     guibg=#000000
    hi Statement          ctermbg=NONE
    hi Title              ctermbg=NONE
    hi Todo               ctermbg=NONE
    hi Underlined         ctermbg=NONE
    hi DiffAdd            ctermbg=NONE
    hi DiffText           ctermbg=NONE
    hi ErrorMsg           ctermbg=NONE
    hi LineNr             ctermbg=NONE
endif

" EXPERIMENTAL TagHighlight support
" link/set sensible defaults here;
"
" For now I mostly link to subset of Zenburn colors, the linkage is based
" on appearance, not semantics. In later versions I might define more new colours.
"
" HELP NEEDED to make this work properly.

if exists("g:zenburn_enable_TagHighlight") && g:zenburn_enable_TagHighlight
        " CTag support may vary, but the first step is to start using it so
        " we can fix it!
        "
        " Consult /plugin/TagHighlight/data/kinds.txt for info on your
        " language and what's been defined.
        "
        " There is potential for language indepedent features here. (Acutally,
        " seems it may be required for this to be useful...) This way we can
        " implement features depending on how well CTags are currently implemented
        " for the language. ie. Global problem for python is annoying.  Special
        " colors are defined for special language features, etc..
        "
        " For now all I care about is python supported features:
        "   c:CTagsClass
        "   f:CTagsFunction
        "   i:CTagsImport
        "   m:CTagsMember
        "   v:CTagsGlobalVariable
        "
        "   Note: TagHighlight defaults to setting new tags to Keyword
        "   highlighting.

        " TODO conditionally run each section
        " BEGIN Python Section
        hi link Class        Function
        hi link Import       PythonInclude
        hi link Member       Function
        "Note: Function is already defined

        " Highlighter seems to think a lot of things are global variables even
        " though they're not. Example: python method-local variable is
        " coloured as a global variable. They should not be global, since
        " they're not visible outside the method.
        " If this is some very bright colour group then things look bad.
        " hi link GlobalVariable    Identifier

        " Because of this problem I am disabling the feature by setting it to
        " Normal instead
        hi link GlobalVariable Normal
        " END Python Section

        " Starting point for other languages.
        hi link GlobalConstant    Constant
        hi link EnumerationValue  Float
        hi link EnumerationName   Identifier
        hi link DefinedName       WarningMsg
        hi link LocalVariable     WarningMsg
        hi link Structure         WarningMsg
        hi link Union             WarningMsg
endif

