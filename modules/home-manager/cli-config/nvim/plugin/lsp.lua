local on_attach = function(_, bufnr)
  
    vim.keymap.set('n', '<leader>r', vim.lsp.buf.rename, {buffer = bufnr})
    vim.keymap.set('n', '<leader>a', vim.lsp.buf.code_action, {buffer = bufnr})
  
    vim.keymap.set('n', 'gd', vim.lsp.buf.definition, {buffer = bufnr})
    vim.keymap.set('n', 'gD', vim.lsp.buf.declaration, {buffer = bufnr})
    vim.keymap.set('n', 'gI', vim.lsp.buf.implementation, {buffer = bufnr})
    vim.keymap.set('n', '<leader>D', vim.lsp.buf.type_definition, {buffer = bufnr})
  
    vim.keymap.set('n', 'gr', require('telescope.builtin').lsp_references, {buffer = bufnr})
    vim.keymap.set('n', '<leader>s', require('telescope.builtin').lsp_document_symbols, {buffer = bufnr})
    vim.keymap.set('n', '<leader>vws', require('telescope.builtin').lsp_dynamic_workspace_symbols, {buffer = bufnr})
  
    vim.keymap.set('n', 'K', vim.lsp.buf.hover, {buffer = bufnr})
  
    vim.api.nvim_buf_create_user_command(bufnr, 'Format', function(_)
      vim.lsp.buf.format()
    end, {})
  end
  
  local capabilities = vim.lsp.protocol.make_client_capabilities()
  capabilities = require('cmp_nvim_lsp').default_capabilities(capabilities)
  local serve = function(server_name)
    require'lspconfig'[server_name].setup {
      capabilities = capabilities
    }
  end
  
  serve("pyright")
  serve("ocamllsp")
  serve("rust_analyzer")
  serve("nil_ls")
  serve("gopls")
  serve("elixirls")

  require('lazydev').setup()
  serve("lua_ls")
  -- configs at: https://github.com/neovim/nvim-lspconfig/doc/configs.md
