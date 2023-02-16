set sessionoptions-=options " Don't store maps or options
nnoremap <leader>S :mksession! <C-r>=v:this_session<CR>

nnoremap <leader>s :Sessions<CR>

command! -bang -nargs=? Sessions call fzf#run(fzf#wrap(
      \ {'dir': '~/dev/sessions', 'source': 'ls *.vim', 'sink': function('<sid>LoadSession'), 'options': ['--prompt=Session> ', '--query', <q-args>]},
      \ <bang>0
      \))

function! s:LoadSession(session)
  let session_file = '~/dev/sessions/'.a:session
  echom 'Restoring session: <'.session_file.'>'
  bufdo bd
  execute 'source '.session_file
endfunction
