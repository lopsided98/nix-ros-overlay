
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-python, ament-lint-auto, ament-lint-common }:
buildRosPackage {
  pname = "ros-jazzy-smclib";
  version = "4.1.2-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/bond_core-release/archive/release/jazzy/smclib/4.1.2-1.tar.gz";
    name = "4.1.2-1.tar.gz";
    sha256 = "be4eb3d52d3fc8313f7d56bffb9d9143a6601a3dceb21a4f02f882086c9a6dd3";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ament-cmake-python ];
  checkInputs = [ ament-lint-auto ament-lint-common ];
  nativeBuildInputs = [ ament-cmake ament-cmake-python ];

  meta = {
    description = "The State Machine Compiler (SMC) from http://smc.sourceforge.net/
    converts a language-independent description of a state machine
    into the source code to support that state machine.

    This package contains the libraries that a compiled state machine
    depends on, but it does not contain the compiler itself.";
    license = with lib.licenses; [ mpl11 ];
  };
}
