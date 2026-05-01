
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-python, ament-lint-auto, ament-lint-common }:
buildRosPackage {
  pname = "ros-lyrical-smclib";
  version = "4.4.0-r3";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/bond_core-release/archive/release/lyrical/smclib/4.4.0-3.tar.gz";
    name = "4.4.0-3.tar.gz";
    sha256 = "57ac0e52469e48edf4f40556f6d8cca47dfe78f40b7d063a775d74b4b86b71ba";
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
