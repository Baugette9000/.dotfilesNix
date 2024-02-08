{ config, lib, pkgs, libx11, stdenv, ... }:

{
  services.xserver.windowManager.dwm.enable = true;
    services.xserver.windowManager.dwm.package = pkgs.dwm.override {
    conf = /home/cleo/.dotfilesNix/suckless/dwm;
    patches = [ /home/cleo/.dotfilesNix/suckless/dwm ]; # Or some `fetchPatch` thing
  };
  #nixpkgs.overlays = [
  #   (final: prev: {
	#dwm = prev.dwm.overrideAttrs (old :{ src = /home/cleo/.dotfilesNix/suckless/dwm;});
  #    })
  #];
}
