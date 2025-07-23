{ pkgs, ... }:
{
  home.username = "nate";
  home.homeDirectory = "/home/nate";
  home.stateVersion = "25.05";

  programs.home-manager.enable = true;
  programs.firefox.enable = true;

  home.packages = with pkgs; [
    networkmanagerapplet
    wl-clipboard

    nixd
    nixfmt-rfc-style

    neofetch
    cmatrix
    hollywood
    btop

    vim

    nodejs
    pnpm

    nerd-fonts.symbols-only
    manrope

    _1password-gui
    discord
  ];
}
