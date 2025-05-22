{pkgs, ...}: {
  programs.neovim = 
    let
      toLua = str: "lua << EOF\n${str}\nEOF\n";
      toLuaFile = file: "lua << EOF\n${builtins.readFile file}\nEOF\n";
    in {
    enable = true;
    viAlias = true;
    vimAlias = true;
    vimdiffAlias = true;

    extraLuaConfig = ''
      ${builtins.readFile ./nvim/options.lua}
      ${builtins.readFile ./nvim/remaps.lua}
    '';

    plugins = with pkgs.vimPlugins; [
      {
        plugin = nvim-lspconfig;
        config = toLuaFile ./nvim/plugin/lsp.lua;
      }

      {
        plugin = gruvbox-nvim;
        config = "colorscheme gruvbox";
      }

      {
        plugin = nvim-cmp;
        config = toLuaFile ./nvim/plugin/cmp.lua;
      }
      cmp_luasnip
      cmp-nvim-lsp
      luasnip

      {
        plugin = telescope-nvim;
        config = toLuaFile ./nvim/plugin/telescope.lua;
      }

      {
        plugin = nvim-treesitter.withAllGrammars;
        config = toLuaFile ./nvim/plugin/treesitter.lua;
      }
      
      undotree
      harpoon
      lazydev-nvim
      {
        plugin = nvim-autopairs;
        config = toLua "require('nvim-autopairs').setup {}";
      }
    ];
  };
}
