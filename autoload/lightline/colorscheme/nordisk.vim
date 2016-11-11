" ----------------------------------------------------------------- "
" name			nordisk												"
" description	A colour scheme closely modelled on					"
"				Arctic Ice Studio’s Nord palette					"
"				https://github.com/arcticicestudio/nord				"
" author		kamil.stachowski@gmail.com							"
" version		0.1 (2016.10.22)									"
" license		GPLv3+												"
" ----------------------------------------------------------------- "

" - palette ----------------------------------------------------------------------------------- {{{ -

let s:col00 = [	"#252a33", 0 ]
let s:col01 = [	"#38404d", 0 ]
let s:col02 = [	"#4a5466", 0 ]
let s:col03 = [	"#5e6b81", 0 ]
let s:col04 = [	"#6f7e98", 0 ]
let s:col05 = [	"#d7dbe2", 0 ]
let s:col06 = [	"#ffffff", 0 ]
let s:col07 = [ "#8fbcbb", 0 ]
let s:col08 = [	"#81a1c1", 0 ]
let s:col09 = [	"#88c0d0", 0 ]
let s:col10 = [	"#5e81ac", 0 ]
let s:col11 = [	"#a3be8c", 0 ]
let s:col12 = [	"#b48ead", 0 ]
let s:col13 = [	"#eccf95", 0 ]
let s:col14 = [	"#d18a75", 0 ]
let s:col15 = [	"#bf6971", 0 ]

" --------------------------------------------------------------------------------------------- }}} -
" - scheme ------------------------------------------------------------------------------------ {{{ -

let s:p	= {'normal': {}, 'inactive': {}, 'insert': {}, 'replace': {}, 'visual': {}, 'tabline': {}}

let s:p.inactive.left	= [[s:col00, s:col02]]
let s:p.inactive.middle	= [[s:col00, s:col03]]
let s:p.inactive.right	= [[s:col00, s:col02]]
let s:p.insert.left		= [[s:col06, s:col11]]
let s:p.insert.middle	= [[s:col00, s:col05]]
let s:p.insert.right	= [[s:col00, s:col11]]
let s:p.normal.left		= [[s:col06, s:col10]]
let s:p.normal.middle	= [[s:col00, s:col09]]
let s:p.normal.right	= [[s:col00, s:col10]]
let s:p.replace.left	= [[s:col06, s:col14]]
let s:p.replace.middle	= [[s:col00, s:col05]]
let s:p.replace.right	= [[s:col00, s:col14]]
let s:p.visual.left		= [[s:col06, s:col12]]
let s:p.visual.middle	= [[s:col00, s:col05]]
let s:p.visual.right	= [[s:col00, s:col12]]
let s:p.normal.error	= [[s:col00, s:col15]]
let s:p.normal.warning	= [[s:col00, s:col13]]

" let s:p.tabline.left	= [[s:col00, s:col00]]
" let s:p.tabline.tabsel	= [[s:col00, s:col00]]
" let s:p.tabline.middle	= [[s:col00, s:col00]]
" let s:p.tabline.right	= [[s:col00, s:col00]]

let g:lightline#colorscheme#nordisk#palette	= lightline#colorscheme#flatten(s:p)

" --------------------------------------------------------------------------------------------- }}} -
