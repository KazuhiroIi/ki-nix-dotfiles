{
  inputs = {
    nixpkgs.url = "github:NixOS/nixpkgs/nixpkgs-unstable";
    home-manager = {
      url = "github:nix-community/home-manager";
      inputs.nixpkgs.follows = "nixpkgs";
    };
  };

  outputs = inputs@{ nixpkgs, home-manager, ... }: {
    #nixosConfigurations.desktop = nixpkgs.lib.nixosSystem {
    #  system = "x86_64-linux";
    #  modules = [
    #    ./hosts/desktop/configuration.nix
    #    ./common-configuration.nix
    #
    #    home-manager.nixosModules.home-manager {
    #      home-manager.useGlobalPkgs = true;
    #      home-manager.useUserPackages = true;
    #      home-manager.users.ki = import ./home.nix;
    #    }
    #  ];
    #};
   
    nixosConfigurations.laptop = nixpkgs.lib.nixosSystem {
      system = "x86_64-linux";
      modules = [
        ./hosts/laptop/configuration.nix
        ./common-configuration.nix
 
        home-manager.nixosModules.home-manager {
          home-manager.useGlobalPkgs = true;
          home-manager.useUserPackages = true;
          home-manager.users.ki = import ./home.nix;
        }
      ];
    };
  };
}
