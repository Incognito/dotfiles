" PHP

"" Phpcomplete
let g:phpcomplete_parse_docblock_comments=1

"" CTags
noremap <F3> :! exctags -R --fields=+aimS --languages=php --exclude="cache" .<CR>

" Twig

"" syntax highlight for html.twig
autocmd BufNewFile,BufRead  *.html.twig setlocal syntax=htmljinja
"" syntax highlight for xml.twig
autocmd BufNewFile,BufRead  *.xml.twig setlocal syntax=htmljinja
"" syntax highlight for js.twig
autocmd BufNewFile,BufRead  *.js.twig setlocal syntax=javascript
"" syntax highlight for css.twig
autocmd BufNewFile,BufRead  *.css.twig setlocal syntax=css
