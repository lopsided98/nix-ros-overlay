
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, gazebo-ros, gripper-controllers, open-manipulator-x-description, robot-state-publisher, ros2-control, ros2-controllers, rviz2, xacro }:
buildRosPackage {
  pname = "ros-humble-open-manipulator-x-bringup";
  version = "3.0.2-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/open_manipulator-release/archive/release/humble/open_manipulator_x_bringup/3.0.2-1.tar.gz";
    name = "3.0.2-1.tar.gz";
    sha256 = "23b0ac05d5c3cfd7595cd834c08098976585410b9283b5ff9c7f7596ff3ca637";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  propagatedBuildInputs = [ gazebo-ros gripper-controllers open-manipulator-x-description robot-state-publisher ros2-control ros2-controllers rviz2 xacro ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "OpenMANIPULATOR-X bringup ROS 2 package.";
    license = with lib.licenses; [ asl20 ];
  };
}
