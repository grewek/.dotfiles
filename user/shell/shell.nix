{config, pkgs, ...}:
{
   programs.zsh = {
      enable = true;
  };

  programs.zsh.oh-my-zsh = {
      enable = true;
      theme = "eastwood";
  };   
}
