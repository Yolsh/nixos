{pkgs, lib, config, ...}: {
  options = {
    dev.enable = lib.mkEnableOption "enable default dev packages for the system";
  };

  config = lib.mkIf config.dev.enable {
    environment.systemPackages = with pkgs; [
      # -- ocaml --
      ocaml
      ocamlPackages.findlib
      dune_3
      ocamlPackages.ocaml-lsp
      ocamlformat
      ocamlPackages.utop
      ocamlPackages.ocamlformat-rpc-lib
      # -- python--
      python312
      pyright
      # -- golang --
      go_1_23
      gopls
      # -- rust --
      rustup
      rust-analyzer
      # -- elixir --
      elixir_1_18
      erlang_27
      elixir-ls
      # -- nix lsp --
      nil
	  # -- lua lsp --
	  lua-language-server
    ];
  };
}
