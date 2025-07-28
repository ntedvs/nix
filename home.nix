{ pkgs, ... }:
{
  home.username = "nate";
  home.homeDirectory = "/home/nate";
  home.stateVersion = "25.05";

  programs.home-manager.enable = true;
  programs.firefox.enable = true;

  gtk = {
    enable = true;

    theme = {
      name = "Adwaita-dark";
      package = pkgs.gnome-themes-extra;
    };
  };

  home.packages = with pkgs; [
    networkmanagerapplet
    wl-clipboard
    unzip

    nixd
    nixfmt-rfc-style

    neofetch
    cmatrix
    hollywood
    btop

    vim

    nodejs
    pnpm

    (python3.withPackages (ps: with ps; [ pip ]))
    uv

    rustup
    gcc

    open-sans
    roboto-mono

    _1password-gui
    discord
  ];
}
