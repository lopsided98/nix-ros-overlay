
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-lint-cmake, ament-cmake-xmllint, ament-lint-auto, joy-linux, teleop-twist-joy, teleop-twist-keyboard }:
buildRosPackage {
  pname = "ros-humble-leo-teleop";
  version = "1.3.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/leo_common-release/archive/release/humble/leo_teleop/1.3.0-1.tar.gz";
    name = "1.3.0-1.tar.gz";
    sha256 = "2ce43911fffcb22e7cad8c7778afa1ff70f79aa3c8a49328deef98358c0c0ae5";
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
