
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-lint-cmake, ament-cmake-xmllint, ament-lint-auto, joy-linux, teleop-twist-joy, teleop-twist-keyboard }:
buildRosPackage {
  pname = "ros-rolling-leo-teleop";
  version = "3.0.1-r2";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/leo_common-release/archive/release/rolling/leo_teleop/3.0.1-2.tar.gz";
    name = "3.0.1-2.tar.gz";
    sha256 = "e12120b1c427438556c5c2480bcd3237bced4a681c290126290fcade2a646ee6";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  checkInputs = [ ament-cmake-lint-cmake ament-cmake-xmllint ament-lint-auto ];
  propagatedBuildInputs = [ joy-linux teleop-twist-joy teleop-twist-keyboard ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''Scripts and launch files for Leo Rover teleoperation'';
    license = with lib.licenses; [ mit ];
  };
}
