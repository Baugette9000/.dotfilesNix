{ config, lib, pkgs, libx11, stdenv, ... }:

{
  boot.extraModulePackages = [ config.boot.kernelPackages.nvidia_x11 ];
  boot.initrd.kernelModules = [ "nvidia" ];
  services.xserver.videoDrivers = ["nvidia"];

      hardware.opengl = {  
        enable = true;
        driSupport = true;
        driSupport32Bit = true;
      };
  
    
  hardware.nvidia = {
    modesetting.enable = true;
    powerManagement.enable = false;
    powerManagement.finegrained = false;
    open = false;
    nvidiaSettings = true;
    package = config.boot.kernelPackages.nvidiaPackages.stable; 

  };
}
