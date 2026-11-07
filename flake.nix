{
  description = "Rhodium (port) | NixOS + niri + home-manager | host: nixos";

  inputs = {
    # NOTE: Rhodium is written and tested against nixos-25.11.
    # To move to another release, change the three `25.11` references below
    # (nixpkgs, home-manager) and run `nix flake update`.
    nixpkgs.url = "github:NixOS/nixpkgs/nixos-25.11";
    nixpkgs-unstable.url = "github:NixOS/nixpkgs/nixos-unstable";

    home-manager = {
      url = "github:nix-community/home-manager/release-25.11";
      inputs.nixpkgs.follows = "nixpkgs";
    };

    nur.url = "github:nix-community/NUR";

    zen-browser = {
      url = "github:0xc000022070/zen-browser-flake";
      inputs.nixpkgs.follows = "nixpkgs";
    };

    kanso-nvim = {
      url = "github:pabloagn/kanso.nvim";
      flake = false;
    };

    chiaroscuro = {
      url = "github:pabloagn/chiaroscuro.rht";
      inputs.nixpkgs.follows = "nixpkgs";
    };

    rhodium-alloys.url = "github:pabloagn/alloys.rhf";

    niri-flake = {
      url = "github:sodiboo/niri-flake";
      inputs.nixpkgs.follows = "nixpkgs";
    };
  };

  outputs =
    {
      self,
      nixpkgs,
      nixpkgs-unstable,
      home-manager,
      nur,
      zen-browser,
      kanso-nvim,
      chiaroscuro,
      rhodium-alloys,
      niri-flake,
    }@inputs:
    let
      lib = nixpkgs.lib;
      system = "x86_64-linux";

      overlaysWithInputs = import ./overlays { inherit inputs; };

      pkgs = import nixpkgs {
        inherit system;
        config = {
          allowUnfree = true;
          input-fonts.acceptLicense = true;
          permittedInsecurePackages = [
            "jitsi-meet-1.0.8043"
            "electron-39.8.10"
          ];
        };
        overlays = [
          nur.overlays.default
          overlaysWithInputs.fonts
        ];
      };

      pkgs-unstable = import nixpkgs-unstable {
        inherit system;
        config.allowUnfree = true;
        overlays = [
          nur.overlays.default
          overlaysWithInputs.fonts
        ];
      };

      rhodiumLib = import ./lib { inherit lib pkgs; };

      # --- Data (everything personal lives under ./data) ---
      dataPath = ./data;
      dataPathUsers = dataPath + "/users/";
      dataPathUserExtras = dataPathUsers + "/extras/";
      dataPathUserPreferences = dataPathUsers + "/preferences/";
      dataPathHosts = dataPath + "/hosts/";

      userData = (import (dataPathUsers + "/users.nix")).users;
      hostData = (import (dataPathHosts + "/hosts.nix")).hosts;
      userPreferences = import dataPathUserPreferences;

      userExtras = {
        path = dataPathUserExtras;
        bookmarksData = import (dataPathUserExtras + "/bookmarks.nix");
        profilesData = import (dataPathUserExtras + "/profiles.nix");
        appsData = import (dataPathUserExtras + "/apps.nix");
        osmiumData = import (dataPathUserExtras + "/osmium.nix");
      };

      # --- Theme selection ---
      getThemeConfig =
        themeName: variant:
        let
          themePath = ./home/assets/themes + "/${themeName}.nix";
          themeConfig =
            if builtins.pathExists themePath then
              import themePath { inherit pkgs; }
            else
              import ./home/assets/themes/chiaroscuro.nix { inherit pkgs; };
        in
        if variant == "light" && themeConfig.theme ? light then
          themeConfig.theme.light
        else
          themeConfig.theme.dark;

      userThemeName = userPreferences.theme.name or "chiaroscuro";
      userThemeVariant = userPreferences.theme.variant or "dark";
      selectedTheme = getThemeConfig userThemeName userThemeVariant;

      targetTheme = import ./home/modules/themes.nix { inherit pkgs inputs; };
      chiaroscuroTheme = inputs.chiaroscuro.themes.kanso-zen;

      mkHost =
        hostKey:
        lib.nixosSystem {
          inherit system pkgs;

          modules = [
            ./hosts/${hostKey}
            home-manager.nixosModules.home-manager
            niri-flake.nixosModules.niri
            {
              home-manager = {
                useGlobalPkgs = true;
                useUserPackages = true;
                backupFileExtension = "backup";
                users.${userData.user_001.username} = import ./users/user_001;
                extraSpecialArgs = {
                  inherit
                    pkgs-unstable
                    inputs
                    rhodiumLib
                    userData
                    targetTheme
                    chiaroscuroTheme
                    userPreferences
                    userExtras
                    ;
                  user = userData.user_001;
                  host = hostData.${hostKey};
                  theme = selectedTheme;
                  fishPlugins = rhodium-alloys.fish;
                  yaziPlugins = rhodium-alloys.yazi;
                  inherit (rhodiumLib.generators.moduleGenerators) mkModule mkPkgModule;
                };
              };
            }
          ];

          specialArgs = {
            inherit pkgs-unstable inputs rhodiumLib;
            users = userData;
            host = hostData.${hostKey};
          };
        };
    in
    {
      formatter.${system} = pkgs.nixfmt-rfc-style;

      # sudo nixos-rebuild switch --flake .#nixos
      nixosConfigurations = {
        nixos = mkHost "host_001";
      };
    };
}
