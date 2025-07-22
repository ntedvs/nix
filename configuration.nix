{ config, pkgs, ... }:
{
  imports = [
    ./hardware-configuration.nix
    <home-manager/nixos>
  ];

  home-manager.backupFileExtension = "backup";
  boot.loader.systemd-boot.enable = true;
  networking.networkmanager.enable = true;
  networking.hostName = "nixos";

  time.timeZone = "America/New_York";

  users.users.nate = {
    isNormalUser = true;
    description = "Nate";
    extraGroups = [
      "networkmanager"
      "wheel"
    ];
  };

  system.stateVersion = "25.05";
  nixpkgs.config.allowUnfree = true;

  programs.hyprland = {
    enable = true;
  };

  programs.fish.enable = true;
  users.users.nate.shell = pkgs.fish;

  environment.systemPackages = with pkgs; [
    nixfmt-rfc-style
    rofi-wayland
    hollywood
    cmatrix
    neofetch
    wl-clipboard
    hyprpaper
  ];

  home-manager.users.nate =
    { pkgs, ... }:
    {
      home.stateVersion = "25.05";
      nixpkgs.config.allowUnfree = true;

      dconf.settings = {
        "org/gnome/desktop/interface" = {
          color-scheme = "prefer-dark";
        };
      };

      programs.fish = {
        enable = true;

        shellAliases = {
          sl = "ls -A1";
          clean = "rm -rf node_modules pnpm-lock.yaml .next && pnpm up --latest";
        };

        functions = {
          copy = ''
            if test -z $argv[1]
              echo "Usage: copy <file>"
              return 1
            end

            wl-copy < $argv[1]
          '';
        };
      };

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
        discord
      ];
    };
}
