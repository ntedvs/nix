{ ... }:
{
  programs.hyprland.enable = true;

  home-manager.users.nate = {
    wayland.windowManager.hyprland = {
      enable = true;

      settings = {
        exec-once = [
          "waybar"
          "hyprpaper"
          "hyprctl setcursor phinger-cursors-dark 24"
        ];

        bind = [
          "alt, a, exec, alacritty"
          "alt, q, killactive"
          "alt, m, exit"

          "alt, left, workspace, -1"
          "alt, right, workspace, +1"

          "alt, space, exec, rofi -show drun"

          "alt, 1, movetoworkspace, 1"
          "alt, 2, movetoworkspace, 2"
          "alt, 3, movetoworkspace, 3"
          "alt, 4, movetoworkspace, 4"
          "alt, 5, movetoworkspace, 5"
        ];

        bindm = [
          "alt, mouse:272, movewindow"
          "alt, mouse:273, resizewindow"
        ];

        decoration = {
          blur = {
            enabled = false;
          };
        };

        general = {
          gaps_in = 8;
          gaps_out = 16;

          border_size = 0;
        };

        input = {
          kb_options = "caps:escape";
        };

        cursor = {
          no_hardware_cursors = true;
        };
      };
    };
  };
}
