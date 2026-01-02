
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-lint-cmake, ament-cmake-xmllint, ament-lint-auto, joy-linux, teleop-twist-joy, teleop-twist-keyboard }:
buildRosPackage {
  pname = "ros-rolling-leo-teleop";
  version = "3.2.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/leo_common-release/archive/release/rolling/leo_teleop/3.2.0-1.tar.gz";
    name = "3.2.0-1.tar.gz";
    sha256 = "39c628c512cba61e6e1e224f0737244e719a5ff05e07fe2e3ccd36b7cd2b3143";
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
