
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-python, ament-lint-auto, ament-lint-common }:
buildRosPackage {
  pname = "ros-kilted-smclib";
  version = "4.1.2-r2";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/bond_core-release/archive/release/kilted/smclib/4.1.2-2.tar.gz";
    name = "4.1.2-2.tar.gz";
    sha256 = "71750dec182e9861d17e048625d387074b6d54b30ddeb3e74c3cab7dbcf7264a";
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
