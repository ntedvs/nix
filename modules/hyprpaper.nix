{ ... }:
{
  home-manager.users.nate = {
    services.hyprpaper = {
      enable = true;

      settings = {
        preload = "/home/nate/play/blob/back.jpg";
        wallpaper = ", /home/nate/play/blob/back.jpg";
      };
    };
  };
}
