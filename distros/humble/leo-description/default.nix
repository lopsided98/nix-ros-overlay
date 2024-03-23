
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-lint-cmake, ament-cmake-xmllint, ament-lint-auto, robot-state-publisher, xacro }:
buildRosPackage {
  pname = "ros-humble-leo-description";
  version = "1.2.1-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/leo_common-release/archive/release/humble/leo_description/1.2.1-1.tar.gz";
    name = "1.2.1-1.tar.gz";
    sha256 = "8e07665ebaaf07bf3f648ce8c0f022b6d266f6e93a230d8d92fe389260e6b3b0";
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
