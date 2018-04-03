if !exists('g:perfect_builtin_file_path')
    let g:perfect_builtin_file_path = '/opt/escher/verificationstudio6/builtin/builtin.pdc'
endif

if !exists('g:perfect_prover_rule_declaration_file_path')
    let g:perfect_prover_rule_declaration_file_path = '/opt/escher/verificationstudio6/builtin/rubric.pdc'
endif

if !exists('g:perfect_build_output_directory')
    let g:perfect_build_output_directory = 'build'
endif

let &makeprg="eschertool -vpd=" . g:perfect_build_output_directory . " -vud=" . g:perfect_build_output_directory . " -sb=" . g:perfect_builtin_file_path . " -sr=" . g:perfect_prover_rule_declaration_file_path . " %"
setlocal errorformat=%f\ (%l\\,%c)%m

setlocal commentstring=//\ %s

setlocal foldmethod=syntax
setlocal completefunc=syntaxcomplete#Complete

setlocal expandtab
setlocal tabstop=4
setlocal softtabstop=4
setlocal shiftwidth=4
