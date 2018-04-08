setlocal expandtab
setlocal tabstop=4
setlocal softtabstop=4
setlocal shiftwidth=4

setlocal nolisp
setlocal autoindent
setlocal indentexpr=PerfectIndent(v:lnum)

function! PerfectIndent(lnum)
    let previousLineNumber = prevnonblank(a:lnum - 1)
    let previousLine = getline(previousLineNumber)
    let currentLine = getline(a:lnum)

    let classBeginPattern = '\s*\(final\s\+\)\?class\s\+\(\w\|_\)\+\(\d\|\w\|_\)*\s*\^=\s*\(enum\s*\)\?$'
    let classEndPattern = '\s*end;\s*'
    if previousLine =~ classBeginPattern && currentLine !~ classEndPattern && currentLine !~ classBeginPattern
        return indent(previousLineNumber) + &shiftwidth
    endif

    if currentLine =~ classEndPattern
        return indent(previousLineNumber) - &shiftwidth
    endif

    return indent(previousLineNumber)
endfunction
