
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, gazebo-ros, gripper-controllers, open-manipulator-x-description, robot-state-publisher, ros2-control, ros2-controllers, rviz2, xacro }:
buildRosPackage {
  pname = "ros-humble-open-manipulator-x-bringup";
  version = "3.0.4-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/open_manipulator-release/archive/release/humble/open_manipulator_x_bringup/3.0.4-1.tar.gz";
    name = "3.0.4-1.tar.gz";
    sha256 = "2f7e9c195f4da1f2212722e2250a9e5c2dc3241f67480f10c820b36ee6a9733a";
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
