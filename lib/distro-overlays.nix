# nixpkgs overlays for repos that keep their own ROS packages and build them
# with this repo's machinery. They need no pkgs, so the flake exports them as
# `lib`. Without flakes, the same is a short overlay calling
# rosPackages.lib.mkRosDistro (see docs/external-distros.md).
{
  # Add rosPackages.${distro}, built by rosPackages.lib.mkRosDistro from
  # `args`. `base` may also name a distro under rosPackages, which is looked up
  # before this overlay applies, so a distro can be layered onto one of the
  # same name.
  rosDistroOverlay = args: final: prev: {
    rosPackages = prev.rosPackages // {
      ${args.distro} = final.rosPackages.lib.mkRosDistro (args
        // (if builtins.isString (args.base or null)
            then { base = prev.rosPackages.${args.base}; } else { }));
    };
  };
}
