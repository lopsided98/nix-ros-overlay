{ makeSetupHook, python }:

makeSetupHook {
  name = "ament-cmake-core-setup-hook";
  substitutions.python_executable = python.pythonOnBuildForHost.interpreter;
} ./setup-hook.sh
