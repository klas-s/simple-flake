{ pkgs, ... }:
{
  home.username = "yourname";
  home.homeDirectory = "/Users/yourname";
  home.stateVersion = "25.05";

  home.packages = [
    pkgs.maven
    pkgs.git
    pkgs.lens
    pkgs.dbeaver-bin
  ];

  programs.java = {
    enable = true;
    package = pkgs.jdk25;
  };

  targets.darwin.linkApps.enable = false;
  targets.darwin.copyApps.enable = true;

  programs.zsh.enable = true;
  programs.home-manager.enable = true;
}
