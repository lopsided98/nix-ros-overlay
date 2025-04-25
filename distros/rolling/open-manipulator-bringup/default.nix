
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, gripper-controllers, gz-ros2-control, open-manipulator-description, robot-state-publisher, ros-gz-bridge, ros-gz-image, ros-gz-sim, ros2-control, ros2-controllers, rviz2, xacro }:
buildRosPackage {
  pname = "ros-rolling-open-manipulator-bringup";
  version = "3.2.1-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/open_manipulator-release/archive/release/rolling/open_manipulator_bringup/3.2.1-1.tar.gz";
    name = "3.2.1-1.tar.gz";
    sha256 = "3c9c922f916b247448fd0c4c6c85e4e0ded79691ca20c01a01b51025c9786a3c";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  propagatedBuildInputs = [ gripper-controllers gz-ros2-control open-manipulator-description robot-state-publisher ros-gz-bridge ros-gz-image ros-gz-sim ros2-control ros2-controllers rviz2 xacro ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "OpenMANIPULATOR bringup ROS 2 package.";
    license = with lib.licenses; [ asl20 ];
  };
}
