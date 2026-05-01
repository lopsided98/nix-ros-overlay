
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-lint-cmake, ament-cmake-xmllint, ament-lint-auto, robot-state-publisher, xacro }:
buildRosPackage {
  pname = "ros-lyrical-leo-description";
  version = "3.2.0-r3";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/leo_common-release/archive/release/lyrical/leo_description/3.2.0-3.tar.gz";
    name = "3.2.0-3.tar.gz";
    sha256 = "b50a00a40e1d31c4e0a71f37fb1f275027a1b1c9f2490d6f2c4a48534e44e67b";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  checkInputs = [ ament-cmake-lint-cmake ament-cmake-xmllint ament-lint-auto ];
  propagatedBuildInputs = [ robot-state-publisher xacro ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "URDF Description package for Leo Rover";
    license = with lib.licenses; [ mit ];
  };
}
