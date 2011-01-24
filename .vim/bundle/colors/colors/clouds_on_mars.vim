" Vim color file
" " Converted from Textmate theme Clouds On Mars using Coloration v0.2.5 
" (http://github.com/sickill/coloration)
"
 set background=dark
 highlight clear

 if exists("syntax_on")
   syntax reset
endif

let g:colors_name = "Clouds On Mars"

hi Cursor  guifg=NONE guibg=#cc2939 gui=NONE
hi Visual  guifg=NONE guibg=#1f1f1f gui=NONE
hi CursorLine  guifg=NONE guibg=#1f1f1f gui=NONE
hi ColorColumn  guifg=NONE guibg=#1f1f1f gui=NONE
hi CursorColumn  guifg=NONE guibg=#1f1f1f gui=NONE
hi LineNr  guifg=#565656 guibg=#191919 gui=NONE
hi SignColumn  guifg=#565656 guibg=#191919 gui=NONE
hi VertSplit  guifg=#303030 guibg=#303030 gui=NONE
hi MatchParen  guifg=#ec4853 guibg=NONE gui=bold
hi StatusLine  guifg=#929292 guibg=#303030 gui=bold
hi StatusLineNC  guifg=#929292 guibg=#303030 gui=NONE
hi Pmenu  guifg=NONE guibg=NONE gui=NONE
hi PmenuSel  guifg=NONE guibg=#1f1f1f gui=NONE
hi IncSearch  guifg=NONE guibg=#5f292c gui=NONE
hi Search  guifg=NONE guibg=#5f292c gui=NONE
hi Directory  guifg=#eb0077 guibg=NONE gui=bold
hi Folded  guifg=#615d63 guibg=#191919 gui=NONE

hi Normal  guifg=#929292 guibg=#191919 gui=NONE
hi Boolean  guifg=#3c9d71 guibg=NONE gui=bold
hi Character  guifg=#eb0077 guibg=NONE gui=bold
hi Comment  guifg=#615d63 guibg=NONE gui=italic
hi Conditional  guifg=#ec4853 guibg=NONE gui=bold
hi Constant  guifg=NONE guibg=NONE gui=NONE
hi Define  guifg=#ec4853 guibg=NONE gui=bold
hi ErrorMsg  guifg=#ffffff guibg=#e92e2e gui=NONE
hi WarningMsg  guifg=#ffffff guibg=#e92e2e gui=NONE
hi Float  guifg=#aeaeb0 guibg=#191919 gui=NONE
hi Function  guifg=#dce2d7 guibg=NONE gui=bold
hi Identifier  guifg=#ff0079 guibg=NONE gui=bold
hi Keyword  guifg=#ec4853 guibg=NONE gui=bold
hi Label  guifg=#00ffbd guibg=NONE gui=NONE
hi NonText  guifg=#bfbfbf guibg=#1f1f1f gui=NONE
hi Number  guifg=#aeaeb0 guibg=#191919 gui=NONE
hi Operator  guifg=#4b4b4b guibg=NONE gui=NONE
hi PreProc  guifg=#ec4853 guibg=NONE gui=bold
hi Special  guifg=#929292 guibg=NONE gui=NONE
hi SpecialKey  guifg=#bfbfbf guibg=#1f1f1f gui=NONE
hi Statement  guifg=#ec4853 guibg=NONE gui=bold
hi StorageClass  guifg=#ff0079 guibg=NONE gui=bold
hi String  guifg=#00ffbd guibg=NONE gui=NONE
hi Tag  guifg=#e4ede3 guibg=NONE gui=bold
hi Title  guifg=#929292 guibg=NONE gui=bold
hi Todo  guifg=#615d63 guibg=NONE gui=inverse,bold,italic
hi Type  guifg=NONE guibg=NONE gui=NONE
hi Underlined  guifg=NONE guibg=NONE gui=underline
hi rubyClass  guifg=#ec4853 guibg=NONE gui=bold
hi rubyFunction  guifg=#dce2d7 guibg=NONE gui=bold
hi rubyInterpolationDelimiter  guifg=NONE guibg=NONE gui=NONE
hi rubySymbol  guifg=#eb0077 guibg=NONE gui=bold
hi rubyConstant  guifg=#fafdff guibg=NONE gui=NONE
hi rubyStringDelimiter  guifg=#00ffbd guibg=NONE gui=NONE
hi rubyBlockParameter  guifg=NONE guibg=NONE gui=NONE
hi rubyInstanceVariable  guifg=#e9fee8 guibg=NONE gui=bold
hi rubyInclude  guifg=#ec4853 guibg=NONE gui=bold
hi rubyGlobalVariable  guifg=#e9fee8 guibg=NONE gui=bold
hi rubyRegexp  guifg=#00ffbd guibg=NONE gui=NONE
hi rubyRegexpDelimiter  guifg=#00ffbd guibg=NONE gui=NONE
hi rubyEscape  guifg=#eb0077 guibg=NONE gui=bold
hi rubyControl  guifg=#ec4853 guibg=NONE gui=bold
hi rubyClassVariable  guifg=NONE guibg=NONE gui=NONE
hi rubyOperator  guifg=#4b4b4b guibg=NONE gui=NONE
hi rubyException  guifg=#ec4853 guibg=NONE gui=bold
hi rubyPseudoVariable  guifg=#e9fee8 guibg=NONE gui=bold
hi rubyRailsUserClass  guifg=#fafdff guibg=NONE gui=NONE
hi rubyRailsARAssociationMethod  guifg=#d1bcb1 guibg=NONE gui=bold
hi rubyRailsARMethod  guifg=#d1bcb1 guibg=NONE gui=bold
hi rubyRailsRenderMethod  guifg=#d1bcb1 guibg=NONE gui=bold
hi rubyRailsMethod  guifg=#d1bcb1 guibg=NONE gui=bold
hi erubyDelimiter  guifg=#e92e2e guibg=NONE gui=NONE
hi erubyComment  guifg=#615d63 guibg=NONE gui=italic
hi erubyRailsMethod  guifg=#d1bcb1 guibg=NONE gui=bold
hi htmlTag  guifg=NONE guibg=NONE gui=NONE
hi htmlEndTag  guifg=NONE guibg=NONE gui=NONE
hi htmlTagName  guifg=NONE guibg=NONE gui=NONE
hi htmlArg  guifg=NONE guibg=NONE gui=NONE
hi htmlSpecialChar  guifg=#d2d6c5 guibg=NONE gui=NONE
hi javaScriptFunction  guifg=#ff0079 guibg=NONE gui=bold
hi javaScriptRailsFunction  guifg=#d1bcb1 guibg=NONE gui=bold
hi javaScriptBraces  guifg=NONE guibg=NONE gui=NONE
hi yamlKey  guifg=#e4ede3 guibg=NONE gui=bold
hi yamlAnchor  guifg=#e9fee8 guibg=NONE gui=bold
hi yamlAlias  guifg=#e9fee8 guibg=NONE gui=bold
hi yamlDocumentHeader  guifg=#00ffbd guibg=NONE gui=NONE
hi cssURL  guifg=NONE guibg=NONE gui=NONE
hi cssFunctionName  guifg=#d1bcb1 guibg=NONE gui=bold
hi cssColor  guifg=#b0b6aa guibg=#191919 gui=NONE
hi cssPseudoClassId  guifg=#e5ede2 guibg=NONE gui=NONE
hi cssClassName  guifg=#ff3349 guibg=NONE gui=bold
hi cssValueLength  guifg=#aeaeb0 guibg=#191919 gui=NONE
hi cssCommonAttr  guifg=#b0b6aa guibg=#191919 gui=NONE
hi cssBraces  guifg=NONE guibg=NONE gui=NONE


