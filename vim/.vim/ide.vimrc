" IDE

"" Omnicompletion
set omnifunc=syntaxcomplete#Complete

"" Split management
set splitright                                                  "Split to the right
set splitbelow                                                  "Split bellow

"" Moving around tabs
nnoremap tn  :tabnew<CR>
nnoremap tc  :tabclose<CR>

nnoremap th  :tabfirst<CR>
nnoremap tj  :tabnext<CR>
nnoremap tk  :tabprev<CR>
nnoremap tl  :tablast<CR>

"" Buffers
nnoremap <C-b>h :bfirst<CR>
nnoremap <C-b>k :bprevious<CR>
nnoremap <C-b>j :bnext<CR>
nnoremap <C-b>l :blast<CR>
nmap # :b#<CR>
""" remap <C-b> motion
nnoremap <C-b><C-b> <C-b>

"" Make
noremap <F2> :SyntasticCheck<CR>

"" Unite

""" File search
nnoremap <leader>p :Unite file_rec/async<CR>

""" Grep
if executable('ack')
    set grepprg=ack\ --nogroup\ --column\ --smart-case\ --nocolor\ --follow\ $*
    set grepformat=%f:%l:%c:%m
endif
nnoremap <leader>/ :Unite grep:.<CR>

""" Buffers menu
nnoremap <leader>b :Unite -quick-match buffer<cr>

"" Airline
let g:airline#extensions#tabline#enabled=1
let g:airline_powerline_fonts=1

"" NERDTree
autocmd vimenter * NERDTree                               "Open NERDTree on vim start
map <leader>n :NERDTreeToggle<CR>

function! NERDTreeHighlightFile(extension, fg, bg, guifg, guibg)
    exec 'autocmd filetype nerdtree highlight ' . a:extension .' ctermbg='. a:bg .' ctermfg='. a:fg .' guibg='. a:guibg .' guifg='. a:guifg
    exec 'autocmd filetype nerdtree syn match ' . a:extension .' #^\s\+.*'. a:extension .'$#'
endfunction

call NERDTreeHighlightFile('yml', 'yellow', 'none', 'yellow', '#151515')
call NERDTreeHighlightFile('json', 'yellow', 'none', 'yellow', '#151515')
call NERDTreeHighlightFile('html', 'yellow', 'none', 'yellow', '#151515')
call NERDTreeHighlightFile('css', 'cyan', 'none', 'cyan', '#151515')
call NERDTreeHighlightFile('js', 'Red', 'none', '#ffa500', '#151515')
call NERDTreeHighlightFile('php', 'Magenta', 'none', '#ff00ff', '#151515')

let NERDTreeWinPos='right'                                "NERDTree window to the right
let NERDTreeAutoDeleteBuffer=1                            "Delete old buffer when renaming or moving a file

"" Syntastic
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list=1
let g:syntastic_auto_loc_list=1
let g:syntastic_loc_list_height = 5

"" Fugitive
nnoremap <silent> <leader>gs :Gstatus<CR>
nnoremap <silent> <leader>gd :Gdiff<CR>
nnoremap <silent> <leader>gc :Gcommit<CR>
nnoremap <silent> <leader>gb :Gblame<CR>
nnoremap <silent> <leader>gl :Glog<CR>
nnoremap <silent> <leader>gp :Git push<CR>
nnoremap <silent> <leader>gw :Gwrite<CR>
nnoremap <silent> <leader>gr :Gremove<CR>

"" EasyAlign
" Start interactive EasyAlign in visual mode (e.g. vip<Enter>)
vmap <Enter> <Plug>(EasyAlign)

" Start interactive EasyAlign for a motion/text object (e.g. gaip)
nmap ga <Plug>(EasyAlign)

""" TagList settings
"let tlist_auto_highlight_tag      = 1
"let tlist_auto_open               = 0
"let tlist_auto_update             = 1
"let tlist_compact_format          = 1
"let tlist_gainfocus_on_toggleopen = 1
"let tlist_show_one_file           = 1
"let tlist_sort_type               = "name"
"let tlist_use_right_window        = 0
"let tlist_php_settings            = 'php;c:Classes;i:Interfaces;f:Functions'
"
"noremap <leader>l :TlistToggle<CR>


"" Bclose
noremap <leader>q :Bclose<CR>
noremap <leader>q! :Bclose!<CR>

"" {
inoremap {<space> {}<Left>
inoremap {<CR> {<CR>}<ESC>O
inoremap {{ {
inoremap {} {}

"" (
inoremap (<space> ()<Left>
inoremap (<CR> (<CR>)<ESC>O
inoremap (( (
inoremap () ()

"" [
inoremap [<space> []<Left>
inoremap [<CR> [<CR>]<ESC>O<tab>
inoremap [[ [
inoremap [] []

"" more for twig
inoremap {{<space> {{  }}<left><left><left>
inoremap {%<space> {%  %}<left><left><left>
inoremap {#<space> {#  #}<left><left><left>
