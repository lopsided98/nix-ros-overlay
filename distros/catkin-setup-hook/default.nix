{ makeSetupHook, pythonPackages }:

makeSetupHook {
  name = "catkin-setup-hook";
  deps = [ pythonPackages.wrapPython ];
} ./setup-hook.sh
