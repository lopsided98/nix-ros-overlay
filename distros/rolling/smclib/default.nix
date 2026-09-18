
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-python, ament-lint-auto, ament-lint-common }:
buildRosPackage {
  pname = "ros-rolling-smclib";
  version = "4.4.1-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/bond_core-release/archive/release/rolling/smclib/4.4.1-1.tar.gz";
    name = "4.4.1-1.tar.gz";
    sha256 = "d69a9f3e16020673f38e6b32ff50aa7280612b2bb79fe58d12ca487093e18cbf";
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
