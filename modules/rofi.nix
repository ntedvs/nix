{ ... }:
{
  home-manager.users.nate = {
    programs.rofi = {
      enable = true;

      extraConfig = {
        display-drun = "Name";
        drun-display-format = "{name}";
      };
    };
  };
}
