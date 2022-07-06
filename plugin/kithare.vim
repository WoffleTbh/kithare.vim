if exists("kh_loaded")
    finish
endif
let g:kh_loaded = 1

" Add icon for vim-devicons
let g:WebDevIconsUnicodeDecorateFileNodesExtensionSymbols = {}
let g:WebDevIconsUnicodeDecorateFileNodesExtensionSymbols['kh'] = 'κ'

augroup kithare_plugin
    au!
    autocmd BufNewFile,BufRead *.kh set ft=kithare
augroup END
