# nixpkgs overlays for repos that keep their own generated ROS packages and
# build them with this repo's machinery. They need no pkgs, so they work from
# the flake's lib and from a plain import, and go after this repo's overlay:
#
#   overlays = [ nix-ros-overlay.overlays.default
#                (nix-ros-overlay.lib.rosDistroOverlay { ... }) ];
rec {
  # Turn one generated package set into a rosSelf: rosSuper: overlay. Accepts
  # an overlay function, a generated.nix, or a directory of <pkg>/default.nix;
  # a directory without a generated.nix is what superflore leaves behind when
  # it regenerates only a few packages (--only).
  generatedOverlay = g:
    if builtins.isFunction g then g
    else if builtins.pathExists (g + "/generated.nix") then import (g + "/generated.nix")
    else if builtins.readFileType g == "directory" then
      (rosSelf: _: let
        dirs = builtins.filter
          (n: builtins.pathExists (g + "/${n}/default.nix"))
          (builtins.attrNames (builtins.readDir g));
      in builtins.listToAttrs (map (n: {
        name = n;
        value = rosSelf.callPackage (g + "/${n}") { };
      }) dirs))
    else import g;

  # The package set generated for a bundled distro, for building a distro of
  # your own on top of it: generated = [ (bundledGenerated "jazzy") ./mine ].
  # Passing this path, rather than a copy, keeps every bundled fixup applied.
  bundledGenerated = distro: ../distros + "/${distro}/generated.nix";

  # Add rosPackages.${name}, a distro built from `generated`. Takes the
  # arguments of distros/distro-overlay.nix; `name` defaults to `distro`,
  # which replaces the bundled distro of that name.
  rosDistroOverlay = args: final: prev: let
    name = args.name or args.distro;
  in {
    rosPackages = prev.rosPackages // {
      ${name} = final.rosPackages.mkRosDistro (args // { inherit name; });
    };
  };

  # Layer packages over an existing distro, for a handful of private or
  # patched packages that don't need a distro of their own. They go on after
  # the bundled fixups. Replacing the attribute, rather than calling
  # overrideScope where it is used, keeps the build-platform sets that
  # cross-compilation splices in consistent with it. `overlays` takes the
  # forms generatedOverlay does, or a list of them.
  extendRosDistro = distro: overlays: final: prev: {
    rosPackages = prev.rosPackages // {
      ${distro} = prev.rosPackages.${distro}.overrideScope
        (prev.lib.composeManyExtensions (map generatedOverlay (prev.lib.toList overlays)));
    };
  };
}
