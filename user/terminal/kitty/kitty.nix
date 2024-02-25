{ config,pkgs,... }:
{
  programs.kitty = {
      enable = true;
      theme = "Catppuccin-Mocha";
  };

  programs.kitty.font = {
      name = "JetBrains Mono";
      size = 13;
  };
}
