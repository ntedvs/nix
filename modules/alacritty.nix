{ ... }:
{
  home-manager.users.nate = {
    programs.alacritty = {
      enable = true;

      settings = {
        window = {
          opacity = 0.8;

          padding = {
            x = 8;
            y = 8;
          };
        };

        font = {
          normal = {
            family = "Roboto Mono";
          };
        };

        colors = {
          primary = {
            background = "#403434";
            foreground = "#f2c8a2";
          };
        };
      };
    };
  };
}
