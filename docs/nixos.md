# NixOS Integration

This repo can be used as a [flake](https://nixos.wiki/wiki/Flakes), and provides `overlay` and `nixosModule` outputs. This functionality can also be used without flakes.

## Configuring overlay

If you just want to use ROS packages in your NixOS configuration, you may add this repo as a nixpkgs overlay. If you want more complete integration of ROS with NixOS, you may instead use the provided NixOS module (see next section).

Note that this overlay applies overrides to the Python package set, and therefore cannot coexist with other overlays that do the same, due to limitations in nixpkgs.

If using flakes, first add this repo as a flake input and then use the overlay by adding the following config snippet:
```nix
nixpkgs.overlays = [ nix-ros-overlay.overlay ];
```

If not using flakes, add the following config snippet, filling out the commit and sha256 as needed:
```nix
nixpkgs.overlays = let
    nix-ros-overlay = builtins.fetchTarball {
      url = https://github.com/lopsided98/nix-ros-overlay/archive/<commit>.tar.gz;
      sha256 = "<sha256>";
    };
in [ (import (nix-ros-overlay + "/overlay.nix")) ];
```

## Configuring NixOS module

This repo includes a NixOS module that integrates ROS into NixOS. It adds the package set as a overlay, configures ROS environment variables and may optionally start ROS nodes as systemd services.

If using flakes, import the `nixosModule` output in your config:
```nix
imports = [ nix-ros-overlay.nixosModule ];
```

Otherwise, import the `modules` directory:
```nix
imports = let
    nix-ros-overlay = builtins.fetchTarball {
      url = https://github.com/lopsided98/nix-ros-overlay/archive/<commit>.tar.gz;
      sha256 = "<sha256>";
    };
in [ (nix-ros-overlay + "/modules") ];
```

Then, enable basic ROS integration:
```nix
services.ros.enable = true;
```

See the contents of the `modules` directory for the other available options.