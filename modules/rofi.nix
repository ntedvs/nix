{ ... }:
{
  home-manager.users.nate = {
    programs.rofi = {
      enable = true;

      # extraConfig = {
      #   display-drun = "Name: ";
      #   drun-display-format = "{name}";
      # };

      # theme =
      #   let
      #     literal = value: {
      #       _type = "literal";
      #       inherit value;
      #     };
      #   in
      #   {
      #     "*" = {
      #       background-color = literal "transparent";
      #     };

      #     "window" = {
      #       background-color = literal "rgba(64, 52, 52, 0.8)";
      #       border = literal "1px solid";
      #       border-color = literal "#f2c6a0";
      #       color = literal "#f2c6a0";
      #     };
      #   };
    };
  };
}
