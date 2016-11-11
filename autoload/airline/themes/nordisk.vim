" ----------------------------------------------------------------- "
" name			nordisk												"
" description	A colour scheme closely modelled on					"
"				Arctic Ice Studio’s Nord palette					"
"				https://github.com/arcticicestudio/nord				"
" author		kamil.stachowski@gmail.com							"
" version		0.1 (2016.11.06)									"
" license		GPLv3+												"
" ----------------------------------------------------------------- "

" - preamble ---------------------------------------------------------------------------------- {{{ -

scriptencoding utf-8
let g:airline#themes#nordisk#palette = {}

" --------------------------------------------------------------------------------------------- }}} -
" - palette ----------------------------------------------------------------------------------- {{{ -

let s:col00 = "#252a33"
let s:col01 = "#38404d"
let s:col02 = "#4a5466"
let s:col03 = "#5e6b81"
let s:col04 = "#6f7e98"
let s:col05 = "#d7e3f8"
let s:col06 = "#ffffff"
let s:col07 = "#8fbcbb"
let s:col08 = "#88c0d0"
let s:col09 = "#81a1c1"
let s:col10 = "#5e81ac"
let s:col11 = "#a3be8c"
let s:col12 = "#b48ead"
let s:col13 = "#ebcb8b"
let s:col14 = "#d08770"
let s:col15 = "#bf616a"

" --------------------------------------------------------------------------------------------- }}} -
" - scheme ------------------------------------------------------------------------------------ {{{ -

let g:airline#themes#nordisk#palette.normal = airline#themes#generate_color_map ([s:col06,s:col10], [s:col00,s:col09], [s:col00,s:col10])
let g:airline#themes#nordisk#palette.normal_modified = {
      \ 'airline_c': [ '#ffffff' , '#5f005f' , 255     , 53      , ''     ] ,
      \ }


let g:airline#themes#nordisk#palette.insert = airline#themes#generate_color_map ([s:col06, s:col11], [s:col00, s:col05], [s:col00, s:col11])
let g:airline#themes#nordisk#palette.insert_modified = {
      \ 'airline_c': [ '#ffffff' , '#5f005f' , 255     , 53      , ''     ] ,
      \ }
let g:airline#themes#nordisk#palette.insert_paste = {
      \ 'airline_a': [ s:I1[0]   , '#d78700' , s:I1[2] , 172     , ''     ] ,
      \ }


let g:airline#themes#nordisk#palette.insert = airline#themes#generate_color_map ([s:col06, s:col14], [s:col00, s:col05], [s:col00, s:col14])
let g:airline#themes#nordisk#palette.replace = copy(g:airline#themes#nordisk#palette.insert)
let g:airline#themes#nordisk#palette.replace.airline_a = [ s:I2[0]   , '#af0000' , s:I2[2] , 124     , ''     ]
let g:airline#themes#nordisk#palette.replace_modified = g:airline#themes#nordisk#palette.insert_modified

let g:airline#themes#nordisk#palette.visual = airline#themes#generate_color_map ([s:col06, s:col12], [s:col00, s:col05], [s:col00, s:col12])
let g:airline#themes#nordisk#palette.visual_modified = {
      \ 'airline_c': [ '#ffffff' , '#5f005f' , 255     , 53      , ''     ] ,
      \ }

let g:airline#themes#nordisk#palette.inactive = airline#themes#generate_color_map ([s:col00, s:col02], [s:col00, s:col03], [s:col00, s:col02])
let g:airline#themes#nordisk#palette.inactive_modified = {
      \ 'airline_c': [ '#875faf' , '' , 97 , '' , '' ] ,
      \ }


" Accents are used to give parts within a section a slightly different look or
" color. Here we are defining a "red" accent, which is used by the 'readonly'
" part by default. Only the foreground colors are specified, so the background
" colors are automatically extracted from the underlying section colors. What
" this means is that regardless of which section the part is defined in, it
" will be red instead of the section's foreground color. You can also have
" multiple parts with accents within a section.
let g:airline#themes#nordisk#palette.accents = {
      \ 'red': [ '#ff0000' , '' , 160 , ''  ]
      \ }


" Here we define the color map for ctrlp.  We check for the g:loaded_ctrlp
" variable so that related functionality is loaded iff the user is using
" ctrlp. Note that this is optional, and if you do not define ctrlp colors
" they will be chosen automatically from the existing palette.
if !get(g:, 'loaded_ctrlp', 0)
  finish
endif
let g:airline#themes#nordisk#palette.ctrlp = airline#extensions#ctrlp#generate_color_map(
      \ [ '#d7d7ff' , '#5f00af' , 189 , 55  , ''     ],
      \ [ '#ffffff' , '#875fd7' , 231 , 98  , ''     ],
      \ [ '#5f00af' , '#ffffff' , 55  , 231 , 'bold' ])


" --------------------------------------------------------------------------------------------- }}} -
