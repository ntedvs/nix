{ pkgs, ... }:
{
  home-manager.users.nate = {
    programs.git = {
      enable = true;
      userName = "Nate";

      userEmail = "nate@qstreet.org";
      # userEmail = "smelloderum@gmail.com";

      signing = {
        key = "ssh-ed25519 AAAAC3NzaC1lZDI1NTE5AAAAIJN3WETrTpxhAZCHo0NxEzpOS9RsTqKoXxKayQskQz8K";
        # key = "ssh-ed25519 AAAAC3NzaC1lZDI1NTE5AAAAIPEldbAvNHkQo2b6qIdXbhIJZSfjtaV9rjbOfUoCoNO9";

        format = "ssh";
        signer = "${pkgs._1password-gui}/bin/op-ssh-sign";
        signByDefault = true;
      };
    };
  };
}
