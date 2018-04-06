augroup perfect
    autocmd!

    " Taken from:
    " http://vim.wikia.com/wiki/Use_eval_to_create_dynamic_templates
    " (Thu Apr  5 20:14:24 EDT 2018)
    autocmd BufNewFile *.pd silent! execute '0r' g:perfect_plugin_directory . '/templates/skeleton.pd'
    autocmd BufNewFile *.pd silent! %substitute#\[:VIM_EVAL:\]\(.\{-\}\)\[:END_EVAL:\]#\=eval(submatch(1))#ge
augroup END
