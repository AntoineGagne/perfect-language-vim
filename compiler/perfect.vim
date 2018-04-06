if exists('current_compiler')
    finish
endif

let g:current_compiler = "eschertool"

if exists(':CompilerSet') != 2
    command -nargs=* CompilerSet setlocal <args>
endif

let s:save_cpo = &cpo
set cpo&vim

execute "CompilerSet makeprg="
            \ . escape(g:current_compiler 
            \ . ' -vpd=' . fnameescape(g:perfect_build_output_directory)
            \ . ' -vud=' . fnameescape(g:perfect_build_output_directory)
            \ . ' -sb=' . fnameescape(g:perfect_builtin_file_path)
            \ . ' -sr=' . fnameescape(g:perfect_prover_rule_declaration_file_path)
            \ . ' %', ' \')

CompilerSet errorformat=%f\ (%l\\,%c)%m

let &cpo = s:save_cpo
unlet s:save_cpo
