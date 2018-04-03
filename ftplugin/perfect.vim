setlocal makeprg=eschertool\ -vpd=build\ -vud=build\ -sb=/opt/escher/verificationstudio6/builtin/builtin.pdc\ -sr=/opt/escher/verificationstudio6/builtin/rubric.pdc\ %
setlocal errorformat=%f\ (%l\\,%c)%m

setlocal commentstring=//\ %s

setlocal foldmethod=syntax
setlocal completefunc=syntaxcomplete#Complete

setlocal expandtab
setlocal tabstop=4
setlocal softtabstop=4
setlocal shiftwidth=4
