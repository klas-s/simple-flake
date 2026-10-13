{ pkgs, ... }:
{
  home.username = "yourname";
  home.homeDirectory = "/Users/yourname";
  home.stateVersion = "25.05";

  home.packages = [
    pkgs.maven
    pkgs.git
    pkgs.lens
    pkgs.vscode
    pkgs.dbeaver-bin
    pkgs.jetbrains-mono
  ];

  programs.java = {
    enable = true;
    package = pkgs.jdk25;
  };

  targets.darwin.linkApps.enable = false;
  targets.darwin.copyApps.enable = true;

  programs.ghostty = {
    enable = true;
    package = pkgs.ghostty-bin;
    enableZshIntegration = true;
    settings = {
      theme = "light:Catppuccin Latte,dark:Catppuccin Mocha";
      font-family = "JetBrains Mono";
      font-size = 14;
      window-padding-x = 12;
      window-padding-y = 12;
      window-padding-balance = true;
      background-opacity = 0.95;
      background-blur = true;
      macos-titlebar-style = "tabs";
      unfocused-split-opacity = 0.8;
      cursor-style = "bar";
      copy-on-select = "clipboard";
    };
  };

  programs.zsh.enable = true;
  programs.home-manager.enable = true;
}
