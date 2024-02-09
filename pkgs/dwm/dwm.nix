{ config, lib, pkgs, libx11, stdenv, ... }:

{
  #services.xserver.displayManager.defaultSession = "none+dwm";
services.xserver.windowManager.dwm.enable = true;
 nixpkgs.overlays = [
    (final: prev: {
      dwm = prev.dwm.overrideAttrs (old: {src = /home/cleo/.dotfilesNix/suckless/dwm;}); #FIX ME: Update with path to your dwm folder
    })
  ];
}
