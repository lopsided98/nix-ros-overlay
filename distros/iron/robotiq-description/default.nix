
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-auto, ament-lint-common, joint-state-publisher-gui, launch, launch-ros, robot-state-publisher, rviz2, urdf, xacro }:
buildRosPackage {
  pname = "ros-iron-robotiq-description";
  version = "0.0.1-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ros2_robotiq_gripper-release/archive/release/iron/robotiq_description/0.0.1-1.tar.gz";
    name = "0.0.1-1.tar.gz";
    sha256 = "94c5b06d1a5d69a88aceb37c200cc16af93631789bdbb645b4b64e8253d27c39";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  checkInputs = [ ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ joint-state-publisher-gui launch launch-ros robot-state-publisher rviz2 urdf xacro ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''URDF and xacro description package for the Robotiq gripper.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
