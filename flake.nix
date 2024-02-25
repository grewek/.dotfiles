{
	description = "My first flake";

	inputs = {
		nixpkgs.url = "nixpkgs/nixos-unstable";
		home-manager.url = "github:nix-community/home-manager/master";
		home-manager.inputs.nixpkgs.follows = "nixpkgs";
	};

	outputs = {self, nixpkgs, home-manager, ...}@inputs: {
		nixosConfigurations.nixos = nixpkgs.lib.nixosSystem {
			system = "x86_64-linux";
			modules = [ ./configuration.nix ];
		};

		homeConfigurations.apollo = home-manager.lib.homeManagerConfiguration {
			#inherit nixpkgs.legacyPackages."x86_64-linux";
			pkgs = nixpkgs.legacyPackages."x86_64-linux";
			modules = [ ./home.nix ];
		};
	};
}
