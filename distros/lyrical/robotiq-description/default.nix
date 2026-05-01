
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-auto, ament-lint-common, joint-state-publisher-gui, launch, launch-ros, robot-state-publisher, rviz2, urdf, xacro }:
buildRosPackage {
  pname = "ros-lyrical-robotiq-description";
  version = "0.0.1-r4";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ros2_robotiq_gripper-release/archive/release/lyrical/robotiq_description/0.0.1-4.tar.gz";
    name = "0.0.1-4.tar.gz";
    sha256 = "da9c3df0d561560b0ad9fd6154110aed24aa8b9e37370a3fca72a01179774abe";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  checkInputs = [ ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ joint-state-publisher-gui launch launch-ros robot-state-publisher rviz2 urdf xacro ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "URDF and xacro description package for the Robotiq gripper.";
    license = with lib.licenses; [ bsdOriginal ];
  };
}
