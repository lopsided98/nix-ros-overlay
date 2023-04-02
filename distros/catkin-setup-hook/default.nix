{ makeSetupHook, pythonPackages }:

makeSetupHook {
  name = "catkin-setup-hook";
  propagatedBuildInputs = [ pythonPackages.wrapPython ];
} ./setup-hook.sh
