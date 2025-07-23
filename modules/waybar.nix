{ ... }:
{
  home-manager.users.nate = {
    programs.waybar = {
      enable = true;

      settings = {
        mainBar = {
          position = "bottom";
          spacing = 16;

          margin-top = 0;
          margin-left = 16;
          margin-right = 16;
          margin-bottom = 16;

          modules-left = [ "hyprland/workspaces" ];
          modules-right = [
            "bluetooth"
            "network"
            "pulseaudio"
            "clock"
          ];

          bluetooth = {
            format = "󰂯";
            on-click = "blueman-manager";
          };

          network = {
            format-wifi = "󰖩";
            on-click = "nm-connection-editor";
          };

          pulseaudio = {
            format-bluetooth = "{volume}%";
            scroll-step = 5;
          };

          clock = {
            format = "{:%B %e, %H:%M}";
          };
        };
      };

      style = ''
        window#waybar {
          font-family: "Manrope";
          background: #2b2b2b;
          color: white;
        }

        #bluetooth, #network {
          font-family: "Symbols Nerd Font";
          font-size: 16;
        }

        #workspaces button {
          color: white;
          padding: 2;
        }
      '';
    };
  };
}
