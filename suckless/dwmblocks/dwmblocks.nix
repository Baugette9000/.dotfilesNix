{ pkgs ? import <nixpkgs> {}
}:

pkgs.slstatus.overrideDerivation (old: {
  src = ~/.dotfilesNix/suckless/dwmblocks;
})

