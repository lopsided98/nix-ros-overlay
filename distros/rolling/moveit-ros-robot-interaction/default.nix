
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-gtest, interactive-markers, moveit-common, moveit-core, moveit-ros-planning, rclcpp, tf2, tf2-eigen, tf2-geometry-msgs, tf2-ros }:
buildRosPackage {
  pname = "ros-rolling-moveit-ros-robot-interaction";
  version = "2.10.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/moveit2-release/archive/release/rolling/moveit_ros_robot_interaction/2.10.0-1.tar.gz";
    name = "2.10.0-1.tar.gz";
    sha256 = "0949c0ebc1511eebc8fff8f72e0b5d5df83205c537540283b54fd14261b5a637";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  checkInputs = [ ament-cmake-gtest ];
  propagatedBuildInputs = [ interactive-markers moveit-common moveit-core moveit-ros-planning rclcpp tf2 tf2-eigen tf2-geometry-msgs tf2-ros ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "Components of MoveIt that offer interaction via interactive markers";
    license = with lib.licenses; [ bsd3 ];
  };
}
