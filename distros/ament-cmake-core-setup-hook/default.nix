{ makeSetupHook, python3 }:

makeSetupHook {
  name = "ament-cmake-core-setup-hook";
  substitutions.python_executable = python3.pythonOnBuildForHost.interpreter;
} ./setup-hook.sh
