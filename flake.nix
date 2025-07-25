{
  inputs = {
    nixpkgs.url = "github:nixos/nixpkgs/nixos-unstable";

    home-manager = {
      url = "github:nix-community/home-manager";
      inputs.nixpkgs.follows = "nixpkgs";
    };

    hyprland = {
      url = "github:hyprwm/hyprland";
      inputs.nixpkgs.follows = "nixpkgs";
    };
  };

  outputs =
    { nixpkgs, home-manager, ... }:
    {
      nixosConfigurations.default = nixpkgs.lib.nixosSystem {
        system = "x86_64-linux";
        modules = [
          ./configuration.nix
          ./modules/hyprland.nix
          ./modules/hyprpaper.nix
          ./modules/fish.nix
          ./modules/alacritty.nix
          ./modules/vscode.nix
          ./modules/rofi.nix
          ./modules/waybar.nix
          ./modules/git.nix
          ./modules/ollama.nix

          home-manager.nixosModules.home-manager
          {
            home-manager.useGlobalPkgs = true;
            home-manager.useUserPackages = true;
            home-manager.users.nate = import ./home.nix;
            home-manager.backupFileExtension = "backup";
          }
        ];
      };
    };
}
