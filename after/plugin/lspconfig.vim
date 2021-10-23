
lua << EOF
    local nvim_lsp = require'lspconfig'
    
--nvim_lsp.ccls.setup{on_attach=on_attach}
    nvim_lsp.tsserver.setup{on_attach=on_attach}

EOF


" LSP config (the mappings used in the default file don't quite work right)
nnoremap <silent> gd <cmd>lua vim.lsp.buf.definition()<CR>
nnoremap <silent> gD <cmd>lua vim.lsp.buf.declaration()<CR>
nnoremap <silent> gr <cmd>lua vim.lsp.buf.references()<CR>
nnoremap <silent> gi <cmd>lua vim.lsp.buf.implementation()<CR>
nnoremap <silent> K <cmd>lua vim.lsp.buf.hover()<CR>
nnoremap <silent> <C-K> <cmd>lua vim.lsp.buf.signature_help()<CR>
"nnoremap <silent> <C-j> <cmd>lua vim.lsp.diagnostic.goto_prev()<CR>
nnoremap <silent> <C-J> <cmd>lua vim.lsp.diagnostic.goto_next()<CR>

" auto-format
autocmd BufWritePre *.js lua vim.lsp.buf.formatting_sync(nil, 100)
autocmd BufWritePre *.ts lua vim.lsp.buf.formatting_sync(nil, 100)
