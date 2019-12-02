{ makeSetupHook }:

distro:

makeSetupHook {
  name = "catkin-setup-hook";
  substitutions = {
    inherit distro;
  };
} ./setup-hook.sh
