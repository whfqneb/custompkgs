{self, inputs, ...}: {
  perSystem = {pkgs, ...}: let
    inherit (pkgs) callPackage;

    mkPackage = path: callPackage path {};
  in {
    packages = {
      phocus-oxocarbon = mkPackage ./phocus-oxocarbon.nix;
      win11-icon-theme = mkPackage ./win11-icon-theme.nix;
    };
  };
}

