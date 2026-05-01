
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-lint-cmake, ament-cmake-xmllint, ament-lint-auto, joy-linux, teleop-twist-joy, teleop-twist-keyboard }:
buildRosPackage {
  pname = "ros-lyrical-leo-teleop";
  version = "3.2.0-r3";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/leo_common-release/archive/release/lyrical/leo_teleop/3.2.0-3.tar.gz";
    name = "3.2.0-3.tar.gz";
    sha256 = "a511e350f3dc6861ef83ddb66fd45bf89986501d70598df4f0b9c1a489498f8d";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  checkInputs = [ ament-cmake-lint-cmake ament-cmake-xmllint ament-lint-auto ];
  propagatedBuildInputs = [ joy-linux teleop-twist-joy teleop-twist-keyboard ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "Scripts and launch files for Leo Rover teleoperation";
    license = with lib.licenses; [ mit ];
  };
}
