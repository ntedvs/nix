{ ... }:
{
  home-manager.users.nate = {
    programs.waybar = {
      enable = true;

      settings = {
        mainBar = {
          position = "bottom";
          spacing = 32;

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
            format-off = "Off";
            format-on = "Disconnected";
            format-connected = "{device_alias}";
            on-click = "blueman-manager";
            tooltip = false;
          };

          network = {
            format-disabled = "Off";
            format-disconnected = "Disconnected";
            format-wifi = "{essid}";
            on-click = "nm-connection-editor";
            tooltip = false;
          };

          pulseaudio = {
            format = "{volume}%";
            scroll-step = 5;
            tooltip = false;
          };

          clock = {
            format = "{:%B %e, %H:%M}";
            tooltip = false;
          };
        };
      };

      style = ''
        window#waybar {
          border: 1px solid #f2c6a0;
          background: rgba(64, 52, 52, 0.8);
          color: #f2c6a0;
          font-family: "Open Sans";
        }

        #clock {
          margin-right: 32px;
        }

        #workspaces button {
          padding: 4px;
          border: none;
          border-radius: 0;
          background: transparent;
          box-shadow: none;
          color: #f2c6a0;
        }

        #workspaces button.active {
          background: #f2c6a0;
          color: rgb(64, 52, 52);
        }
      '';
    };
  };
}
