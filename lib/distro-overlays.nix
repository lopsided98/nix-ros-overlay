# nixpkgs overlays for repos that keep their own ROS package expressions and
# build them with this repo's machinery. They need no pkgs, so they work from
# the flake's lib and from a plain import, and go after this repo's overlay:
#
#   overlays = [ nix-ros-overlay.overlays.default
#                (nix-ros-overlay.lib.rosDistroOverlay { ... }) ];
rec {
  # Turn one package set into a rosSelf: rosSuper: overlay. Accepts an overlay
  # function, a file holding one, or a directory of <pkg>/default.nix, which
  # is what ros2nix, or superflore regenerating only a few packages (--only),
  # leaves behind.
  packageSetOverlay = g:
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

  # Add rosPackages.${distro}, built by mkRosDistro from `args`. `base` may
  # also name a distro under rosPackages, which is looked up before this
  # overlay applies, so a distro can be layered onto one of the same name.
  rosDistroOverlay = args: final: prev: {
    rosPackages = prev.rosPackages // {
      ${args.distro} = final.rosPackages.mkRosDistro (args
        // (if builtins.isString (args.base or null)
            then { base = prev.rosPackages.${args.base}; } else { }));
    };
  };
}
