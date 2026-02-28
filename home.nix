{ config, pkgs, ... }:

{
  home.username = "charemma";
  home.homeDirectory = "/home/charemma";
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
    jq
    lsd
    neovim
    nodejs
    ripgrep
    starship
    yazi
    zathura
  ];

  programs.home-manager.enable = true;
}
