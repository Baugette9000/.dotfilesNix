{ config, lib, pkgs, libx11, stdenv, ... }:
{

environment.systemPackages = [
(pkgs.picom.overrideAttrs (oldAttrs: rec {
        pname = "picom-allusive";
        version = "0.3.1";
        src = pkgs.fetchFromGitHub {
          owner = "allusive-dev";
          repo = "picom-allusive";
          rev = version;
          hash = "sha256-lk4Ll0mi9h3BAqwgOzFQw4WYKnSW9XTl3PjoK2E4WKg=";
        };
        postInstall = ''
        chmod +x $out/bin/picom-trans
      '' + oldAttrs.postInstall;
      }))
];

}
