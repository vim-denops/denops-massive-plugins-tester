nnoremap ; :
nnoremap : ;

if has('win32') || has('mac')
  set clipboard=unnamed
else
  set clipboard=unnamed,unnamedplus
endif

execute printf('set runtimepath+=%s', fnamemodify('../denops.vim', ':p'))
execute printf('set runtimepath+=%s', fnamemodify('../denops-startup-recorder.vim', ':p'))
execute printf('set runtimepath+=%s', fnamemodify('.', ':p'))

function! s:capture(expr) abort
  let l:result = execute(a:expr)
  enew
  call append(0, split(l:result, '\n'))
  setlocal nomodifiable nomodified buftype=nofile noswapfile
endfunction
command! -nargs=* Capture call s:capture(<q-args>)
