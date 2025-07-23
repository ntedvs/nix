{ ... }:
{
  home-manager.users.nate = {
    programs.fish = {
      enable = true;

      shellInit = ''
        set -gx PNPM_HOME "$HOME/.local/share/pnpm"
        set -gx PATH "$PNPM_HOME" $PATH
      '';

      shellAliases = {
        sl = "ls -A1";
        copy = "wl-copy <";
      };
    };
  };
}
