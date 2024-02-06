{ config, pkgs, self, x11, inputs, ... }:

{
  imports = [
  
  ./pkgs/dunst/dunst.nix
  ./pkgs/autorandr/my-autorandr.nix

  ];


  # Home Manager needs a bit of information about you and the paths it should
  # manage.
  home.username = "cleo";
  home.homeDirectory = "/home/cleo";

  # This value determines the Home Manager release that your configuration is
  # compatible with. This helps avoid breakage when a new Home Manager release
  # introduces backwards incompatible changes.
  #
  # You should not change this value, even if you update Home Manager. If you do
  # want to update the value, then make sure to first check the Home Manager
  # release notes.
  home.stateVersion = "23.11"; # Please read the comment before changing.

  # The home.packages option allows you to install Nix packages into your
  # environment.
  home.packages = with pkgs; [
    hello
    pokemon-colorscripts-mac
      xorg.libX11
      xorg.libX11.dev
      xorg.libxcb
      xorg.libXft
      xorg.libXinerama
      xorg.xinit
      xorg.xinput
  ];

 my-autorandr = {
    # laptop display
    display1 = {
      name = "HDMI-0";
      fp = "00ffffffffffff0030e47e0500000000001a010495221378eadc95a35855a0260d5054000000010101010101010101010101010101012e3680a070381f403020350058c21000001a2e3680a070381f403020350058c21000001a00000000000000000000000000000000000000000002000833ff0a3c961e163696000000001c";
    };
    # samsung via VGA
    display2 = {
      name = "DP-1";
      fp = "00ffffffffffff004c2d23053232524c34130104a5301b78223581a656489a241250542308008100814081809500a940b30001010101023a801871382d40582c4500dd0c1100001e000000fd00383c1e5111000a202020202020000000fc0053796e634d61737465720a2020000000ff00484c4a534330333431300a202000f2";
    };
  };

  services.spotifyd = {
    enable = true;  
  };

  home.file = {
  # ".config/dunst/dunstrc".source = ./dunst/dunstrc;
  # DWM
  ".dwm/autostart.sh".source = ./suckless/dwm/autostart.sh;
  # Bashrc 
  ".bashrc".source = ./bash/.bashrc;
  # Kitty 
  ".config/kitty/kitty.conf".source = ./kitty/kitty.conf;
  # Rofi 
  ".config/rofi/config.rasi".source = ./rofi/config.rasi;
  # Picom 
  ".config/picom/picom.conf".source = ./picom/picom.conf;
  # Nvim 
  ".config/nvim/init.lua".source = ./nvim/init.lua;
  ".config/nvim/lazy-lock.json".source = ./nvim/lazy-lock.json;
  ".config/nvim/lua/core/bootstrap.lua".source = ./nvim/lua/core/bootstrap.lua;
  ".config/nvim/lua/core/default_config.lua".source = ./nvim/lua/core/default_config.lua;
  ".config/nvim/lua/core/init.lua".source = ./nvim/lua/core/init.lua;
  ".config/nvim/lua/core/mappings.lua".source = ./nvim/lua/core/mappings.lua;
  ".config/nvim/lua/core/utils.lua".source = ./nvim/lua/core/utils.lua;
  ".config/nvim/lua/custom/chadrc.lua".source = ./nvim/lua/custom/chadrc.lua;
  ".config/nvim/lua/plugins/init.lua".source = ./nvim/lua/plugins/init.lua;
  ".config/nvim/lua/plugins/configs/cmp.lua".source = ./nvim/lua/plugins/configs/cmp.lua;
  ".config/nvim/lua/plugins/configs/mason.lua".source = ./nvim/lua/plugins/configs/mason.lua;
  ".config/nvim/lua/plugins/configs/lspconfig.lua".source = ./nvim/lua/plugins/configs/lspconfig.lua;
  ".config/nvim/lua/plugins/configs/nvimtree.lua".source = ./nvim/lua/plugins/configs/nvimtree.lua;
  ".config/nvim/lua/plugins/configs/telescope.lua".source = ./nvim/lua/plugins/configs/telescope.lua;
  ".config/nvim/lua/plugins/configs/lazy_nvim.lua".source = ./nvim/lua/plugins/configs/lazy_nvim.lua;
  ".config/nvim/lua/plugins/configs/others.lua".source = ./nvim/lua/plugins/configs/others.lua;
  ".config/nvim/lua/plugins/configs/treesitter.lua".source = ./nvim/lua/plugins/configs/treesitter.lua;
  # Dwm Autostart Symlink 
  #".dwm/autostart.sh".source = ./sucklesss/dwm/autostart.sh;
  };

  # Home Manager can also manage your environment variables through
  # 'home.sessionVariables'. If you don't want to manage your shell through Home
  # Manager then you have to manually source 'hm-session-vars.sh' located at
  # either
  #
  #  ~/.nix-profile/etc/profile.d/hm-session-vars.sh
  #
  # or
  #
  #  /etc/profiles/per-user/cleo/etc/profile.d/hm-session-vars.sh
  #
  home.sessionVariables = {
    # EDITOR = "emacs";
  };

  # Let Home Manager install and manage itself.
  programs.home-manager.enable = true;

}
