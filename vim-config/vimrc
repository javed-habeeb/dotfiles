" ========= BASIC VIM SETTINGS =========

set number            " Show line numbers on the left
filetype plugin on
syntax on             " Enable syntax highlighting
set tabstop=4         " Number of spaces a <Tab> counts for
set shiftwidth=4      " Number of spaces to use for each step of (auto)indent
set expandtab         " Use spaces instead of actual tab characters
set autoindent        " Auto-indent new lines to the same level as the previous line
set smartindent       " Enable smart indentation (especially useful for C)

set cursorline        " Highlight the current line
set nowrap            " Do not wrap long lines onto the next line
set showcmd           " Show typed command in the bottom right while typing
set showmode          " Display the mode (INSERT, VISUAL, etc.) at the bottom
set incsearch         " Show search matches as you type
set hlsearch          " Highlight all search matches
set backspace=indent,eol,start  " Make backspace behave like you'd expect in most editors


augroup asm_fix
    autocmd!
    autocmd FileType asm call s:AsmCommentFix()
augroup END

function! s:AsmCommentFix()
    syntax clear asmComment
    syntax match asmComment ";.*$"
    highlight asmComment ctermfg=Red guifg=Red
endfunction

" ========= CUSTOM COMMAND =========

" Define a custom command :Run that saves the file, compiles it with gcc,
" and runs the resulting binary
command! Run :w | :!gcc % -o %< && ./%<

" Explanation:
"   :w        → save the current file
"   :!        → run a shell command
"   gcc %     → compile the current file (e.g., hello.c)
"   -o %<     → output executable with same name as file but no .c (e.g., hello)
"   && ./%<   → if compilation succeeds, run the program

" ========= KEYBINDING =========

" Map <leader>r (usually \r) to compile and run the current C file
" You can press \ + r in normal mode to trigger it
nnoremap <leader>r :w<CR>:redraw!<CR>:!clear; gcc % -o %< && ./%<<CR>

"function to compile and run with optional flags
" Function to compile and run C code with optional flags
function! CompileRunC(...)
    let l:flags = join(a:000, ' ')
    write
    redraw!
    execute '!clear; gcc ' . expand('%') . ' -o ' . expand('%:r') . ' ' . l:flags . ' && ./'. expand('%:r')
endfunction

" Default: compile & run with no flags
nnoremap <leader>r :call CompileRunC()<CR>

" Flexible: prompt for custom flags (like -lm, -Wall, -g)
nnoremap <leader>f :call CompileRunC(input('Flags: '))<CR>


" ========= FILETYPE-SPECIFIC SETTINGS =========

" For C files, use 4-space indents, and make sure tabs are expanded to spaces
autocmd FileType c setlocal shiftwidth=4 tabstop=4 expandtab


