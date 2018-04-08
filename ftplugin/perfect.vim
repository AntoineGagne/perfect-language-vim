if !exists('g:perfect_builtin_file_path')
    let g:perfect_builtin_file_path = '/opt/escher/verificationstudio6/builtin/builtin.pdc'
endif

if !exists('g:perfect_prover_rule_declaration_file_path')
    let g:perfect_prover_rule_declaration_file_path = '/opt/escher/verificationstudio6/builtin/rubric.pdc'
endif

if !exists('g:perfect_build_output_directory')
    let g:perfect_build_output_directory = 'build'
endif

if !exists('g:perfect_template_author')
    let g:perfect_template_author = '<Author name here>'
endif

let g:perfect_plugin_directory = expand('<sfile>:p:h:h')
execute 'set rtp+=' . expand(g:perfect_plugin_directory) . '/perfectsnippets'

compiler perfect

setlocal commentstring=//\ %s

setlocal foldmethod=syntax
setlocal completefunc=syntaxcomplete#Complete
