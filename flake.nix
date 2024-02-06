{

  description = "NixOS flake configuration.";

  inputs = { 
   nixpkgs.url = "nixpkgs/nixos-23.11";
   home-manager.url = "github:nix-community/home-manager/release-23.11";
   home-manager.inputs.nixpkgs.follows = "nixpkgs";
  };

  outputs = { self, nixpkgs, home-manager, ... }: 
    let 
     lib = nixpkgs.lib;
     system = "x86_64-linux";
     pkgs = nixpkgs.legacyPackages.${system};
    in { 
    nixosConfigurations = {
      hardware.nvidia.enable = true;
      nixos = lib.nixosSystem {
	      inherit system;
	        modules = [ ./nixos/configuration.nix ];
       };
    };    
    firefox-addons = {
        url = "gitlab:rycee/nur-expressions?dir=pkgs/firefox-addons";
        inputs.nixpkgs.follows = "nixpkgs";
      };
    homeConfigurations = { 
      hardware.nvidia.enable = true;
      cleo = home-manager.lib.homeManagerConfiguration {
        inherit pkgs;
	        modules = [ ./home/home.nix ];
      };
    };
  };

}
