set expandtab
set tabstop=2
set shiftwidth=2

let b:ale_linters=['gcc']
let b:ale_fixers=['clang-format', 'trim_whitespace', 'remove_trailing_lines']
let b:ale_fix_on_save = 1
