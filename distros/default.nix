# Define all supported ROS distros

self: super: {
  rosPackages = rec {
    recurseForDerivations = true;
    lib = super.lib // import ../lib { inherit lib self; } // {
      # A distro's package set as a scope; see distro-overlay.nix for the
      # arguments. Publish it at rosPackages.<distro>, where cross-compilation
      # splicing looks for it; the flake's lib.rosDistroOverlay does that.
      mkRosDistro = args: mkRosDistroOverlay args self super;
    };

    # Callers from when ROS 1 was supported still pass `version = 2`, which
    # is accepted and ignored.
    mkRosDistroOverlay = args:
      assert (args.version or 2) == 2;
      import ./distro-overlay.nix (removeAttrs args [ "version" ]);

    humble = lib.mkRosDistro { distro = "humble"; };
    jazzy = lib.mkRosDistro { distro = "jazzy"; };
    kilted = lib.mkRosDistro { distro = "kilted"; };
    lyrical = lib.mkRosDistro { distro = "lyrical"; };
    rolling = lib.mkRosDistro { distro = "rolling"; };
  };
}
