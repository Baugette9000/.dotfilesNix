{ config, lib, pkgs, libx11, stdenv, ... }:

{
  services.xserver.windowManager.dwm.enable = true;
    nixpkgs.overlays = [
     (final: prev: {
	dwm = prev.dwm.overrideAttrs (old :{ src = /home/cleo/.dotfilesNix/suckless/dwm ;         }); 
      })
   ];
}
