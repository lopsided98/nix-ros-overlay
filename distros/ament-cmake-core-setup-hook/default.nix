{ makeSetupHook, python }:

makeSetupHook {
  name = "ament-cmake-core-setup-hook";
  substitutions.python_executable = python.pythonForBuild.interpreter;
} ./setup-hook.sh
