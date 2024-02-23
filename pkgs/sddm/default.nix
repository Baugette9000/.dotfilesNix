{ lib, pkgs, ... }:
{
  environment.systemPackages = with pkgs; [
    sddm-sugar-dark-theme
  ];

}
