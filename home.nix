{ config, pkgs, ... }:

let
  isDarwin = pkgs.stdenv.isDarwin;
in {
  imports = [
    ./backup.nix
  ];
  home.username = "charemma";
  home.homeDirectory = if isDarwin then "/Users/charemma" else "/home/charemma";
  home.stateVersion = "24.05";

  nixpkgs.config.allowUnfree = true;

  home.packages = with pkgs; [
    bat
    chezmoi
    claude-code
    direnv
    fd
    fzf
    glow
    go
    gh
    jq
    just
    k9s
    kubectl
    lsd
    neovim
    nodejs
    ripgrep
    starship
    yazi
  ] ++ lib.optionals (!isDarwin) [
    zathura
  ];

  news.display = "silent";
  programs.home-manager.enable = true;
}
