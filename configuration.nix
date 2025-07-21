
{ config, pkgs, ... }:
{
  imports = [
    ./hardware-configuration.nix
    <home-manager/nixos>
  ];

  boot.loader.systemd-boot.enable = true;
  networking.networkmanager.enable = true;

  time.timeZone = "America/New_York";

  users.users.nate = {
    isNormalUser = true;
    description = "Nate";
    extraGroups = [
      "networkmanager"
      "wheel"
    ];
  };

  nixpkgs.config.allowUnfree = true;
  system.stateVersion = "25.05";

  programs.hyprland = {
    enable = true;
    xwayland.enable = true;
  };

  programs.fish.enable = true;
  users.users.nate.shell = pkgs.fish;

  environment.systemPackages = with pkgs; [
    nixfmt-rfc-style
    rofi-wayland
  ];

  home-manager.users.nate =
    { pkgs, ... }:
    {
      nixpkgs.config.allowUnfree = true;
      home.stateVersion = "25.05";

      programs.vscode = {
        enable = true;

        profiles.default.extensions = with pkgs.vscode-extensions; [
          rust-lang.rust-analyzer
          ms-python.python
          bradlc.vscode-tailwindcss
          tamasfe.even-better-toml
          esbenp.prettier-vscode
          ritwickdey.liveserver
          charliermarsh.ruff
          zhuangtongfa.material-theme
          pkief.material-icon-theme
          jnoortheen.nix-ide
          vscodevim.vim
        ];
      };

      programs.alacritty.enable = true;
      programs.firefox.enable = true;
      programs.vim.enable = true;
      programs.git.enable = true;

      home.packages = with pkgs; [
        _1password-gui
      ];
    };
}
