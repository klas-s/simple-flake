{ pkgs, ... }:
{
  home.username = "yourname";
  home.homeDirectory = "/Users/yourname";
  home.stateVersion = "25.05";

  home.packages = [
    pkgs.maven
    pkgs.git
  ];

  programs.zsh.enable = true;
  programs.home-manager.enable = true;
}
