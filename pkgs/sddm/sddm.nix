{ pkgs }:

#let
#  imgLink = "https://YOURIMAGELINK/image.png";
#
#  image = pkgs.fetchurl {
#    url = imgLink;
#    sha256 = "sha256-HrcYriKliK2QN02/2vFK/osFjTT1NamhGKik3tozGU0=";
#  };
#in
#pkgs.stdenv.mkDerivation {
#  name = "sddm-theme";
#  src = pkgs.fetchFromGitHub {
#    owner = "MarianArlt";
#    repo = "sddm-sugar-dark";
#    rev = "ceb2c455663429be03ba62d9f898c571650ef7fe";
#    sha256 = "0153z1kylbhc9d12nxy9vpn0spxgrhgy36wy37pk6ysq7akaqlvy";
#  };
#  installPhase = ''
#    mkdir -p $out
#    cp -R ./* $out/
#    cd $out/
#   '';
#}

pkgs.stdenv.mkDerivation {
  name = "archcraft";
  src = pkgs.fetchFromGitHub {
    owner = "Baugette9000";
    repo = ".dotfilesNix/tree/main/sddmthemes/archcraft";
    rev = "af0e63389031619edbe93d71f44a5ece50edc1a2";
    sha256 = "184nd7hmbxa98n1p8izjpx04z517kxfz2wb4f0pnawmr96w779sp";
  };
  installPhase = ''
    mkdir -p $out
    cp -R ./* $out/
   '';
}
