augroup perfect
    autocmd!
    autocmd BufNewFile *.pd silent! execute '0r' g:perfect_plugin_directory . '/templates/skeleton.pd'
    autocmd BufNewFile *.pd silent! %substitute#\[:VIM_EVAL:\]\(.\{-\}\)\[:END_EVAL:\]#\=eval(submatch(1))#ge
augroup END
