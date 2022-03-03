set number

set splitright

set cursorcolumn

set history=1000


colorscheme my


"press cntrl+P to re-execute last command
noremap <C-P> @:<CR>

"when somithing is delete with dd or x this will be lost and not preserved in any registry
nnoremap d "_d
vnoremap d "_d

nnoremap x "_x
vnoremap x "_x


runtime! ftplugin/man.vim


"show difference betweeen edited buffer and original file
function! s:DiffWithSaved()
  let filetype=&ft
  diffthis
  vnew | r # | normal! 1Gdd
  diffthis
  exe "setlocal bt=nofile bh=wipe nobl noswf ro ft=" . filetype
endfunction
com! Diffsaved call s:DiffWithSaved()
